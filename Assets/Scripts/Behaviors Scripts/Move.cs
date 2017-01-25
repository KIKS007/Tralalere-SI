using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
using System;

public class Move : Behavior 
{
	[HideInInspector]
	public string _name = "Move";
	public override string Name
	{
		get { return _name; }
		set { _name = value; }
	}

	[Header ("Settings")]
	public Rigidbody _rigidbody;
	public Transform _transform;
	public Vector3 _position;
	public float _duration;

	[Header ("Wait"), SerializeField]
	public bool _wait = true;
	public override bool Wait
	{
		get { return _wait; }
		set { _wait = value; }
	}

	public override IEnumerator Play ()
	{
		if (_transform == null)
			Debug.LogWarning ("No Rigidbody !");

		bool enablePhysicsEnd = _rigidbody.useGravity;

		_rigidbody.useGravity = false;

		Tween tween = _transform.parent.DOMove (_position, _duration).SetRelative ();

		tween.SetId ("Behavior" + _transform.gameObject.GetInstanceID ());
		tween.OnComplete (()=> 
			{
				if(enablePhysicsEnd)
					_rigidbody.useGravity = true;
			});

		yield return tween.WaitForCompletion ();
	}
}
