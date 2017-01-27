using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SetBehaviors : MonoBehaviour 
{
	private HackingCanvas _hackingCanvas;

	private ScrollManager onStartScroll;
	private ScrollManager onPlayerCollisionScroll;

	private OnStart platformOnStart;
	private OnPlayerCollision platformOnPlayerCollision;

	void Awake () 
	{
		_hackingCanvas = GetComponent<HackingCanvas> ();

		onStartScroll = _hackingCanvas.onStartScroll;
		onPlayerCollisionScroll = _hackingCanvas.onPlayerCollisionScroll;
	}

	public void SetPlatformBehaviors ()
	{
		GameObject platform = _hackingCanvas.currentPlatform;

		platformOnStart = platform.GetComponent<OnStart> ();
		platformOnPlayerCollision = platform.GetComponent<OnPlayerCollision> ();

		platformOnStart.BehaviorLoops.Clear ();
		platformOnPlayerCollision.BehaviorLoops.Clear ();

		if (onStartScroll.elements.Count > 0)
			GetScrollBehaviors (onStartScroll, platformOnStart);

		if (onPlayerCollisionScroll.elements.Count > 0)
			GetScrollBehaviors (onPlayerCollisionScroll, platformOnPlayerCollision);

		platformOnStart.CleanBehaviorsLoop ();
		platformOnPlayerCollision.CleanBehaviorsLoop ();
	}

	void GetScrollBehaviors (ScrollManager scroll, BehaviorsPlayer behaviorPlayer)
	{
		int whichLoop = 0;
		int behaviorsCount = 0;

		behaviorsCount = 0;
		behaviorPlayer.BehaviorLoops.Add (new BehaviorsLoops());
		
		if(scroll.elements [0].GetComponent<DragAndDrop> ().uiBehaviorType == BehaviorType.LoopBegin)
			behaviorPlayer.BehaviorLoops [0].LoopsCount = scroll.elements [0].GetComponent<BehaviorValues> ()._loopsCount;
		else
			behaviorPlayer.BehaviorLoops [0].LoopsCount = 1;

		for(int i = 0; i < scroll.elements.Count; i++)
		{
			DragAndDrop dragAndDrop = scroll.elements [i].GetComponent<DragAndDrop> ();
			BehaviorValues behaviorsValues = scroll.elements [i].GetComponent<BehaviorValues> ();

			//Debug.Log ("whichLoop : " + whichLoop);

			//Debug.Log ("uiBehaviorType : " + dragAndDrop.uiBehaviorType);

			//Debug.Log ("behaviorsCount : " + behaviorsCount);


			switch (dragAndDrop.uiBehaviorType)
			{
			case BehaviorType.Boost:

				behaviorPlayer.BehaviorLoops [whichLoop].Behaviors.Add (ScriptableObject.CreateInstance ("Boost") as Behavior);
				var boostBehavior = (Boost)behaviorPlayer.BehaviorLoops [whichLoop].Behaviors [behaviorsCount];

				boostBehavior._boostSpeed = behaviorsValues._boostSpeed;
				boostBehavior._enable = behaviorsValues._enable;

				boostBehavior._wait = CheckWait (scroll, i);

				behaviorsCount++;
				break;
			case BehaviorType.Bounce:

				behaviorPlayer.BehaviorLoops [whichLoop].Behaviors.Add (ScriptableObject.CreateInstance ("Bounce") as Behavior);
				var bounceBehavior = (Bounce)behaviorPlayer.BehaviorLoops [whichLoop].Behaviors [behaviorsCount];

				bounceBehavior._enable = behaviorsValues._enable;
			
				bounceBehavior._wait = CheckWait (scroll, i);

				behaviorsCount++;
				break;
			case BehaviorType.Colorize:

				behaviorPlayer.BehaviorLoops [whichLoop].Behaviors.Add (ScriptableObject.CreateInstance ("Colorize") as Behavior);
				var colorizeBehavior = (Colorize)behaviorPlayer.BehaviorLoops [whichLoop].Behaviors [behaviorsCount];

				colorizeBehavior._color = behaviorsValues._color;
				colorizeBehavior._duration = behaviorsValues._duration;

				colorizeBehavior._wait = CheckWait (scroll, i);

				behaviorsCount++;
				break;
			case BehaviorType.Delay:

				behaviorPlayer.BehaviorLoops [whichLoop].Behaviors.Add (ScriptableObject.CreateInstance ("Delay") as Behavior);
				var delayBehavior = (Delay)behaviorPlayer.BehaviorLoops [whichLoop].Behaviors [behaviorsCount];

				delayBehavior._duration = behaviorsValues._duration;
			
				delayBehavior._wait = CheckWait (scroll, i);

				behaviorsCount++;
				break;
			case BehaviorType.Move:

				behaviorPlayer.BehaviorLoops [whichLoop].Behaviors.Add (ScriptableObject.CreateInstance ("Move") as Behavior);
				var moveBehavior = (Move)behaviorPlayer.BehaviorLoops [whichLoop].Behaviors [behaviorsCount];

				moveBehavior._position = behaviorsValues._position;
				moveBehavior._duration = behaviorsValues._duration;
				moveBehavior._wait = CheckWait (scroll, i);

				behaviorsCount++;
				break;
			case BehaviorType.Rotate:

				behaviorPlayer.BehaviorLoops [whichLoop].Behaviors.Add (ScriptableObject.CreateInstance ("Rotate") as Behavior);
				var rotateBehavior = (RotateReporter)behaviorPlayer.BehaviorLoops [whichLoop].Behaviors [behaviorsCount];

				rotateBehavior._rotation = behaviorsValues._rotation;
				rotateBehavior._duration = behaviorsValues._duration;
				rotateBehavior._wait = CheckWait (scroll, i);

				behaviorsCount++;
				break;
			case BehaviorType.Scale:

				behaviorPlayer.BehaviorLoops [whichLoop].Behaviors.Add (ScriptableObject.CreateInstance ("Scale") as Behavior);
				var scaleBehavior = (Scale)behaviorPlayer.BehaviorLoops [whichLoop].Behaviors [behaviorsCount];

				scaleBehavior._scale = behaviorsValues._scale;
				scaleBehavior._duration = behaviorsValues._duration;
				scaleBehavior._wait = CheckWait (scroll, i);

				behaviorsCount++;
				break;

			case BehaviorType.LoopBegin:
				if(i > 0)
				{
					behaviorPlayer.BehaviorLoops.Add (new BehaviorsLoops());
					whichLoop++;
					behaviorsCount = 0;

					behaviorPlayer.BehaviorLoops [whichLoop].LoopsCount = behaviorsValues._loopsCount;
				}
				break;

			case BehaviorType.LoopEnd:
				if(i != scroll.elements.Count -1)
				{
					behaviorPlayer.BehaviorLoops.Add (new BehaviorsLoops());
					whichLoop++;
					behaviorsCount = 0;

					behaviorPlayer.BehaviorLoops [whichLoop].LoopsCount = 1;
				}
				break;
			}
		}
	}

	bool CheckWait (ScrollManager scroll, int i)
	{
		if (i != 0 && scroll.elements [i - 1].GetComponent <DragAndDrop> ().uiBehaviorType == BehaviorType.Wait)
			return true;
		else
			return false;
	}
}
