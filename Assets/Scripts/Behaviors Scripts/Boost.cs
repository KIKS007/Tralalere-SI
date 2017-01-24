using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Boost : Behavior 
{
	[HideInInspector]
	public string _name = "Boost";
	public override string Name
	{
		get { return _name; }
		set { _name = value; }
	}

	[Header ("Settings")]
	public GameObject _gameObject;
	public float _boostSpeed = 15f;

	[Header ("Wait"), SerializeField]
	public bool _wait = true;
	public override bool Wait
	{
		get { return _wait; }
		set { _wait = value; }
	}

	public override IEnumerator Play ()
	{
		_gameObject.layer = LayerMask.NameToLayer ("Boost");

		if (GameObject.FindGameObjectWithTag ("Player") != null)
			GameObject.FindGameObjectWithTag ("Player").GetComponent<CCC> ().BoostRunSpeed = _boostSpeed;

		else
			Debug.LogWarning ("No Player !!!");

		yield return null;
	}
}
