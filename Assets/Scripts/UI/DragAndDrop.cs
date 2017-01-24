using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class DragAndDrop : MonoBehaviour, IDragHandler, IEndDragHandler, IPointerUpHandler, IPointerDownHandler
{
	public static GameObject currentItemDragged;
	public bool isDragged = false;

	private Vector3 startPosition;
	private Transform startParent;

	private RectTransform rect;
	private Camera mainCamera;

	private float lerp = 0.2f;

	// Use this for initialization
	void Start () 
	{
		rect = GetComponent<RectTransform> ();
		mainCamera = GameObject.FindGameObjectWithTag ("MainCamera").GetComponent<Camera> ();
	}

	void Update ()
	{
		if(isDragged)
			transform.position = Vector3.Lerp (transform.position, Input.mousePosition, lerp);

	}

	public void OnPointerDown (PointerEventData eventData)
	{
		isDragged = true;
		currentItemDragged = gameObject;
	}

	public void OnBeginDrag (PointerEventData eventData)
	{
		
	}

	public void OnDrag (PointerEventData eventData)
	{
		
	}

	public void OnEndDrag (PointerEventData eventData)
	{
		
	}

	public void OnPointerUp (PointerEventData eventData)
	{
		isDragged = false;

		currentItemDragged = null;
	}
}
