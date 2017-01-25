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

	public InputField _durationInput;

	public InputField _xInput;
	public InputField _yInput;
	public InputField _zInput;

	public InputField _boostSpeedInput;

	public Toggle _enableInput;

	public Image _colorInput;

	public InputField _loopsCountInput;

	void Awake ()
	{
		uiBehaviorType = GetComponent<DragAndDrop> ().uiBehaviorType;

		switch(uiBehaviorType)
		{
		case BehaviorType.Boost:
			_boostSpeedInput = transform.GetChild (1).GetComponent<InputField> ();
			_enableInput = transform.GetChild (3).GetComponent<Toggle> ();
			break;
		case BehaviorType.Bounce:

			_enableInput = transform.GetChild (1).GetComponent<Toggle> ();
			break;
		case BehaviorType.Colorize:

			_durationInput = transform.GetChild (3).GetComponent<InputField> ();
			_colorInput = transform.GetChild (7).GetComponent<Image> ();
			break;
		case BehaviorType.Delay:

			_durationInput = transform.GetChild (1).GetComponent<InputField> ();
			break;
		case BehaviorType.LoopBegin:

			_loopsCountInput = transform.GetChild (2).GetComponent<InputField> ();
			break;
		case BehaviorType.Move:

			_durationInput = transform.GetChild (3).GetComponent<InputField> ();

			_xInput = transform.GetChild (4).GetComponent<InputField> ();
			_yInput = transform.GetChild (5).GetComponent<InputField> ();
			_zInput = transform.GetChild (6).GetComponent<InputField> ();
			break;
		case BehaviorType.Rotate:

			_durationInput = transform.GetChild (3).GetComponent<InputField> ();

			_xInput = transform.GetChild (4).GetComponent<InputField> ();
			_yInput = transform.GetChild (5).GetComponent<InputField> ();
			_zInput = transform.GetChild (6).GetComponent<InputField> ();
			break;
		case BehaviorType.Scale:

			_durationInput = transform.GetChild (3).GetComponent<InputField> ();

			_xInput = transform.GetChild (4).GetComponent<InputField> ();
			_yInput = transform.GetChild (5).GetComponent<InputField> ();
			_zInput = transform.GetChild (6).GetComponent<InputField> ();
			break;
		}
	}

	public void UpdateValues ()
	{
		switch(uiBehaviorType)
		{
		case BehaviorType.Boost:
			
			_boostSpeed = GetInt (_boostSpeedInput.text);
			_enable = _enableInput.isOn;
			break;
		case BehaviorType.Bounce:
			
			_enable = _enableInput.isOn;
			break;
		case BehaviorType.Colorize:
			
			_duration = GetFloat (_durationInput.text);
			_color = _colorInput.color;
			break;
		case BehaviorType.Delay:
			
			_duration = GetFloat (_durationInput.text);
			break;
		case BehaviorType.LoopBegin:
			
			_loopsCount = GetInt (_loopsCountInput.text);
			break;
		case BehaviorType.Move:
			
			_duration = GetFloat (_durationInput.text);

			Vector3 position = new Vector3 ();

			position.x = GetFloat (_xInput.text);
			position.y = GetFloat (_yInput.text);
			position.z = GetFloat (_zInput.text);

			_position = position;
			break;
		case BehaviorType.Rotate:
			
			_duration = GetFloat (_durationInput.text);

			Vector3 rotation = new Vector3 ();

			rotation.x = GetFloat (_xInput.text);
			rotation.y = GetFloat (_yInput.text);
			rotation.z = GetFloat (_zInput.text);

			_rotation = rotation;
			break;
		case BehaviorType.Scale:
			
			_duration = GetFloat (_durationInput.text);

			Vector3 scale = new Vector3 ();

			scale.x = GetFloat (_xInput.text);
			scale.y = GetFloat (_yInput.text);
			scale.z = GetFloat (_zInput.text);

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
