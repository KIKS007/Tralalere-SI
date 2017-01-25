using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneMaster : Singleton<SceneMaster> {

	public List<string> SceneWaitLine = new List<string>();

	Scene _currentLoading;
	bool _isLoading = false;

	// Update is called once per frame
	void Update () {
		if (_isLoading) {
			if (_currentLoading.isLoaded) {
				_isLoading = false;
				SceneWaitLine.RemoveAt (0);
				GameObject[] _objectsInScene = _currentLoading.GetRootGameObjects ();
				for (int i = 0; i < _objectsInScene.Length; i++) {
					if (_objectsInScene[i].tag == "Player") {
						Destroy (_objectsInScene[i]);
					}
				}
			}
		}
		else {
			if (SceneWaitLine.Count > 0) {
				SceneManager.LoadSceneAsync (SceneWaitLine[0]);
				_currentLoading = SceneManager.GetSceneByName (SceneWaitLine[0]);
				_isLoading = true;
			}
		}
	}
}
