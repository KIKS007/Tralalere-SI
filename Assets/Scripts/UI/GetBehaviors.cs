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

		GetLoopsSettings (onStart, onStartScroll);
		GetLoopsSettings (onPlayerCollision, onPlayerCollisionScroll);
	}

	void GetLoopsSettings (BehaviorsPlayer behaviorPlayer, ScrollManager scroll)
	{
		scroll.ClearElements ();

		if(behaviorPlayer.BehaviorLoops.Count > 0)
		{
			//Simple First
			if(behaviorPlayer.BehaviorLoops [0].LoopsCount == 1)
			{
				AddAllLoopBehaviors (scroll, behaviorPlayer, 0);

				//Loop Second
				if(behaviorPlayer.BehaviorLoops.Count > 1)
				{
					AddLoopBegin (behaviorPlayer.BehaviorLoops [1], scroll);

					AddAllLoopBehaviors (scroll, behaviorPlayer, 1);

					AddLoopEnd (scroll);

					//Simple Third
					if(behaviorPlayer.BehaviorLoops.Count > 2)
						AddAllLoopBehaviors (scroll, behaviorPlayer, 2);
				}
				else
				{
					AddLoopBegin (scroll);
					AddLoopEnd (scroll);
				}
			}

			else
			{
				AddLoopBegin (behaviorPlayer.BehaviorLoops [0], scroll);

				AddAllLoopBehaviors (scroll, behaviorPlayer, 0);

				AddLoopEnd (scroll);

				if(behaviorPlayer.BehaviorLoops.Count > 1 && behaviorPlayer.BehaviorLoops [0].LoopsCount > 1)
					AddAllLoopBehaviors (scroll, behaviorPlayer, 1);
			}
		}
		else
		{
			AddLoopBegin (scroll);
			AddLoopEnd (scroll);
		}
	}

	void AddAllLoopBehaviors (ScrollManager scroll, BehaviorsPlayer behaviorPlayer, int loop)
	{
		for(int i = 0; i < behaviorPlayer.BehaviorLoops [loop].Behaviors.Count; i++)
		{
			if (i > 0 && behaviorPlayer.BehaviorLoops [loop].Behaviors [i].Wait)
				AddWait (scroll);

			switch (behaviorPlayer.BehaviorLoops [loop].Behaviors [i].BehaviorType)
			{
			case BehaviorType.Boost:
				AddBoost (behaviorPlayer.BehaviorLoops [loop].Behaviors [i], scroll);
				break;
			case BehaviorType.Bounce:
				AddBounce (behaviorPlayer.BehaviorLoops [loop].Behaviors [i], scroll);
				break;
			case BehaviorType.Colorize:
				AddColorize (behaviorPlayer.BehaviorLoops [loop].Behaviors [i], scroll);
				break;
			case BehaviorType.Delay:
				AddDelay (behaviorPlayer.BehaviorLoops [loop].Behaviors [i], scroll);
				break;
			case BehaviorType.Move:
				AddMove (behaviorPlayer.BehaviorLoops [loop].Behaviors [i], scroll);
				break;
			case BehaviorType.Rotate:
				AddRotate (behaviorPlayer.BehaviorLoops [loop].Behaviors [i], scroll);
				break;
			case BehaviorType.Scale:
				AddScale (behaviorPlayer.BehaviorLoops [loop].Behaviors [i], scroll);
				break;
			}			
		}
	}

	public void AddLoopBegin (BehaviorsLoops behaviorLoop, ScrollManager scroll)
	{
		GameObject clone = _hackingCanvas.AddBehavior (_hackingCanvas.loopBeginPrefab, scroll);

		BehaviorValues behaviorValues = clone.GetComponent<BehaviorValues> ();

		behaviorValues.GetInputs ();

		behaviorValues._loopsCountInput.text = behaviorLoop.LoopsCount.ToString ();
	}

	public void AddLoopBegin (ScrollManager scroll)
	{
		_hackingCanvas.AddBehavior (_hackingCanvas.loopBeginPrefab, scroll);
	}

	public void AddLoopEnd (ScrollManager scroll)
	{
		_hackingCanvas.AddBehavior (_hackingCanvas.loopEndPrefab, scroll);
	}

	public void AddWait (ScrollManager scroll)
	{
		_hackingCanvas.AddBehavior (_hackingCanvas.waitPrefab, scroll);
	}

	void AddBoost (Behavior behavior, ScrollManager scroll)
	{
		GameObject clone = _hackingCanvas.AddBehavior (_hackingCanvas.boostPrefab, scroll);

		BehaviorValues behaviorValues = clone.GetComponent<BehaviorValues> ();
		Boost behaviorScript = behavior as Boost;

		behaviorValues.GetInputs ();

		behaviorValues._boostSpeedInput.text = behaviorScript._boostSpeed.ToString ();
		behaviorValues._enableInput.isOn = behaviorScript._enable;
	}

	void AddBounce (Behavior behavior, ScrollManager scroll)
	{
		GameObject clone = _hackingCanvas.AddBehavior (_hackingCanvas.bouncePrefab, scroll);

		BehaviorValues behaviorValues = clone.GetComponent<BehaviorValues> ();
		Bounce behaviorScript = behavior as Bounce;

		behaviorValues.GetInputs ();

		behaviorValues._enableInput.isOn = behaviorScript._enable;
	}

	void AddColorize (Behavior behavior, ScrollManager scroll)
	{
		GameObject clone = _hackingCanvas.AddBehavior (_hackingCanvas.colorizePrefab, scroll);

		BehaviorValues behaviorValues = clone.GetComponent<BehaviorValues> ();
		Colorize behaviorScript = behavior as Colorize;

		behaviorValues.GetInputs ();

		behaviorValues._durationInput.text = behaviorScript._duration.ToString ();
		behaviorValues._colorInput.color = behaviorScript._color;
	}

	void AddDelay (Behavior behavior, ScrollManager scroll)
	{
		GameObject clone = _hackingCanvas.AddBehavior (_hackingCanvas.delayPrefab, scroll);

		BehaviorValues behaviorValues = clone.GetComponent<BehaviorValues> ();
		Delay behaviorScript = behavior as Delay;

		behaviorValues.GetInputs ();

		behaviorValues._durationInput.text = behaviorScript._duration.ToString ();
	}

	void AddMove (Behavior behavior, ScrollManager scroll)
	{
		GameObject clone = _hackingCanvas.AddBehavior (_hackingCanvas.movePrefab, scroll);

		BehaviorValues behaviorValues = clone.GetComponent<BehaviorValues> ();
		Move behaviorScript = behavior as Move;

		behaviorValues.GetInputs ();

		behaviorValues._durationInput.text = behaviorScript._duration.ToString ();

		behaviorValues._xInput.text = behaviorScript._position.x.ToString ();
		behaviorValues._yInput.text = behaviorScript._position.y.ToString ();
		behaviorValues._zInput.text = behaviorScript._position.z.ToString ();
	}

	void AddRotate (Behavior behavior, ScrollManager scroll)
	{
		GameObject clone = _hackingCanvas.AddBehavior (_hackingCanvas.rotatePrefab, scroll);

		BehaviorValues behaviorValues = clone.GetComponent<BehaviorValues> ();
		RotateReporter behaviorScript = behavior as RotateReporter;

		behaviorValues.GetInputs ();

		behaviorValues._durationInput.text = behaviorScript._duration.ToString ();

		behaviorValues._xInput.text = behaviorScript._rotation.x.ToString ();
		behaviorValues._yInput.text = behaviorScript._rotation.y.ToString ();
		behaviorValues._zInput.text = behaviorScript._rotation.z.ToString ();
	}

	void AddScale (Behavior behavior, ScrollManager scroll)
	{
		GameObject clone = _hackingCanvas.AddBehavior (_hackingCanvas.scalePrefab, scroll);

		BehaviorValues behaviorValues = clone.GetComponent<BehaviorValues> ();
		Scale behaviorScript = behavior as Scale;

		behaviorValues.GetInputs ();

		behaviorValues._durationInput.text = behaviorScript._duration.ToString ();

		behaviorValues._xInput.text = behaviorScript._scale.x.ToString ();
		behaviorValues._yInput.text = behaviorScript._scale.y.ToString ();
		behaviorValues._zInput.text = behaviorScript._scale.z.ToString ();
	}

}
