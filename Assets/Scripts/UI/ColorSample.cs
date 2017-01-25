using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ColorSample : MonoBehaviour 
{
	public InputField r;
	public InputField g;
	public InputField b;

	private Image img;

	// Use this for initialization
	void Start () {
		img = GetComponent<Image> ();
	}
	
	// Update is called once per frame
	void Update () 
	{
		float rValue = 0;
		float gValue = 0;
		float bValue = 0;

		if(r.text != "")
			rValue = float.Parse (r.text);

		if(g.text != "")
			gValue = float.Parse (g.text);

		if(b.text != "")
			bValue = float.Parse (b.text);

		img.color = new Color (rValue, gValue, bValue, 255);
	}
}
