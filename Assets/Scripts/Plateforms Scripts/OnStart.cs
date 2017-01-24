using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OnStart : BehaviorsPlayer 
{
	void OnEnable ()
	{
		if (debugMode)
			Debug.Log ("OnEnable : " + name);

		if(BehaviorLoops.Count > 0)
		{
			ResetBehaviors ();	
			
			StartBehavior ();
		}
	}

	public void StartBehavior ()
	{
		ResetBehaviors ();	

		if (debugMode)
			Debug.Log ("Start : " + name);

		Debug.Log (BehaviorLoops.Count);
		StartCoroutine (PlayBehaviors (BehaviorLoops));		
	}
}