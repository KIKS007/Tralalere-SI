using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
using System.Reflection;
using System;

public class BehaviorsPlayer : MonoBehaviour 
{
	public static List<BehaviorsPlayer> allPlatforms = new List<BehaviorsPlayer> ();
	public static List<OnStart> allStartPlatforms = new List<OnStart> ();

	[Header ("Behaviors Loops")]
	public List<BehaviorsLoops> BehaviorLoops = new List<BehaviorsLoops> ();

	[Header ("Current Behavior")]
	public Behavior currentPlayingBehavior;

	[Header ("Debug")]
	public bool debugMode = false;

	private Vector3 initialPosition;
	private Quaternion initialLocalRotation;
	private Quaternion initialRotation;
	private Vector3 initialScale;
	private Color initialColor;

	private Rigidbody _rigidbody;

	protected virtual void Awake ()
	{
		if (!allPlatforms.Contains (this))
			allPlatforms.Add (this);

		if (!allStartPlatforms.Contains (GetComponent<OnStart> ()))
			allStartPlatforms.Add (GetComponent<OnStart> ());
		
		_rigidbody = GetComponent<Rigidbody> ();

		initialPosition = transform.parent.position;
		initialLocalRotation = transform.localRotation;
		initialRotation = transform.parent.localRotation;
		initialScale = transform.localScale;
		initialColor = transform.GetChild (0).GetComponent<Renderer> ().material.color;
	}

	protected virtual void FixedUpdate ()
	{
		_rigidbody.velocity = Vector3.zero;
		_rigidbody.angularVelocity = Vector3.zero;
	}

	public virtual void ResetBehaviors ()
	{
		KillBehaviors ();

		if(initialPosition == Vector3.zero)
		{
			initialPosition = transform.parent.position;
			initialLocalRotation = transform.localRotation;
			initialRotation = transform.parent.localRotation;

			initialScale = transform.localScale;
			initialColor = transform.GetChild (0).GetComponent<Renderer> ().material.color;
		}

		transform.parent.position = initialPosition;
		transform.parent.rotation = initialRotation;
		transform.localRotation = initialLocalRotation;
		transform.localScale = initialScale;
		transform.GetChild (0).GetComponent<Renderer> ().material.color = initialColor;

		transform.localPosition = Vector3.zero;
		transform.localRotation = Quaternion.Euler (Vector3.zero);


		//Debug.Log (initialPosition);

		GetComponent<Rigidbody> ().velocity = Vector3.zero;

		gameObject.layer = LayerMask.NameToLayer ("Default");

		if (GetComponent<Collider> () != null)
			GetComponent<Collider> ().material = null;
		
		else if (transform.GetChild (0).GetComponent<Collider> () != null)
			transform.GetChild (0).GetComponent<Collider> ().material = null;
	}

	public void RemoveBehaviors ()
	{
		BehaviorLoops.Clear ();
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
						currentPlayingBehavior = behaviorLoop.Behaviors [j];

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

		currentPlayingBehavior = null;
	}

	void OnTriggerEnter (Collider other)
	{
		if(other.gameObject.tag != "Player")
		{
			//Debug.Log (other);

			//Debug.Log ("Kill");
			KillBehaviors ();
		}
	}

	public void KillBehaviors ()
	{
		StopAllCoroutines ();

		//DOTween.KillAll ();
		DOTween.Kill ("Behavior" + gameObject.GetInstanceID ());
	}

	public void OnDestroy ()
	{
		if (allPlatforms.Contains (this))
			allPlatforms.Remove (this);

		if (allStartPlatforms.Contains (GetComponent<OnStart> ()))
			allStartPlatforms.Remove (GetComponent<OnStart> ());
	}

	public void PauseResume ()
	{
		//Debug.Log ("Pause/Resume : " + transform.parent.name);
		DOTween.TogglePause ("Behavior" + gameObject.GetInstanceID ());
	} 

	public void CleanBehaviorsLoop ()
	{
		int size = 0;

		for(int i = 0; i < BehaviorLoops.Count; i++)
		{
			if (BehaviorLoops [i].Behaviors.Count != 0)
				size++;
		}

		while (BehaviorLoops.Count > size)
		{
			BehaviorLoops.RemoveAt (BehaviorLoops.Count - 1);			
		}
	}
}
