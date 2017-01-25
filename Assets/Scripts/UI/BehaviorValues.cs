using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BehaviorValues : MonoBehaviour 
{
	public int _loopsCount;
	public float _duration;
	public Vector3 _position;
	public Vector3 _rotation;
	public Vector3 _scale;
	public Color _color;
	public bool _enable = true;
	public float _boostSpeed; 

	private BehaviorType uiBehaviorType;

	void Awake ()
	{
		uiBehaviorType = GetComponent<DragAndDrop> ().uiBehaviorType;
	}

	public void UpdateValues ()
	{
		switch(uiBehaviorType)
		{
		case BehaviorType.Boost:
			
			_boostSpeed = GetInt (transform.GetChild (1).GetComponent<InputField> ().text);
			_enable = transform.GetChild (3).GetComponent<Toggle> ().isOn;
			break;
		case BehaviorType.Bounce:
			
			_enable = transform.GetChild (1).GetComponent<Toggle> ().isOn;
			break;
		case BehaviorType.Colorize:
			
			_duration = GetFloat (transform.GetChild (3).GetComponent<InputField> ().text);
			_color = transform.GetChild (7).GetComponent<Image> ().color;
			break;
		case BehaviorType.Delay:
			
			_duration = GetFloat (transform.GetChild (1).GetComponent<InputField> ().text);
			break;
		case BehaviorType.LoopBegin:
			
			_loopsCount = GetInt (transform.GetChild (2).GetComponent<InputField> ().text);
			break;
		case BehaviorType.Move:
			
			_duration = GetFloat (transform.GetChild (3).GetComponent<InputField> ().text);

			Vector3 position = new Vector3 ();

			position.x = GetFloat (transform.GetChild (4).GetComponent<InputField> ().text);
			position.y = GetFloat (transform.GetChild (5).GetComponent<InputField> ().text);
			position.z = GetFloat (transform.GetChild (6).GetComponent<InputField> ().text);

			_position = position;
			break;
		case BehaviorType.Rotate:
			
			_duration = GetFloat (transform.GetChild (3).GetComponent<InputField> ().text);

			Vector3 rotation = new Vector3 ();

			rotation.x = GetFloat (transform.GetChild (4).GetComponent<InputField> ().text);
			rotation.y = GetFloat (transform.GetChild (5).GetComponent<InputField> ().text);
			rotation.z = GetFloat (transform.GetChild (6).GetComponent<InputField> ().text);

			_rotation = rotation;
			break;
		case BehaviorType.Scale:
			
			_duration = GetFloat (transform.GetChild (3).GetComponent<InputField> ().text);

			Vector3 scale = new Vector3 ();

			scale.x = GetFloat (transform.GetChild (4).GetComponent<InputField> ().text);
			scale.y = GetFloat (transform.GetChild (5).GetComponent<InputField> ().text);
			scale.z = GetFloat (transform.GetChild (6).GetComponent<InputField> ().text);

			_scale = scale;
			break;
		}

	}

	int GetInt (string text)
	{
		if (text == "")
			return 0;
		else
			return int.Parse (text);
	}

	float GetFloat (string text)
	{
		if (text == "" || text == ".")
			return 0;
		else
			return float.Parse (text);
	}
}
