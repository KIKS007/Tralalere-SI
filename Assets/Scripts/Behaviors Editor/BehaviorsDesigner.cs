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

	private Behavior[] behavoirsPrefabs = new Behavior[5];

	void Awake ()
	{
		GetBehaviors ();
		CleanAllLoops ();
		SetupBehaviors ();
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
					
					behaviorLoopsTarget [i].Behaviors.Add (behavoirsPrefabs [0]);
					var moveBehavior = (Move)behaviorLoopsTarget [i].Behaviors [behaviorLoopsTarget [i].Behaviors.Count - 1];

					moveBehavior._wait = behaviorsLoopsEditor [i].Behaviors [j].Wait;

					moveBehavior._position = behaviorsLoopsEditor [i].Behaviors [j]._position;
					moveBehavior._speed = behaviorsLoopsEditor [i].Behaviors [j]._speed;

					break;
				case BehaviorType.Scale:
					
					behaviorLoopsTarget [i].Behaviors.Add (behavoirsPrefabs [1]);
					var scaleBehavior = (Scale)behaviorLoopsTarget [i].Behaviors [behaviorLoopsTarget [i].Behaviors.Count - 1];

					scaleBehavior._wait = behaviorsLoopsEditor [i].Behaviors [j].Wait;

					scaleBehavior._scale = behaviorsLoopsEditor [i].Behaviors [j]._scale;
					scaleBehavior._speed = behaviorsLoopsEditor [i].Behaviors [j]._speed;

					break;
				case BehaviorType.Rotate:
					
					behaviorLoopsTarget [i].Behaviors.Add (behavoirsPrefabs [2]);
					var rotateBehavior = (Rotate)behaviorLoopsTarget [i].Behaviors [behaviorLoopsTarget [i].Behaviors.Count - 1];

					rotateBehavior._wait = behaviorsLoopsEditor [i].Behaviors [j].Wait;

					rotateBehavior._rotation = behaviorsLoopsEditor [i].Behaviors [j]._rotation;
					rotateBehavior._speed = behaviorsLoopsEditor [i].Behaviors [j]._speed;
					break;
				case BehaviorType.Colorize:
					
					behaviorLoopsTarget [i].Behaviors.Add (behavoirsPrefabs [3]);
					var colorizeBehavior = (Colorize)behaviorLoopsTarget [i].Behaviors [behaviorLoopsTarget [i].Behaviors.Count - 1];

					colorizeBehavior._wait = behaviorsLoopsEditor [i].Behaviors [j].Wait;

					colorizeBehavior._color = behaviorsLoopsEditor [i].Behaviors [j]._color;
					colorizeBehavior._speed = behaviorsLoopsEditor [i].Behaviors [j]._speed;
					break;
				case BehaviorType.Bounce:
					
					behaviorLoopsTarget [i].Behaviors.Add (behavoirsPrefabs [4]);
					var bounceBehavior = (Bounce)behaviorLoopsTarget [i].Behaviors [behaviorLoopsTarget [i].Behaviors.Count - 1];

					bounceBehavior._wait = behaviorsLoopsEditor [i].Behaviors [j].Wait;

					bounceBehavior.physicMat = behaviorsLoopsEditor [i].Behaviors [j].physicMat;
					break;
				}
			}
		}

		return behaviorLoopsTarget;
	}

	void GetBehaviors ()
	{
		behavoirsPrefabs [0] = Resources.Load ("Move") as Behavior;
		behavoirsPrefabs [1] = Resources.Load ("Scale") as Behavior;
		behavoirsPrefabs [2] = Resources.Load ("Rotate") as Behavior;
		behavoirsPrefabs [3] = Resources.Load ("Colorize") as Behavior;
		behavoirsPrefabs [4] = Resources.Load ("Bounce") as Behavior;
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
