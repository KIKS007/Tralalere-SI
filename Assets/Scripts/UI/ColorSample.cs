using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ColorSample : MonoBehaviour 
{
	public InputField r;
	public InputField g;
	public InputField b;

	public float rValue;
	public float gValue;
	public float bValue;

	private Image img;

	// Use this for initialization
	void Start () {
		img = GetComponent<Image> ();
	}
	
	// Update is called once per frame
	void Update () 
	{
		rValue = 0;
		gValue = 0;
		bValue = 0;

		if(r.text != "" && r.text != ".")
			rValue = float.Parse (r.text) / 255;

		if(g.text != "" && r.text != ".")
			gValue = float.Parse (g.text) / 255;

		if(b.text != "" && r.text != ".")
			bValue = float.Parse (b.text) / 255;

		img.color = new Color (rValue, gValue, bValue, 1);
	}
}
