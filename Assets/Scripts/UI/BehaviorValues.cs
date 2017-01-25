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

	[HideInInspector]
	public InputField _durationInput;

	[HideInInspector]
	public InputField _xInput;
	[HideInInspector]
	public InputField _yInput;
	[HideInInspector]
	public InputField _zInput;

	[HideInInspector]
	public InputField _boostSpeedInput;

	[HideInInspector]
	public Toggle _enableInput;

	[HideInInspector]
	public Image _colorInput;

	[HideInInspector]
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

		UpdateValues ();
	}

	public void UpdateValues ()
	{
		switch(uiBehaviorType)
		{
		case BehaviorType.Boost:
			int runSpeed = 7;

			if(GameObject.FindGameObjectWithTag ("Player") != null)
				runSpeed = (int)GameObject.FindGameObjectWithTag ("Player").GetComponent<CCC> ().RunSpeed;

			_boostSpeed = GetInt (_boostSpeedInput.text);
			_enable = _enableInput.isOn;

			if(_boostSpeed < runSpeed)
			{
				_boostSpeed = runSpeed;
				_boostSpeedInput.text = _boostSpeed.ToString ();
			}
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

			if(_loopsCount == 0)
			{
				_loopsCount = 1;
				_loopsCountInput.text = _loopsCount.ToString ();
			}
			else if(_loopsCount < 0)
			{
				_loopsCount = -1;
				_loopsCountInput.text = _loopsCount.ToString ();
			}

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
		if (text == "" || text == "-")
			return 0;
		else
			return int.Parse (text);
	}

	float GetFloat (string text)
	{
		if (text == "" || text == "." || text == "-")
			return 0;
		else
			return float.Parse (text);
	}
}
