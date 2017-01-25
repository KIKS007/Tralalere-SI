using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LoadScene : MonoBehaviour {

	public string[] SceneToBeLoaded;

	void OnTriggerEnter (Collider collider) {
		if (collider.tag == "Player") {
			for (int i = 0; i < SceneToBeLoaded.Length; i++) {
				if (!SceneMaster.Instance.LoadedScene.Contains (SceneToBeLoaded[i])) {
					if (!SceneMaster.Instance.SceneWaitLine.Contains (SceneToBeLoaded[i])) {
						SceneMaster.Instance.SceneWaitLine.Add (SceneToBeLoaded [i]);
					}
				}
			}
		}
	}
}
