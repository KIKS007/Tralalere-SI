using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GetBehaviors : MonoBehaviour 
{

	private HackingCanvas _hackingCanvas;

	private ScrollManager onStartScroll;
	private ScrollManager onPlayerCollisionScroll;

	void Awake () 
	{
		_hackingCanvas = GetComponent<HackingCanvas> ();

		onStartScroll = _hackingCanvas.onStartScroll;
		onPlayerCollisionScroll = _hackingCanvas.onPlayerCollisionScroll;
	}

	public void GetPlatformBehaviors (GameObject plateform)
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
		GameObject clone = _hackingCanvas.AddBehavior (_hackingCanvas.boostPrefab, scroll);
		
	}
}
