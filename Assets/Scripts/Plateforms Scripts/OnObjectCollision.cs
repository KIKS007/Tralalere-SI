using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OnObjectCollision : BehaviorsPlayer
{
	[Header ("Target Tag")]
	public string Tag;

	void OnCollisionEnter (Collision collision)
	{
		if(collision.gameObject.tag == Tag)
		{
			if (debugMode)
				Debug.Log ("OnObjectCollision : " + name + " against : " + collision.gameObject.name);
			
			StartCoroutine (PlayBehaviors (BehaviorLoops));
		}
	}
}
