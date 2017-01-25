using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class HackingCanvas : MonoBehaviour 
{
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

	private GameObject player;

	public GameObject test;

	private Inventory playerInventory;

	void Awake ()
	{
		player = GameObject.FindGameObjectWithTag ("Player");
		playerInventory = player.GetComponent<Inventory> ();
	}

	void OnEnable ()
	{
		firstSelected.Select ();
		ShowInvoke (0);

		//GetPlateformBehaviors (test);

		GetInventoryElements ();
	}

	public void ShowInvoke (int whichInvoke)
	{
		for (int i = 0; i < invokesScroll.Length; i++)
			invokesScroll [i].SetActive (false);

		invokesScroll [whichInvoke].SetActive (true);
	}

	void GetPlateformBehaviors (GameObject plateform)
	{
		OnStart onStart = plateform.GetComponent<OnStart> ();
		OnPlayerCollision onPlayerCollision = plateform.GetComponent<OnPlayerCollision> ();

		bool beginLoopPlaced = false;
		bool endLoopPlaced = false;

		//Clear Scrolls
		onStartScroll.ClearElements ();
		onPlayerCollisionScroll.ClearElements ();

		if(onStart.BehaviorLoops.Count > 0)
		{
			if(onStart.BehaviorLoops [0].LoopsCount == 1)
			{
				
			}

			else if(onStart.BehaviorLoops [0].LoopsCount < 0 || onStart.BehaviorLoops [0].LoopsCount > 1)
			{
				
			}
		}
	}

	void AddBoost (Boost boost, ScrollManager scroll)
	{
		GameObject clone = AddBehavior (boostPrefab, scroll);

		//clone.
	}

	public void GetInventoryElements ()
	{
		inventoryScroll.ClearElements ();

		AddBehavior (loopBeginPrefab, inventoryScroll);
		AddBehavior (loopEndPrefab, inventoryScroll);

		for (int i = 0; i < playerInventory.elements.Count; i++)
		{
			
		}
	}

	GameObject AddBehavior (GameObject prefab, ScrollManager scroll)
	{
		GameObject clone = Instantiate (prefab, Vector3.zero, Quaternion.identity, scroll.transform.GetChild (0).GetChild (0).GetComponent<RectTransform> ());

		clone.GetComponent<RectTransform> ().anchoredPosition3D = new Vector3 (0, 0, 0);
		clone.GetComponent<RectTransform> ().localRotation = Quaternion.Euler (Vector3.zero);
		clone.GetComponent<RectTransform> ().localScale = Vector3.one;

		scroll.AddElement (clone.GetComponent<RectTransform> ());

		return clone;
	}
}
