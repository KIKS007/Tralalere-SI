using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TriggerScript : MonoBehaviour 
{
	void OnTriggerEnter (Collider other)
	{
		if(other.gameObject.tag == "Player")
		{
			if(transform.parent.GetChild (0).GetComponent<OnTrigger> () != null)
				transform.parent.GetChild (0).GetComponent<OnTrigger> ().Trigger ();
		}
	}
}
