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
	public Transform _transform;
	public Vector3 _position;
	public float _speed;

	[Header ("Wait"), SerializeField]
	public bool _wait = false;
	public override bool Wait
	{
		get { return _wait; }
		set { _wait = value; }
	}

	public override IEnumerator Play ()
	{
		if (_transform == null)
			Debug.LogWarning ("No Transform !");
		
		Tween tween = _transform.DOMove (_position, _speed).SetSpeedBased ().SetRelative ();

		yield return tween.WaitForCompletion ();
	}
}
