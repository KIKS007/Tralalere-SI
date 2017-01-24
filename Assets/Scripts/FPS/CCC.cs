﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using UnityEditor;
using Rewired;

public class CCC : MonoBehaviour
{
    public float CameraSpeed = 1f;
    public float RunSpeed = 5f;
    public float JumpForce = 5f;
	public float Gravity = 19.81f;
	public float AirControl = 1f;
    public float GroundCheckRadius = 0.1f;
    [Range(0f, 90f)]
    public float BottomAngleLimit = 70f;
    [Range(0f, 90f)]
    public float TopAngleLimit = 90f;
    public LayerMask Ground;

	public float BoostRunSpeed = 10f;
	public bool BoostEnabled = false;

	Player player;
    Transform _cam, _groundCheck;
    Rigidbody _body;

    float _yRotation = 0f;
    float _xRotation = 0f;
    Vector3 _speed;
    bool _isMoving = false;
    bool _isGrounded = false;
    bool _canJump = true;
	int _jumpCounter = 0;
	Vector3 _lastCheckpoint;

    //setup the references
    void Awake()
    {
		player = ReInput.players.GetPlayer(0);
		_cam = transform.GetChild(0);
        _groundCheck = transform.GetChild(1);
        _body = GetComponent<Rigidbody>();
    }

    // Use this for initialization
    void Start()
    {
        Cursor.lockState = CursorLockMode.None;
        Cursor.lockState = CursorLockMode.Locked;
        _yRotation = _body.rotation.eulerAngles.y;
    }

    // Update is called once per frame
    void Update()
    {
        //ROTATION-------------------------------------------

        //we store the input used for rotation
		float rotx;
		float roty;

		rotx = player.GetAxis("Look Horizontal") * CameraSpeed;
		roty = -player.GetAxis("Look Vertical") * CameraSpeed;

        //we store the rotation along Y axis
        //because physics functions have to be called in FixedUpdate
        //but inputs have to be processed in Update
        _yRotation += rotx * Mathf.Rad2Deg * Time.deltaTime;

        //since we don't use the rigidbody to rotate the camera along the local X axis
        //we can directly modify the transform
        //note also that the camera has no collider attached to it that could interfere with the rigidbody
        //_cam.Rotate(Vector3.right, roty * Time.deltaTime * Mathf.Rad2Deg * XRotationSpeed, Space.Self);
        _xRotation += roty * Time.deltaTime * Mathf.Rad2Deg;
        _xRotation = Mathf.Clamp(_xRotation, -TopAngleLimit, BottomAngleLimit);
        var rot = _cam.localEulerAngles;
        rot.x = _xRotation;
        _cam.localEulerAngles = rot;

        //MOVEMENT-----------------------------------------------
		_speed = transform.forward * player.GetAxisRaw ("Move Vertical") + transform.right * player.GetAxisRaw ("Move Horizontal");
		_speed.Normalize ();

		float speedFactor = BoostEnabled ? BoostRunSpeed : RunSpeed;
		_speed *= speedFactor;

		_isGrounded = Physics.CheckSphere(_groundCheck.position, GroundCheckRadius, Ground);
		if ((_jumpCounter <= 0) && (_body.velocity.y <= 0)) {
			_canJump = Physics.CheckSphere(_groundCheck.position, GroundCheckRadius, Ground);
		}

        //JUMP--------------------------------------------------
		if (player.GetButton ("Jump") && _canJump)
        {
            //is the player grounded
            if (_isGrounded)
            {
                _body.AddForce(Vector3.up * JumpForce, ForceMode.VelocityChange);
                _canJump = false;
				_jumpCounter = 1;
            }

        }

		//TESTING STUFF-----------------------------------------
		if (Input.GetKey(KeyCode.T)) {
			GoToCheckpoint();
		}
    }

    void FixedUpdate()
    {
        //ROTATION-----------------------------

        var rot = _body.rotation.eulerAngles;
        //if the rotation of the rigibody and the desired rotation are approximately the same
        //we don't need to update the rigidbody
        //it can happend in 2 cases :
        //	-	the player doesn't move the mouse along the X axis
        //	-	the fixedUpdate has been called twice during the same Update
        //		so no new input has been process so _yRotation didn't change
        if (!Mathf.Approximately(rot.y, _yRotation))
        {
            rot.y = _yRotation;
            _body.MoveRotation(Quaternion.Euler(rot));
        }

        var velocity = _body.velocity;
		if (_speed != Vector3.zero)
        {
			//Deplacement au sol (à modifier)
			if (_isGrounded) {
				Vector3 velocityChange = (_speed - velocity);
				velocityChange.y = 0;
				_body.AddForce(velocityChange, ForceMode.VelocityChange);
			}
			//AirControl
			else {
				_speed *= Time.deltaTime;
				if (Vector2.Angle (new Vector2 (velocity.x, velocity.z), new Vector2 (_speed.x, _speed.z)) <= 90) {
					float _proj = ((velocity.x * _speed.x) + (velocity.z * _speed.z)) / ((_speed.x * _speed.x) + (_speed.z + _speed.z));
					_proj *= new Vector2 (_speed.x, _speed.z).magnitude;
					if (_proj < AirControl) {
						_body.velocity += _speed;
					}
				}
				else {
					_body.velocity += _speed;
				}
			}

			_isMoving = true;
        }
		//Stop le player quand il est au sol et qu'il ne fait pas d'input
        else if (_isGrounded && _isMoving)
        {
            _body.velocity = Vector3.zero;
            _isMoving = false;
        }

		//gravité
        _body.AddForce(Vector3.down * Gravity, ForceMode.Acceleration);


		_jumpCounter--;
    }

	void OnCollisionEnter (Collision collision) {
		if (collision.collider.tag == "Platform") {
			RaycastHit hit;

			if (Physics.Raycast(_groundCheck.position, Vector3.down, out hit)) {
				if (hit.collider.tag == "Platform") {
					transform.parent = collision.collider.transform.GetChild (0).transform;
				}
			}

			if(collision.gameObject.layer == LayerMask.NameToLayer ("Boost"))
			{
				BoostEnabled = true;
				Debug.Log ("Enter Boost");
			}
		}
	}

	void OnCollisionExit (Collision collision) {
		if (collision.collider.tag == "Platform") {
			transform.parent = null;
		}

		if(collision.gameObject.layer == LayerMask.NameToLayer ("Boost"))
		{
			BoostEnabled = false;
			Debug.Log ("Exit Boost");
		}
	}

	void OnTriggerEnter (Collider collider) {
		if (collider.tag == "Checkpoint") {
			_lastCheckpoint = collider.transform.position;
		}
	}

	public void GoToCheckpoint () {
		gameObject.transform.position = _lastCheckpoint;
		_body.velocity = Vector3.zero;
	}
}
