using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using DG.Tweening;

public class HackingCanvas : MonoBehaviour 
{
	[Header ("Current Platform")]
	public GameObject currentPlatform;

	[Header ("First Selected")]
	public Button firstSelected;

	[Header ("Buttons")]
	public GameObject[] scrollsButtons = new GameObject[0];

	[Header ("Scroll")]
	public GameObject[] invokesScroll = new GameObject[3];
	public ScrollManager inventoryScroll;

	public ScrollManager onStartScroll;
	public ScrollManager onPlayerCollisionScroll;

	[Header ("Pause")]
	public GameObject pauseGroup;

	[Header ("UI Prefabs")]
	public GameObject boostPrefab;
	public GameObject bouncePrefab;
	public GameObject colorizePrefab;
	public GameObject delayPrefab;
	public GameObject loopBeginPrefab;
	public GameObject loopEndPrefab;
	public GameObject movePrefab;
	public GameObject rotatePrefab;
	public GameObject scalePrefab;
	public GameObject waitPrefab;

	[Header ("Test")]
	public bool testGO = false;
	public bool pause = false;
	public GameObject test;

	[Header ("UI Camera")]
	public bool toggleCanvas = false;
	public Camera UICamera;
	public float canvasTweenDuration = 0.2f;
	public Ease canvasTweenEase;

	private GetBehaviors _getBehaviors;
	private SetBehaviors _setBehaviors;

	private bool canvasVisible = false;
	private float canvasInitialX;
	private float canvasInitialY;

	void Awake ()
	{
		_getBehaviors = GetComponent<GetBehaviors> ();
		_setBehaviors = GetComponent<SetBehaviors> ();

		inventoryScroll.OnChildCountChange += InventoryDoubledBehavoirs;
		inventoryScroll.OnBehaviorsChange += InventoryRequiredBehaviors;

		canvasInitialX = transform.localPosition.x;
		canvasInitialY = transform.localPosition.y;

		UICamera.gameObject.SetActive (true);

		HideCanvas ();
	}

	void OnEnable ()
	{
		firstSelected.Select ();
		ShowInvoke (0);

		InventoryRequiredBehaviors ();

		if(currentPlatform == null)
		{
			onStartScroll.ClearElements ();
			onPlayerCollisionScroll.ClearElements ();
		}
	}

	void Start ()
	{
		if(testGO)
			GetPlatformBehaviors (test);		

	}

	void Update ()
	{
		if(toggleCanvas)
		{
			toggleCanvas = false;

			ToggleCanvasVisibility (test);
		}

		if(pause)
		{
			pause = false;

			ToggleCanvasPause ();
		}
	}

	public void ShowInvoke (int whichInvoke)
	{
		for (int i = 0; i < invokesScroll.Length; i++)
			invokesScroll [i].SetActive (false);

		invokesScroll [whichInvoke].SetActive (true);
	}

	void GetPlatformBehaviors (GameObject plateform)
	{
		_getBehaviors.GetPlatformBehaviors (plateform);
	}

	void SetPlatformsBehaviors (GameObject platform)
	{
		currentPlatform = platform;

		_setBehaviors.SetPlatformBehaviors ();
	}

	void InventoryDoubledBehavoirs ()
	{
		inventoryScroll.RemoveDoubleElementType (BehaviorType.Wait);
		inventoryScroll.RemoveDoubleElementType (BehaviorType.Delay);
	}

	void InventoryRequiredBehaviors ()
	{
		bool delay = false;
		bool wait = false;

		for(int i = 0; i < inventoryScroll.elements.Count; i++)
		{
			if (inventoryScroll.elements [i].GetComponent<DragAndDrop> ().uiBehaviorType == BehaviorType.Delay)
				delay = true;

			else if (inventoryScroll.elements [i].GetComponent<DragAndDrop> ().uiBehaviorType == BehaviorType.Wait)
				wait = true;
		}

		if (!wait)
			AddBehavior (waitPrefab, inventoryScroll);

		if (!delay)
			AddBehavior (delayPrefab, inventoryScroll);
	}

	public GameObject AddBehavior (GameObject prefab, ScrollManager scroll)
	{
		GameObject clone = Instantiate (prefab, Vector3.zero, Quaternion.identity, scroll.transform.GetChild (0).GetChild (0).GetComponent<RectTransform> ());

		clone.GetComponent<RectTransform> ().anchoredPosition3D = new Vector3 (0, 0, 0);
		clone.GetComponent<RectTransform> ().localRotation = Quaternion.Euler (Vector3.zero);
		clone.GetComponent<RectTransform> ().localScale = Vector3.one;

		scroll.AddElement (clone.GetComponent<RectTransform> ());

		return clone;
	}


	public void ToggleCanvasVisibility (GameObject plateform)
	{
		if (!DOTween.IsTweening ("CanvasVisibility"))
			DOTween.Kill ("CanvasVisibility");

		Rect canvasRect = UICamera.rect;

		currentPlatform = null;

		if (plateform != null && plateform.tag == "Platform" && plateform.GetComponent<BehaviorsDesigner> () != null)
			currentPlatform = plateform;

		//Hide Pause
		pauseGroup.SetActive (false);

		ToggleScrollVisibility ();

		//Hide
		if(canvasVisible)
		{
			//Get Behaviors
			if(currentPlatform != null)
				_setBehaviors.SetPlatformBehaviors ();

			DOTween.To (() => canvasRect.height, x => canvasRect.height = x, 0.01f, canvasTweenDuration).SetEase (canvasTweenEase).OnUpdate (() => UICamera.rect = canvasRect).OnComplete (() => canvasVisible = false).SetId ("CanvasVisibility");	
			transform.DOLocalMoveX (20, canvasTweenDuration).SetEase (canvasTweenEase);
			transform.DOLocalMoveY (-20, 0.1f).SetEase (canvasTweenEase).SetDelay (canvasTweenDuration);

			currentPlatform = null;
		}

		//Show
		else
		{			
			onStartScroll.ClearElements ();
			onPlayerCollisionScroll.ClearElements ();

			transform.DOLocalMoveY (canvasInitialY, 0.1f).SetEase (canvasTweenEase);
			DOTween.To (()=> canvasRect.height, x => canvasRect.height = x, 1, canvasTweenDuration).SetEase (canvasTweenEase).OnUpdate (()=> UICamera.rect = canvasRect).OnComplete (()=> canvasVisible = true).SetId ("CanvasVisibility");
			transform.DOLocalMoveX (canvasInitialX, canvasTweenDuration).SetEase (canvasTweenEase);

			if(currentPlatform != null)
			{
				DOVirtual.DelayedCall (canvasTweenDuration, ()=> {
					
					if (currentPlatform != null)
						GetPlatformBehaviors (currentPlatform);
					else
						Debug.LogWarning ("No Platform to get behaviors from!");
					
				});				
			}
		}
	}

	public void ToggleCanvasPause ()
	{
		if (!DOTween.IsTweening ("CanvasVisibility"))
			DOTween.Kill ("CanvasVisibility");

		Rect canvasRect = UICamera.rect;

		currentPlatform = null;

		//Hide Buttons
		onStartScroll.gameObject.SetActive (false);
		onPlayerCollisionScroll.gameObject.SetActive (false);

		//Show Pause
		pauseGroup.SetActive (true);

		for (int i = 0; i < scrollsButtons.Length; i++)
			scrollsButtons [i].SetActive (false);

		//Hide
		if(canvasVisible)
		{
			DOTween.To (() => canvasRect.height, x => canvasRect.height = x, 0.01f, canvasTweenDuration).SetEase (canvasTweenEase).OnUpdate (() => UICamera.rect = canvasRect).OnComplete (() => canvasVisible = false).SetId ("CanvasVisibility");	
			transform.DOLocalMoveX (20, canvasTweenDuration).SetEase (canvasTweenEase);
			transform.DOLocalMoveY (-20, 0.1f).SetEase (canvasTweenEase).SetDelay (canvasTweenDuration);

		}

		//Show
		else
		{			
			transform.DOLocalMoveY (canvasInitialY, 0.1f).SetEase (canvasTweenEase);
			DOTween.To (()=> canvasRect.height, x => canvasRect.height = x, 1, canvasTweenDuration).SetEase (canvasTweenEase).OnUpdate (()=> UICamera.rect = canvasRect).OnComplete (()=> canvasVisible = true).SetId ("CanvasVisibility");
			transform.DOLocalMoveX (canvasInitialX, canvasTweenDuration).SetEase (canvasTweenEase);
		}
	}

	void ToggleScrollVisibility ()
	{
		//Hide
		if(currentPlatform == null)
		{
			onStartScroll.gameObject.SetActive (false);
			onPlayerCollisionScroll.gameObject.SetActive (false);

			for (int i = 0; i < scrollsButtons.Length; i++)
				scrollsButtons [i].SetActive (false);
		}
		//Show
		else
		{
			onStartScroll.gameObject.SetActive (true);
			firstSelected.Select ();

			for (int i = 0; i < scrollsButtons.Length; i++)
				scrollsButtons [i].SetActive (true);
		}
	}

	void HideCanvas ()
	{
		Rect canvasRect = UICamera.rect;	

		canvasRect.height = 0.01f;
		UICamera.rect = canvasRect;
		transform.localPosition = new Vector3 (20, -20, transform.localPosition.z);
	}

	public void QuitGame ()
	{
		Application.Quit ();
	}
}
