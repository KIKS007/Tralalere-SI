using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OnStart : BehaviorsPlayer 
{
	protected override void Start ()
	{
		base.Start ();

		if (debugMode)
			Debug.Log ("OnStart : " + name);

		StartCoroutine (PlayBehaviors (BehaviorLoops));
	}
}