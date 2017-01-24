using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class BehaviorEditor
{
	[Header ("Type")]
	public BehaviorType Type = BehaviorType.Move;

	[Header ("Wait")]
	public bool Wait = true;

	[Header ("Settings")]
	public float _duration;
	public Vector3 _position;
	public Vector3 _rotation;
	public Vector3 _scale;
	public Color _color;
	public float _boostSpeed;
	public PhysicMaterial physicMat;
}
