using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bounce : Behavior 
{
	[HideInInspector]
	public string _name = "Bounce";
	public override string Name
	{
		get { return _name; }
		set { _name = value; }
	}

	[Header ("Settings")]
	public GameObject _gameObject;
	public bool _enable = true;
	public PhysicMaterial physicMat;

	[Header ("Wait"), SerializeField]
	public bool _wait = true;
	public override bool Wait
	{
		get { return _wait; }
		set { _wait = value; }
	}


	public override IEnumerator Play ()
	{
		physicMat = Resources.Load ("Bounce") as PhysicMaterial;

		Collider col = null;

		if (_gameObject.GetComponent<Collider> () == null)
		{
			if (_gameObject.transform.GetChild (0).GetComponent<Collider> () == null)
				Debug.LogWarning ("No Collider !");
			else
				col = _gameObject.transform.GetChild (0).GetComponent<Collider> ();
		}
		else
			col = _gameObject.GetComponent<Collider> ();

		if(_enable)
			col.material = physicMat;
		else
			col.material = null;

		yield return null;
	}
}
