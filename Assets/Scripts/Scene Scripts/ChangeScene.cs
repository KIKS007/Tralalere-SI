using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class ChangeScene : MonoBehaviour {

	public string SceneName;

	Scene _myScene;

	bool _waitingForASunnyDay = false;
	int _noBugCounter;

	void Start () {
		_myScene = SceneManager.GetSceneByName (SceneName);
		if (!_myScene.IsValid ()) {
			Debug.LogError ("scene name is not valid");
		}
	}

	void Update () {
		if (_waitingForASunnyDay) {
			if (_myScene.isLoaded) {
				_noBugCounter--;
				if (_noBugCounter == 0) {
					MovePlayer ();
					_waitingForASunnyDay = false;
				}
			}
		}
	}

	void OnTriggerEnter (Collider collider) {
		if (collider.tag == "Player") {
			if (_myScene.isLoaded) {
				MovePlayer ();
			}
			else {
				if (!SceneMaster.Instance.SceneWaitLine.Contains (SceneName)) {
					SceneMaster.Instance.SceneWaitLine.Add (SceneName);
				}
				_waitingForASunnyDay = true;
				_noBugCounter = 2;
			}
		}
	}

	void MovePlayer () {
		GameObject[] _objectsInScene = _myScene.GetRootGameObjects ();
		for (int i = 0; i < _objectsInScene.Length; i++) {
			if (_objectsInScene[i].tag == "Start") {
				GameObject.FindGameObjectWithTag ("Player").transform.position = _objectsInScene[i].transform.position;
				i = _objectsInScene.Length;
			}
		}
	}
}
 