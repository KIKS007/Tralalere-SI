﻿using System.Collections;
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
	public Vector3 _position;
	public float _speed;

	[Header ("Wait"), SerializeField]
	public bool _wait = true;
	public override bool Wait
	{
		get { return _wait; }
		set { _wait = value; }
	}

	public override IEnumerator Play ()
	{
		if (_rigidbody == null)
			Debug.LogWarning ("No Rigidbody !");
		
		Tween tween = _rigidbody.DOMove (_position, _speed).SetSpeedBased ().SetRelative ();
		tween.SetId ("Behavior" + _rigidbody.gameObject.GetInstanceID ());

		yield return tween.WaitForCompletion ();
	}
}
