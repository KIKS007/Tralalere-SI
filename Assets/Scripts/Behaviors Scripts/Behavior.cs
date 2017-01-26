using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
using System;

public abstract class Behavior : ScriptableObject
{ 
	public abstract string Name { get; set;}
	public abstract BehaviorType BehaviorType { get; set;}
	public abstract bool Wait { get; set;}

	public abstract IEnumerator Play ();
}
