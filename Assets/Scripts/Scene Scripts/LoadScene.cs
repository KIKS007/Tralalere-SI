using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LoadScene : MonoBehaviour {

	public string[] SceneToBeLoaded;

	void OnTriggerEnter (Collider collider) {
		if (collider.tag == "Player") {
			for (int i = 0; i < SceneToBeLoaded.Length; i++) {
				Scene _currentScene = SceneManager.GetSceneByName (SceneToBeLoaded[i]);
				if (_currentScene.IsValid ()){
					if (!_currentScene.isLoaded) {
						if (!SceneMaster.Instance.SceneWaitLine.Contains (SceneToBeLoaded[i])) {
							SceneMaster.Instance.SceneWaitLine.Add (SceneToBeLoaded [i]);
						}
					}
				}
			}
		}
	}
}
