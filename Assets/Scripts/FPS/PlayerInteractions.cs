using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Rewired;
using DarkTonic.MasterAudio;

public class PlayerInteractions : MonoBehaviour {

	public bool Pause = false;
	public bool CrackMode = false;

	float GrabDistance = 3f;

	Rigidbody _holdObject;
	Quaternion _holdObjectRotation;
	int _holdObjectLayer;
	Transform _camera;
	Player _player;
	Transform _objectSnap;

	// Use this for initialization
	void Start () {
		_camera = transform.GetChild (0).GetChild (0).transform;
		_player = ReInput.players.GetPlayer(0);
		_objectSnap = transform.GetChild (0).GetChild (1).transform;
	}
	
	// Update is called once per frame
	void Update () {

		if (!Pause && !CrackMode) {
			RaycastHit hit;
			if (Physics.Raycast (_camera.position, _camera.forward, out hit, GrabDistance)) {
				if (hit.transform.tag == "Object") {
					if (_player.GetButtonDown ("Catch")) {
						_holdObject = hit.transform.gameObject.GetComponent<Rigidbody> ();
						_holdObject.useGravity = false;
						_holdObject.constraints = RigidbodyConstraints.FreezeRotation;
						_holdObject.transform.parent = _objectSnap;
						_holdObjectRotation = _holdObject.transform.localRotation;
						_holdObjectLayer = _holdObject.gameObject.layer;
						_holdObject.gameObject.layer = 9;
					}
				}
			}

			if (_player.GetButtonUp ("Catch")) {
				if (_holdObject != null) {
					_holdObject.useGravity = true;
					_holdObject.constraints = RigidbodyConstraints.None;
					_holdObject.gameObject.layer = _holdObjectLayer;
					_holdObject.transform.parent = null;
					_holdObject = null;
				}
			}
		}
	
	}

	void FixedUpdate () {

		if (_holdObject != null) {
			_holdObject.MovePosition (_objectSnap.position);
			_holdObject.transform.localRotation = _holdObjectRotation;
		}

	}
}
