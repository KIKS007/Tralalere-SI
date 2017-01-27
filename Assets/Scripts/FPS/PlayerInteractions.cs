using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Rewired;
using DarkTonic.MasterAudio;
using UnityEngine.UI;

public class PlayerInteractions : MonoBehaviour {

	public bool Pause = false;
	public bool CrackMode = false;

	public LayerMask layer;

	float GrabDistance = 3f;

	public HackingCanvas _hackingCanvas;

	[Header ("Cursors")]
	public Image crossHair;
	public Sprite cursorIdle;
	public Sprite cursorAiming;

	Rigidbody _holdObject;
	Quaternion _holdObjectRotation;
	int _holdObjectLayer;
	Transform _camera;
	Player _player;
	Transform _objectSnap;

	bool firstFrame = false;

	// Use this for initialization
	void Awake () {
		_camera = transform.GetChild (0).GetChild (0).transform;
		_player = ReInput.players.GetPlayer(0);
		_objectSnap = transform.GetChild (0).GetChild (1).transform;

		/*//Canvas 
		Pause = true;
		crossHair.enabled = false;

		if (!Cursor.visible)
			Cursor.visible = true;

		//gameObject.GetComponent <CCC>().Pause = true;
		Cursor.lockState = CursorLockMode.None;
		_hackingCanvas.ToggleCanvasPause();*/
	}

	void Start ()
	{
		
	}
	
	// Update is called once per frame
	void Update () 
	{
		//Cursor.SetCursor (cursorIdle, new Vector2 (cursorIdle.width * 0.5f, cursorIdle.height * 0.5f), CursorMode.Auto);

		RaycastHit hit2;

		if (!Pause && !CrackMode) 
		{
			if (Cursor.visible)
				Cursor.visible = false;

			if(!crossHair.enabled)
				crossHair.enabled = true;

			if(Physics.Raycast (_camera.position, _camera.forward, out hit2, Mathf.Infinity, layer, QueryTriggerInteraction.Ignore))
			{
				if (hit2.collider.attachedRigidbody != null && hit2.collider.attachedRigidbody.GetComponent<BehaviorsDesigner> () != null)
				{
					if(crossHair.sprite != cursorAiming)
						crossHair.sprite = cursorAiming;
					
				}
				else
				{
					if(crossHair.sprite != cursorIdle)
						crossHair.sprite = cursorIdle;
				}
			}
		}

		if (_player.GetButtonDown ("Pause")) {
			if (!Pause) {
				if (CrackMode) {
					UnHackGame ();
				}
				else {

					crossHair.enabled = false;

					if (!Cursor.visible)
						Cursor.visible = true;
					
					Pause = true;
					gameObject.GetComponent <CCC>().Pause = true;
					Cursor.lockState = CursorLockMode.None;
					_hackingCanvas.ToggleCanvasPause();
				}
			}
			else {
				UnPauseGame ();
			}
		}

		if (!Pause) 
		{

			if (!CrackMode) {
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

							Cursor.lockState = CursorLockMode.None;
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

						Cursor.lockState = CursorLockMode.None;
						Cursor.lockState = CursorLockMode.Locked;
					}
				}
			}



			if (_player.GetButtonDown ("Fire")) {
				if (!CrackMode && !_hackingCanvas.canvasVisible) 
				{
					if (gameObject.GetComponent <CCC>()._isGrounded) {
						if (Physics.Raycast (_camera.position, _camera.forward, out hit2, Mathf.Infinity, layer, QueryTriggerInteraction.Ignore)) {
							//Debug.Log (hit.collider.gameObject.name);

							if (hit2.collider.attachedRigidbody == null)
								return;

							crossHair.enabled = false;

							if (!Cursor.visible)
								Cursor.visible = true;

							_hackingCanvas.ToggleCanvasVisibility (hit2.collider.attachedRigidbody.gameObject);
							CrackMode = true;
							gameObject.GetComponent <CCC>().Pause = true;
							Cursor.lockState = CursorLockMode.None;
						}
					}
				}

				else if(_hackingCanvas.canvasVisible)
				{
					UnHackGame ();
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
		
	public void UnPauseGame () {
		Pause = false;
		gameObject.GetComponent <CCC>().Pause = false;
		Cursor.lockState = CursorLockMode.None;
		Cursor.lockState = CursorLockMode.Locked;
		_hackingCanvas.ToggleCanvasPause();
	}

	public void UnHackGame () {
		CrackMode = false;
		gameObject.GetComponent <CCC>().Pause = false;
		Cursor.lockState = CursorLockMode.None;
		Cursor.lockState = CursorLockMode.Locked;
		_hackingCanvas.ToggleCanvasVisibility();
	}
}
