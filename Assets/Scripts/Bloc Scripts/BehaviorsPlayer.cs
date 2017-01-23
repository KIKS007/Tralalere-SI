using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
using System.Reflection;

public class BehaviorsPlayer : MonoBehaviour 
{
	[Header ("Behaviors Loops")]
	public List<BehaviorsLoops> BehaviorLoops = new List<BehaviorsLoops> ();

	[Header ("Debug")]
	public bool debugMode = false;


	protected virtual void Start ()
	{
		SetupBehaviors (BehaviorLoops);
	}

	protected void SetupBehaviors (List<BehaviorsLoops> behaviorsLoops)
	{
		foreach (BehaviorsLoops behaviorLoop in behaviorsLoops)
		{
			for(int i = 0; i < behaviorLoop.Behaviors.Count; i++)
			{
				behaviorLoop.Behaviors[i].GetType().GetField("_transform", BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Instance).SetValue(behaviorLoop.Behaviors[i], transform);
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
}
