using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class BehaviorsLoopsEditor
{
	public int LoopsCount = 0;

	[SerializeField]
	public List<BehaviorEditor> Behaviors = new List<BehaviorEditor> ();
}
