using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class Colorize : Behavior 
{
	[HideInInspector]
	public string _name = "Colorize";
	public override string Name
	{
		get { return _name; }
		set { _name = value; }
	}

	[Header ("Settings")]
	public GameObject _gameObject;
	public Color _color;
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
		if (_gameObject == null)
			Debug.LogWarning ("No Gameobject !");

		Tween tween = null;

		if (_gameObject.GetComponent<Renderer> () != null)
			tween = _gameObject.GetComponent<Renderer>().material.DOColor (_color, _duration);

		else if (_gameObject.transform.GetChild (0).GetComponent<Renderer> () != null)
			tween = _gameObject.transform.GetChild (0).GetComponent<Renderer>().material.DOColor (_color, _duration);

		else if (_gameObject.GetComponent<Light> () != null)
			tween = _gameObject.GetComponent<Light>().DOColor (_color, _duration);
	
		else if (_gameObject.transform.GetChild (0).GetComponent<Light> () != null)
			tween = _gameObject.transform.GetChild (0).GetComponent<Light>().DOColor (_color, _duration);

		if(tween != null)
		{
			tween.SetId ("Behavior" + _gameObject.GetInstanceID ());
			yield return tween.WaitForCompletion ();
		}
		else
			Debug.LogWarning ("No Good Component Found !");
	}
}
