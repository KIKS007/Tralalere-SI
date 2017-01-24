using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OnStart : BehaviorsPlayer 
{
	protected override void OnEnable ()
	{
		base.OnEnable ();

		if (debugMode)
			Debug.Log ("OnStart : " + name);

		StartCoroutine (PlayBehaviors (BehaviorLoops));
	}
}