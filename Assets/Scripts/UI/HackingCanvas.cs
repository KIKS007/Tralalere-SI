using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class HackingCanvas : MonoBehaviour 
{
	public Button firstSelected;

	public GameObject[] invokesScroll = new GameObject[4];

	void OnEnable ()
	{
		firstSelected.Select ();
		ShowInvoke (0);
	}

	public void ShowInvoke (int whichInvoke)
	{
		for (int i = 0; i < invokesScroll.Length; i++)
			invokesScroll [i].SetActive (false);

		invokesScroll [whichInvoke].SetActive (true);
	}
}
