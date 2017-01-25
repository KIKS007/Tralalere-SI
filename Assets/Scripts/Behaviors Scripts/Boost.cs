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

	[Header ("Type"), SerializeField]
	public BehaviorType _behaviorType = BehaviorType.Boost;
	public override BehaviorType BehaviorType
	{
		get { return _behaviorType; }
		set { _behaviorType = value; }
	}

	[Header ("Settings")]
	public GameObject _gameObject;
	public float _boostSpeed = 15f;
	public bool _enable = true;

	[Header ("Wait"), SerializeField]
	public bool _wait = true;
	public override bool Wait
	{
		get { return _wait; }
		set { _wait = value; }
	}

	public override IEnumerator Play ()
	{

		if (GameObject.FindGameObjectWithTag ("Player") != null)
		{
			if(_enable)
			{
				GameObject.FindGameObjectWithTag ("Player").GetComponent<CCC> ().BoostRunSpeed = _boostSpeed;
				_gameObject.layer = LayerMask.NameToLayer ("Boost");
				
			}

			else
			{
				_gameObject.layer = LayerMask.NameToLayer ("Ground");
			}
		}

		else
			Debug.LogWarning ("No Player !!!");

		yield return null;
	}
}
