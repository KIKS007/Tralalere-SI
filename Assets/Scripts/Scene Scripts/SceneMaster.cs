using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneMaster : Singleton<SceneMaster> {

	public List<string> SceneWaitLine = new List<string>();
	public List<string> LoadedScene = new List <string>();

	AsyncOperation _currentLoading;
	bool _isLoading = false;

	// Update is called once per frame
	void Update () {
		if (_isLoading) {
			if (_currentLoading.isDone) {
				_isLoading = false;
				LoadedScene.Add(SceneWaitLine[0]);
				GameObject[] _objectsInScene = SceneManager.GetSceneByName(SceneWaitLine[0]).GetRootGameObjects ();
				for (int i = 0; i < _objectsInScene.Length; i++) {
					if (_objectsInScene[i].tag == "Player") {
						Destroy (_objectsInScene[i]);
					}
				}
				SceneWaitLine.RemoveAt (0);
			}
		}
		else {
			if (SceneWaitLine.Count > 0) {
				_currentLoading = SceneManager.LoadSceneAsync (SceneWaitLine[0], LoadSceneMode.Additive);
				_isLoading = true;
			}
		}
	}
}
