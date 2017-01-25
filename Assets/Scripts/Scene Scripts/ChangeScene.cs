using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class ChangeScene : MonoBehaviour {

	public string SceneName;

	Scene _myScene;

	bool _waitingForASunnyDay = false;

	void Update () {
		if (_waitingForASunnyDay) {
			if (SceneMaster.Instance.LoadedScene.Contains (SceneName)) {
				_myScene = SceneManager.GetSceneByName(SceneName);
				MovePlayer ();
				_waitingForASunnyDay = false;
			}
		}
	}

	void OnTriggerEnter (Collider collider) {
		if (collider.tag == "Player") {
			if (SceneMaster.Instance.LoadedScene.Contains (SceneName)) {
				_myScene = SceneManager.GetSceneByName(SceneName);
				MovePlayer ();
			}
			else {
				if (!SceneMaster.Instance.SceneWaitLine.Contains (SceneName)) {
					SceneMaster.Instance.SceneWaitLine.Add (SceneName);
				}
				_waitingForASunnyDay = true;
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
 