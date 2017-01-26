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

	[Header ("Arm Animator")]
	public Animator armAnim;

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

	[HideInInspector]
	public bool canvasVisible = false;
	private float canvasInitialX;
	private float canvasInitialY;

	void Awake ()
	{
		_getBehaviors = GetComponent<GetBehaviors> ();
		_setBehaviors = GetComponent<SetBehaviors> ();

		inventoryScroll.OnChildCountChange += InventoryDoubledBehavoirs;
		inventoryScroll.OnBehaviorsChange += InventoryRequiredBehaviors;

		/*onStartScroll.OnBehaviorsChange += () => {
			if(currentPlatform != null) 
				SetPlatformsBehaviors (currentPlatform);
		};

		onPlayerCollisionScroll.OnBehaviorsChange += ()=> {
			if(currentPlatform != null) 
				SetPlatformsBehaviors (currentPlatform);
		};*/


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

		armAnim.SetBool ("isHacking", DragAndDrop.oneItemIsDragged);

		if (DragAndDrop.oneItemIsDragged)
			armAnim.SetBool ("hasModified", true);
	}

	public void ShowInvoke (int whichInvoke)
	{
		if(currentPlatform != null)
			SetPlatformsBehaviors (currentPlatform);

		for (int i = 0; i < invokesScroll.Length; i++)
			invokesScroll [i].SetActive (false);

		invokesScroll [whichInvoke].SetActive (true);

		if(currentPlatform != null)
			GetPlatformBehaviors (currentPlatform);

		if(currentPlatform != null)
			SetPlatformsBehaviors (currentPlatform);

		DOVirtual.DelayedCall (1, ()=> {
			for (int i = 0; i < onPlayerCollisionScroll.elements.Count; i++)
				Debug.Log (onPlayerCollisionScroll.elements [i]);
		});

		for (int i = 0; i < onPlayerCollisionScroll.elements.Count; i++)
			Debug.Log (onPlayerCollisionScroll.elements [i].anchoredPosition);
	}

	public void GetPlatformBehaviors (GameObject plateform)
	{
		_getBehaviors.GetPlatformBehaviors (plateform);

/*		for (int i = 0; i < onStartScroll.elements.Count; i++)
			if (onStartScroll.elements [i] == null)
				onStartScroll.elements.RemoveAt (i);

		for (int i = 0; i < onPlayerCollisionScroll.elements.Count; i++)
			if (onPlayerCollisionScroll.elements [i] == null)
				onStartScroll.elements.RemoveAt (i);*/
	}

	public void SetPlatformsBehaviors (GameObject platform)
	{
		currentPlatform = platform;

		_setBehaviors.SetPlatformBehaviors ();
	}

	void InventoryDoubledBehavoirs ()
	{
		inventoryScroll.RemoveDoubleElementType (BehaviorType.Wait);
		inventoryScroll.RemoveDoubleElementType (BehaviorType.Delay);

		inventoryScroll.RemoveDoubleElementType (BehaviorType.Boost);
		inventoryScroll.RemoveDoubleElementType (BehaviorType.Bounce);
		inventoryScroll.RemoveDoubleElementType (BehaviorType.Colorize);
		inventoryScroll.RemoveDoubleElementType (BehaviorType.Move);
		inventoryScroll.RemoveDoubleElementType (BehaviorType.Rotate);
		inventoryScroll.RemoveDoubleElementType (BehaviorType.Scale);
	}

	void InventoryRequiredBehaviors ()
	{
		bool delay = false;
		bool wait = false;

		bool bounce = false;
		bool boost = false;
		bool colorize = false;
		bool move = false;
		bool rotate = false;
		bool scale = false;

		for(int i = 0; i < inventoryScroll.elements.Count; i++)
		{
			if (inventoryScroll.elements [i].GetComponent<DragAndDrop> ().uiBehaviorType == BehaviorType.Delay)
				delay = true;

			else if (inventoryScroll.elements [i].GetComponent<DragAndDrop> ().uiBehaviorType == BehaviorType.Wait)
				wait = true;

			else if (inventoryScroll.elements [i].GetComponent<DragAndDrop> ().uiBehaviorType == BehaviorType.Boost)
				boost = true;

			else if (inventoryScroll.elements [i].GetComponent<DragAndDrop> ().uiBehaviorType == BehaviorType.Bounce)
				bounce = true;

			else if (inventoryScroll.elements [i].GetComponent<DragAndDrop> ().uiBehaviorType == BehaviorType.Colorize)
				colorize = true;

			else if (inventoryScroll.elements [i].GetComponent<DragAndDrop> ().uiBehaviorType == BehaviorType.Move)
				move = true;

			else if (inventoryScroll.elements [i].GetComponent<DragAndDrop> ().uiBehaviorType == BehaviorType.Rotate)
				rotate = true;

			else if (inventoryScroll.elements [i].GetComponent<DragAndDrop> ().uiBehaviorType == BehaviorType.Scale)
				scale = true;
		}

		if (!wait)
			AddBehavior (waitPrefab, inventoryScroll, true);

		if (!delay)
			AddBehavior (delayPrefab, inventoryScroll, true);

		if (!boost)
			AddBehavior (boostPrefab, inventoryScroll, true);

		if (!bounce)
			AddBehavior (bouncePrefab, inventoryScroll, true);

		if (!colorize)
			AddBehavior (colorizePrefab, inventoryScroll, true);

		if (!move)
			AddBehavior (movePrefab, inventoryScroll, true);

		if (!rotate)
			AddBehavior (rotatePrefab, inventoryScroll, true);

		if (!scale)
			AddBehavior (scalePrefab, inventoryScroll, true);

	}

	public GameObject AddBehavior (GameObject prefab, ScrollManager scroll, bool insertAtZero = false)
	{
		GameObject clone = Instantiate (prefab, Vector3.zero, Quaternion.identity, scroll.transform.GetChild (0).GetChild (0).GetComponent<RectTransform> ());

		clone.GetComponent<RectTransform> ().anchoredPosition3D = new Vector3 (0, 0, 0);
		clone.GetComponent<RectTransform> ().localRotation = Quaternion.Euler (Vector3.zero);
		clone.GetComponent<RectTransform> ().localScale = Vector3.one;

		scroll.AddElement (clone.GetComponent<RectTransform> (), insertAtZero);

		return clone;
	}


	public void ToggleCanvasVisibility (GameObject plateform = null)
	{
		if (!DOTween.IsTweening ("CanvasVisibility"))
			DOTween.Kill ("CanvasVisibility");

		Rect canvasRect = UICamera.rect;

		//Debug.Log (plateform);

		if (plateform != null && plateform.tag == "Platform" && plateform.GetComponent<BehaviorsDesigner> () != null)
			currentPlatform = plateform;

		//Hide Pause
		pauseGroup.SetActive (false);

		ToggleScrollVisibility ();

		//Hide
		if(canvasVisible)
		{
			armAnim.SetBool ("EditMode", false);

			//Debug.Log (plateform);

			//Get Behaviors
			if(currentPlatform != null)
			{
				//Debug.Log ("Bite");
				//currentPlatform.GetComponent<BehaviorsPlayer> ().RemoveBehaviors ();
				//currentPlatform.GetComponent<BehaviorsPlayer> ().ResetBehaviors ();

				_setBehaviors.SetPlatformBehaviors ();

				StartCoroutine (StartBehavior (currentPlatform));
			}

			DOTween.To (() => canvasRect.height, x => canvasRect.height = x, 0.01f, canvasTweenDuration).SetEase (canvasTweenEase).OnUpdate (() => UICamera.rect = canvasRect).SetId ("CanvasVisibility").OnComplete (()=> {

				PauseResumePlatforms ();
				canvasVisible = false;
			});

			transform.DOLocalMoveX (20, canvasTweenDuration).SetEase (canvasTweenEase);
			transform.DOLocalMoveY (-20, 0.1f).SetEase (canvasTweenEase).SetDelay (canvasTweenDuration);

			currentPlatform = null;
		}

		//Show
		else
		{			
			PauseResumePlatforms ();

			armAnim.SetBool ("EditMode", true);

			onStartScroll.ClearElements ();
			onPlayerCollisionScroll.ClearElements ();

			transform.DOLocalMoveY (canvasInitialY, 0.1f).SetEase (canvasTweenEase);
			DOTween.To (()=> canvasRect.height, x => canvasRect.height = x, 1, canvasTweenDuration).SetEase (canvasTweenEase).OnUpdate (()=> UICamera.rect = canvasRect).SetId ("CanvasVisibility").OnComplete (()=> {				
				canvasVisible = true;
			});

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
			armAnim.SetBool ("EditMode", false);

			DOTween.To (() => canvasRect.height, x => canvasRect.height = x, 0.01f, canvasTweenDuration).SetEase (canvasTweenEase).OnUpdate (() => UICamera.rect = canvasRect).OnComplete (() => canvasVisible = false).SetId ("CanvasVisibility");	
			transform.DOLocalMoveX (20, canvasTweenDuration).SetEase (canvasTweenEase);
			transform.DOLocalMoveY (-20, 0.1f).SetEase (canvasTweenEase).SetDelay (canvasTweenDuration);

		}

		//Show
		else
		{			
			armAnim.SetBool ("EditMode", true);

			transform.DOLocalMoveY (canvasInitialY, 0.1f).SetEase (canvasTweenEase);
			DOTween.To (()=> canvasRect.height, x => canvasRect.height = x, 1, canvasTweenDuration).SetEase (canvasTweenEase).OnUpdate (()=> UICamera.rect = canvasRect).OnComplete (()=> canvasVisible = true).SetId ("CanvasVisibility");
			transform.DOLocalMoveX (canvasInitialX, canvasTweenDuration).SetEase (canvasTweenEase);
		}
	}


	void PauseResumePlatforms ()
	{
		foreach (OnStart baheviorPlayer in BehaviorsPlayer.allStartPlatforms)
			baheviorPlayer.PauseResume ();
	}

	IEnumerator StartBehavior (GameObject platform)
	{
		yield return new WaitForSeconds (canvasTweenDuration);

		platform.GetComponent<OnStart> ().StartBehavior ();
	}


	public void Duplicate (int whichScroll)
	{
		if (whichScroll == 0)
		{
			onPlayerCollisionScroll.ClearElements ();

			for (int i = 0; i < onStartScroll.elements.Count ; i++)
				AddBehavior (onStartScroll.elements [i].gameObject, onPlayerCollisionScroll);				

			SetPlatformsBehaviors (currentPlatform);

			onStartScroll.DuplicateElements (1);

		}
		else
		{
			onStartScroll.ClearElements ();

			for (int i = 0; i < onPlayerCollisionScroll.elements.Count ; i++)
				AddBehavior (onPlayerCollisionScroll.elements [i].gameObject, onStartScroll);	
			
			SetPlatformsBehaviors (currentPlatform);

			onPlayerCollisionScroll.DuplicateElements (-1);
		}
	}

	public void Clean (int whichScroll)
	{
		if (whichScroll == 0)
			onStartScroll.ClearElements (true);
		else
			onPlayerCollisionScroll.ClearElements (true);

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
			onPlayerCollisionScroll.gameObject.SetActive (false);
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

	public void Reload ()
	{
		foreach (OnStart baheviorPlayer in BehaviorsPlayer.allStartPlatforms)
			baheviorPlayer.ResetBehaviors ();
	}
}
