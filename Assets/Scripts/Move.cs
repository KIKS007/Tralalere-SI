using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class Move : Behavior 
{
	public string Name = "Move";

	public Transform _transform;
	public Vector3 _position;
	public float _speed;
	public bool _loop = false;

	public override void Play ()
	{
		if(_loop)
			_transform.DOMove (_position, _speed).SetSpeedBased ();

		else
			_transform.DOMove (_position, _speed).SetSpeedBased ().SetLoops (-1, LoopType.Yoyo);
	}
}
