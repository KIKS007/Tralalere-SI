using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class HackingCanvas : MonoBehaviour 
{
	[Header ("Current Platform")]
	public GameObject currentPlatform;

	[Header ("First Selected")]
	public Button firstSelected;

	[Header ("Buttons")]
	public GameObject[] invokesScroll = new GameObject[3];

	[Header ("Scroll")]
	public ScrollManager inventoryScroll;

	public ScrollManager onStartScroll;
	public ScrollManager onPlayerCollisionScroll;

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
	public GameObject test;
	
	private GetBehaviors _getBehaviors;
	private SetBehaviors _setBehaviors;

	void Awake ()
	{
		_getBehaviors = GetComponent<GetBehaviors> ();
		_setBehaviors = GetComponent<SetBehaviors> ();

		inventoryScroll.OnChildCountChange += InventoryDoubledBehavoirs;
		inventoryScroll.OnBehaviorsChange += InventoryRequiredBehaviors;
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

	public void ShowInvoke (int whichInvoke)
	{
		for (int i = 0; i < invokesScroll.Length; i++)
			invokesScroll [i].SetActive (false);

		invokesScroll [whichInvoke].SetActive (true);
	}

	public void GetPlatformBehaviors (GameObject plateform)
	{
		_getBehaviors.GetPlatformBehaviors (plateform);
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
}
