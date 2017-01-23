using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OnPlayerCollision : BehaviorsPlayer 
{
	void OnCollisionEnter (Collision collision)
	{
		if(collision.gameObject.tag == "Player")
		{
			if (debugMode)
				Debug.Log ("OnPlayerCollision : " + name);
			
			StartCoroutine (PlayBehaviors (BehaviorLoops));
		}
	}
}
