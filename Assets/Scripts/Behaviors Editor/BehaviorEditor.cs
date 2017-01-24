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

	[Header ("Common Settings")]

	[Header ("Settings")]
	public Vector3 _position;
	public Vector3 _rotation;
	public Vector3 _scale;
	public Color _color;
	public float _speed;
	public PhysicMaterial physicMat;
}
