using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
using System;

public class Scale : Behavior 
{
	[HideInInspector]
	public string _name = "Scale";
	public override string Name
	{
		get { return _name; }
		set { _name = value; }
	}

	[Header ("Settings")]
	public Transform _transform;
	public Vector3 _scale;
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
			Debug.LogWarning ("No Transform !");
		
		Tween tween = _transform.DOScale (_scale, _duration).SetRelative ();
		tween.SetId ("Behavior" + _transform.gameObject.GetInstanceID ());

		yield return tween.WaitForCompletion ();
	}
}
