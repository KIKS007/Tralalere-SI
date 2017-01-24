using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OnTrigger : BehaviorsPlayer 
{
	public void Trigger ()
	{
		if (debugMode)
			Debug.Log ("OnTrigger : " + name);

		StartCoroutine (PlayBehaviors (BehaviorLoops));
	}
}
