using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScrollManager : MonoBehaviour 
{
	private RectTransform content;

	// Use this for initialization
	void Start () 
	{
		content = transform.GetChild (0).GetChild (0).GetComponent<RectTransform> ();	
	}
	
	// Update is called once per frame
	void Update () 
	{
		
	}

	public void AddElement (RectTransform element)
	{
		
	}
}
