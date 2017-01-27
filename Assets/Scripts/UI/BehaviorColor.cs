using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using DG.Tweening;

public class BehaviorColor : MonoBehaviour, IPointerDownHandler, IPointerUpHandler
{
	[Header ("Materials")]
	public Material inViewport;
	public Material selected;

	[Header ("Transition Duration")]
	public float duration = 0.1f;

	public Color onStartColor;
	public Color onCollisionColor;
	public Color inventoryColor;

	private Text text;

	private string onStartProperty = "_Contour_Color_OnStart";
	private string onCollisionProperty = "_Contour_Color_PLayer";
	private string inventoryProperty = "_Contour_Color_Inventory";

	private ScrollType textColorType;

	// Use this for initialization
	void Awake () 
	{

		onStartColor = GetComponent<Image> ().material.GetColor (onStartProperty);
		onCollisionColor = GetComponent<Image> ().material.GetColor (onCollisionProperty);
		inventoryColor = GetComponent<Image> ().material.GetColor (inventoryProperty);

		text = transform.GetChild (0).GetComponent<Text> ();

		GetComponent<Image> ().material = new Material (GetComponent<Image> ().material);
	}

	void Start ()
	{
		SetNewColor ();
		
	}

	public void OnPointerDown (PointerEventData eventData)
	{
		GetComponent<Image> ().material = new Material (selected);

		switch(textColorType)
		{
		case ScrollType.Inventory:
			GetComponent<Image> ().material.SetColor (inventoryProperty, inventoryColor);
			break;
		case ScrollType.OnCollision:
			GetComponent<Image> ().material.SetColor (inventoryProperty, onCollisionColor);
			break;
		case ScrollType.OnStart:
			GetComponent<Image> ().material.SetColor (inventoryProperty, onStartColor);
			break;
		}
	}

	public void OnPointerUp (PointerEventData eventData)
	{
		GetComponent<Image> ().material = new Material (inViewport);

		SetNewColor ();
	}

	void SetNewColor ()
	{
		switch (transform.parent.parent.parent.GetComponent<ScrollManager> ().scrollType)
		{
		case ScrollType.Inventory:
			GetComponent<Image> ().material.DOColor (inventoryColor, inventoryProperty, duration);

			text.DOColor (new Color (inventoryColor.r, inventoryColor.g, inventoryColor.b, 1), duration);
			textColorType = ScrollType.Inventory;
			break;
		case ScrollType.OnCollision:
			GetComponent<Image> ().material.DOColor (onCollisionColor, inventoryProperty, duration);

			text.DOColor (new Color (onCollisionColor.r, onCollisionColor.g, onCollisionColor.b, 1), duration);
			textColorType = ScrollType.OnCollision;
			break;
		case ScrollType.OnStart:
			GetComponent<Image> ().material.DOColor (onStartColor, inventoryProperty, duration);

			text.DOColor (new Color (onStartColor.r, onStartColor.g, onStartColor.b, 1), duration);
			textColorType = ScrollType.OnStart;
			break;
		}
	}
}
