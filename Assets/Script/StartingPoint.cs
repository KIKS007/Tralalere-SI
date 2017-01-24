using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StartingPoint : MonoBehaviour {

	public bool IsStartingPoint = false;
	public GameObject PlayerPrefab;

	// Use this for initialization
	void Start () {

		if (IsStartingPoint) {
			GameObject _newPlayer = Instantiate(PlayerPrefab, transform.GetChild(0).GetChild(0).position, Quaternion.identity) as GameObject;
		}
	}

}
