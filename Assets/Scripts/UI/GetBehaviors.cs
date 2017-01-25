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
				Debug.Log ("Loop");

				switch (onStart.BehaviorLoops [0].Behaviors [0].BehaviorType)
				{
				case BehaviorType.Boost:
					Debug.Log ("AddBoost");
					AddBoost (onStart.BehaviorLoops [0].Behaviors [0], onStartScroll);
					break;
				case BehaviorType.Bounce:
					break;
				case BehaviorType.Colorize:
					break;
				case BehaviorType.Delay:
					break;
				case BehaviorType.Move:
					break;
				case BehaviorType.Rotate:
					break;
				case BehaviorType.Scale:
					break;
				}
			}

			else if(onStart.BehaviorLoops [0].LoopsCount < 0 || onStart.BehaviorLoops [0].LoopsCount > 1)
			{

			}
		}
	}

	void AddBoost (Behavior behavior, ScrollManager scroll)
	{
		GameObject clone = _hackingCanvas.AddBehavior (_hackingCanvas.boostPrefab, scroll);

		BehaviorValues behaviorValues = clone.GetComponent<BehaviorValues> ();
		Boost behaviorScript = behavior as Boost;

		behaviorValues._boostSpeedInput.text = behaviorScript._boostSpeed.ToString ();
		behaviorValues._enableInput.isOn = behaviorScript._enable;

		behavior = behaviorScript;
	}

	void AddBounce ()
	{
		
	}
}
