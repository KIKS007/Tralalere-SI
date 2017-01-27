using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class ButtonColor : MonoBehaviour, IPointerDownHandler, IPointerEnterHandler, IPointerExitHandler, IPointerUpHandler
{
	public string property;

	[Header ("Colors")]
	public Color idleColor;
    public Color enterColor;
	public Color downColor;

	private Color exitColor;
	private Color upColor;

	private Text text;

	private Material material;

	void Start ()
	{
		text = transform.GetChild (0).GetComponent<Text> ();

		GetComponent<Image> ().material = new Material (GetComponent<Image> ().material);

		exitColor = idleColor;
		upColor = idleColor;

		material =  GetComponent<Image> ().material;

        material.SetColor("_" + property, idleColor);
		text.color = new Color(idleColor.r, idleColor.g, idleColor.b, 1); ;
    }

	public void OnPointerDown (PointerEventData eventData)
	{
		SetColor (downColor);
	}

	public void OnPointerEnter (PointerEventData eventData)
	{
		SetColor (enterColor);
	}

	public void OnPointerExit (PointerEventData eventData)
	{
		SetColor (exitColor);
	}

	public void OnPointerUp (PointerEventData eventData)
	{
		SetColor (upColor);
	}

	void SetColor (Color color)
	{
		material.SetColor ("_" + property, color);
		text.color = new Color (color.r, color.g, color.b, 1);
	}
}
