using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
using System.Reflection;
using System;

public class BehaviorsPlayer : MonoBehaviour 
{
	[Header ("Behaviors Loops")]
	public List<BehaviorsLoops> BehaviorLoops = new List<BehaviorsLoops> ();

	[Header ("Debug")]
	public bool debugMode = false;

	private Vector3 initialPosition;

	private Rigidbody _rigidbody;

	protected virtual void Awake ()
	{
		initialPosition = transform.position;
		_rigidbody = GetComponent<Rigidbody> ();
	}

	protected virtual void FixedUpdate ()
	{
		_rigidbody.velocity = Vector3.zero;
		_rigidbody.angularVelocity = Vector3.zero;
	}

	public virtual void ResetBehaviors ()
	{
		KillBehaviors ();
		transform.position = initialPosition;
		GetComponent<Rigidbody> ().velocity = Vector3.zero;

		gameObject.layer = LayerMask.NameToLayer ("Default");

		if (GetComponent<Collider> () != null)
			GetComponent<Collider> ().material = null;
		
		else if (transform.GetChild (0).GetComponent<Collider> () != null)
			transform.GetChild (0).GetComponent<Collider> ().material = null;
	}

	public void SetupBehaviors ()
	{
		foreach (BehaviorsLoops behaviorLoop in BehaviorLoops)
		{
			for(int i = 0; i < behaviorLoop.Behaviors.Count; i++)
			{
				if(behaviorLoop.Behaviors[i] == null)
				{
					Debug.LogWarning ("Behavior Is NULL");
					return;
				}

				if(behaviorLoop.Behaviors[i].GetType().GetField("_gameObject", BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Instance) != null)
					behaviorLoop.Behaviors[i].GetType().GetField("_gameObject", BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Instance).SetValue(behaviorLoop.Behaviors[i], gameObject);
				
				if(behaviorLoop.Behaviors[i].GetType().GetField("_transform", BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Instance) != null)
					behaviorLoop.Behaviors[i].GetType().GetField("_transform", BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Instance).SetValue(behaviorLoop.Behaviors[i], transform);

				if(behaviorLoop.Behaviors[i].GetType().GetField("_rigidbody", BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Instance) != null)
					behaviorLoop.Behaviors[i].GetType().GetField("_rigidbody", BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Instance).SetValue(behaviorLoop.Behaviors[i], GetComponent<Rigidbody> ());
			}			
		}
	}

	protected IEnumerator PlayBehaviors (List<BehaviorsLoops> behaviorsLoops)
	{
		foreach (BehaviorsLoops behaviorLoop in behaviorsLoops)
		{
			if(behaviorLoop.LoopsCount != -1)
			{
				//Loops
				for(int i = 0; i < behaviorLoop.LoopsCount; i++)
				{
					if(debugMode)
					{
						Debug.Log ("--------------");
						Debug.Log ("Loop N° " + (i + 1));						
					}

					//Each Beahvior
					for(int j = 0; j < behaviorLoop.Behaviors.Count; j++)
					{
						if(debugMode)
						{
							Debug.Log ("+++++++++++++++");
							Debug.Log ("Behavior N° " + (j + 1) + " Name : " + behaviorLoop.Behaviors [j].Name);
						}
							
						//Last Action
						if(j == behaviorLoop.Behaviors.Count - 1)
						{
							if(debugMode)
								Debug.Log ("Last Behavior Of This Loop");
							yield return StartCoroutine (behaviorLoop.Behaviors [j].Play ());
						}
						
						//Next Action Wants To Wait
						else if((j + 1) < behaviorLoop.Behaviors.Count && behaviorLoop.Behaviors [j + 1].Wait)
						{
							if(debugMode)
								Debug.Log ("Next Action Wants To Wait");
							yield return StartCoroutine (behaviorLoop.Behaviors [j].Play ());
						}
						
						//Normal Action
						else
						{
							if(debugMode)
								Debug.Log ("Normal Action");
							StartCoroutine (behaviorLoop.Behaviors [j].Play ());						
						}
					}
				}
			}
			else
			{
				while(true)
				{
					//Each Beahvior
					for(int j = 0; j < behaviorLoop.Behaviors.Count; j++)
					{
						if(debugMode)
						{
							Debug.Log ("+++++++++++++++");
							Debug.Log ("Behavior N° " + (j + 1) + " Name : " + behaviorLoop.Behaviors [j].Name);
						}

						//Last Action
						if(j == behaviorLoop.Behaviors.Count - 1)
						{
							if(debugMode)
								Debug.Log ("Last Behavior Of This Loop");
							yield return StartCoroutine (behaviorLoop.Behaviors [j].Play ());
						}

						//Next Action Wants To Wait
						else if((j + 1) < behaviorLoop.Behaviors.Count && behaviorLoop.Behaviors [j + 1].Wait)
						{
							if(debugMode)
								Debug.Log ("Next Action Wants To Wait");
							yield return StartCoroutine (behaviorLoop.Behaviors [j].Play ());
						}

						//Normal Action
						else
						{
							if(debugMode)
								Debug.Log ("Normal Action");
							StartCoroutine (behaviorLoop.Behaviors [j].Play ());						
						}
					}
				}
			}
		}
	}

	void OnTriggerEnter (Collider other)
	{
		if(other.gameObject.tag != "Player")
		{
			//Debug.Log ("Kill");
			KillBehaviors ();
		}
	}

	public void KillBehaviors ()
	{
		DOTween.Kill ("Behavior" + gameObject.GetInstanceID ());
	}
}
