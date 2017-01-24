using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BehaviorsDesigner : MonoBehaviour 
{
	[Header ("OnStart")]
	public List<BehaviorsLoopsEditor> OnStartBehaviors = new List<BehaviorsLoopsEditor> ();

	[Header ("OnPlayerCollision")]
	public List<BehaviorsLoopsEditor> OnPlayerBehaviors = new List<BehaviorsLoopsEditor> ();

	[Header ("OnObjectCollision")]
	public List<BehaviorsLoopsEditor> OnObjectBehaviors = new List<BehaviorsLoopsEditor> ();

	[Header ("OnTrigger")]
	public List<BehaviorsLoopsEditor> OnTriggerBehaviors = new List<BehaviorsLoopsEditor> ();

	void Start ()
	{
		CleanAllLoops ();
		SetupBehaviors ();

		if(GetComponent<OnStart> () != null)
		{
			GetComponent<OnStart> ().SetupBehaviors ();
			GetComponent<OnStart> ().StartBehavior ();
		}

		if(GetComponent<OnPlayerCollision> () != null)
			GetComponent<OnPlayerCollision> ().SetupBehaviors ();

		if(GetComponent<OnObjectCollision> () != null)
			GetComponent<OnObjectCollision> ().SetupBehaviors ();

		if(GetComponent<OnTrigger> () != null)
			GetComponent<OnTrigger> ().SetupBehaviors ();
	}

	public void SetupBehaviors ()
	{
		if (OnStartBehaviors.Count > 0 && GetComponent<OnStart> () == null)
			Debug.LogWarning ("No OnStart Found !");
		else
		{
			var behaviorPlayer = GetComponent<OnStart> ();

			behaviorPlayer.BehaviorLoops.Clear ();

			behaviorPlayer.BehaviorLoops = AddBehaviors (OnStartBehaviors, behaviorPlayer.BehaviorLoops);
		}

		if (OnPlayerBehaviors.Count > 0 && GetComponent<OnPlayerCollision> () == null)
			Debug.LogWarning ("No OnPlayerCollision Found !");
		else
		{
			var behaviorPlayer = GetComponent<OnPlayerCollision> ();
			behaviorPlayer.BehaviorLoops.Clear ();

			behaviorPlayer.BehaviorLoops = AddBehaviors (OnPlayerBehaviors, behaviorPlayer.BehaviorLoops);
		}

		if (OnObjectBehaviors.Count > 0 && GetComponent<OnObjectCollision> () == null)
			Debug.LogWarning ("No OnObjectCollision Found !");
		else
		{
			var behaviorPlayer = GetComponent<OnObjectCollision> ();
			behaviorPlayer.BehaviorLoops.Clear ();

			behaviorPlayer.BehaviorLoops = AddBehaviors (OnObjectBehaviors, behaviorPlayer.BehaviorLoops);
		}

		if (OnTriggerBehaviors.Count > 0 && GetComponent<OnTrigger> () == null)
			Debug.LogWarning ("No OnTrigger Found !");
		else
		{
			var behaviorPlayer = GetComponent<OnTrigger> ();
			behaviorPlayer.BehaviorLoops.Clear ();

			behaviorPlayer.BehaviorLoops = AddBehaviors (OnTriggerBehaviors, behaviorPlayer.BehaviorLoops);
		}
	}

	List<BehaviorsLoops> AddBehaviors (List<BehaviorsLoopsEditor> behaviorsLoopsEditor, List<BehaviorsLoops> behaviorLoopsTarget)
	{
		for(int i = 0; i < behaviorsLoopsEditor.Count; i++)
		{
			behaviorLoopsTarget.Add (new BehaviorsLoops ());
			behaviorLoopsTarget [i].LoopsCount = behaviorsLoopsEditor [i].LoopsCount;

			for(int j = 0; j < behaviorsLoopsEditor [i].Behaviors.Count; j++)
			{
				switch (behaviorsLoopsEditor [i].Behaviors [j].Type)
				{
				case BehaviorType.Move:

					behaviorLoopsTarget [i].Behaviors.Add (ScriptableObject.CreateInstance ("Move") as Behavior);
					var moveBehavior = (Move)behaviorLoopsTarget [i].Behaviors [behaviorLoopsTarget [i].Behaviors.Count - 1];

					moveBehavior._wait = behaviorsLoopsEditor [i].Behaviors [j].Wait;

					moveBehavior._position = behaviorsLoopsEditor [i].Behaviors [j]._position;
					moveBehavior._duration = behaviorsLoopsEditor [i].Behaviors [j]._duration;

					break;
				case BehaviorType.Scale:
					
					behaviorLoopsTarget [i].Behaviors.Add (ScriptableObject.CreateInstance ("Scale") as Behavior);
					var scaleBehavior = (Scale)behaviorLoopsTarget [i].Behaviors [behaviorLoopsTarget [i].Behaviors.Count - 1];

					scaleBehavior._wait = behaviorsLoopsEditor [i].Behaviors [j].Wait;

					scaleBehavior._scale = behaviorsLoopsEditor [i].Behaviors [j]._scale;
					scaleBehavior._duration = behaviorsLoopsEditor [i].Behaviors [j]._duration;

					break;
				case BehaviorType.Rotate:
					
					behaviorLoopsTarget [i].Behaviors.Add (ScriptableObject.CreateInstance ("Rotate") as Behavior);
					var rotateBehavior = (Rotate)behaviorLoopsTarget [i].Behaviors [behaviorLoopsTarget [i].Behaviors.Count - 1];

					rotateBehavior._wait = behaviorsLoopsEditor [i].Behaviors [j].Wait;

					rotateBehavior._rotation = behaviorsLoopsEditor [i].Behaviors [j]._rotation;
					rotateBehavior._duration = behaviorsLoopsEditor [i].Behaviors [j]._duration;
					break;
				case BehaviorType.Colorize:
					
					behaviorLoopsTarget [i].Behaviors.Add (ScriptableObject.CreateInstance ("Colorize") as Behavior);
					var colorizeBehavior = (Colorize)behaviorLoopsTarget [i].Behaviors [behaviorLoopsTarget [i].Behaviors.Count - 1];

					colorizeBehavior._wait = behaviorsLoopsEditor [i].Behaviors [j].Wait;

					colorizeBehavior._color = behaviorsLoopsEditor [i].Behaviors [j]._color;
					colorizeBehavior._duration = behaviorsLoopsEditor [i].Behaviors [j]._duration;
					break;
				case BehaviorType.Bounce:
					
					behaviorLoopsTarget [i].Behaviors.Add (ScriptableObject.CreateInstance ("Bounce") as Behavior);
					var bounceBehavior = (Bounce)behaviorLoopsTarget [i].Behaviors [behaviorLoopsTarget [i].Behaviors.Count - 1];

					bounceBehavior._wait = behaviorsLoopsEditor [i].Behaviors [j].Wait;
					bounceBehavior.physicMat = behaviorsLoopsEditor [i].Behaviors [j].physicMat;
					break;
				}
			}
		}

		return behaviorLoopsTarget;
	}

	void CleanAllLoops ()
	{
		CleanBehaviorsLoop (OnStartBehaviors);
		CleanBehaviorsLoop (OnPlayerBehaviors);
		CleanBehaviorsLoop (OnObjectBehaviors);
		CleanBehaviorsLoop (OnTriggerBehaviors);
	}

	void CleanBehaviorsLoop (List<BehaviorsLoopsEditor> behaviorsLoopsEditor)
	{
		for(int i = 0; i < behaviorsLoopsEditor.Count; i++)
		{
			if (behaviorsLoopsEditor [i].Behaviors.Count == 0)
				behaviorsLoopsEditor.Clear ();
		}
	}
}
