using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
using System.Reflection;

public class Bloc : MonoBehaviour 
{
	public List<Behavior> BehaviorsList = new List<Behavior> ();

	// Use this for initialization
	void Start () 
	{
		//gameObject.GetType().GetField("caca", BindingFlags.NonPublic | BindingFlags.Instance).SetValue(gameObject, 3);

		Move test = new Move ();
		test._transform = transform;
		test._position = new Vector3 (1, 1, 1);
		test._speed = 4;

		BehaviorsList.Add (test);


		foreach (Behavior behavior in BehaviorsList)
			PlayBehavior (behavior);			
	}

	void PlayBehavior (Behavior behavior)
	{
		behavior.Play ();
	}
}
