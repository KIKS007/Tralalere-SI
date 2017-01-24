using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OnTrigger : BehaviorsPlayer 
{
	void OnTriggerEnter (Collider other)
	{
		if(other.gameObject.tag == "Player")
		{
			if (debugMode)
				Debug.Log ("OnTrigger : " + name);

			StartCoroutine (PlayBehaviors (BehaviorLoops));
		}
	}
}
