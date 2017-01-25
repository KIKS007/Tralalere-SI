using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class Rotate : Behavior 
{
	[HideInInspector]
	public string _name = "Rotate";
	public override string Name
	{
		get { return _name; }
		set { _name = value; }
	}

	[Header ("Settings")]
	public Rigidbody _rigidbody;
	public Transform _transform;
	public Vector3 _rotation;
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
			Debug.LogWarning ("No _transform !");

		Tween tween = _transform.parent.DORotate (_rotation, _duration).SetRelative ();
		tween.SetId ("Behavior" + _transform.gameObject.GetInstanceID ());

		yield return tween.WaitForCompletion ();
	}
}
