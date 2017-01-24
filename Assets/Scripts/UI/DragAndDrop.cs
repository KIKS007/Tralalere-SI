using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class DragAndDrop : MonoBehaviour, IPointerUpHandler, IPointerDownHandler
{
	public static GameObject currentItemDragged;

	[Header ("Is Dragged")]
	public bool isDragged = false;

	[Header ("Under Element")]
	public GameObject underElement;

	private RectTransform rect;
	private Camera mainCamera;

	private float lerp = 0.2f;

	private RectTransform hackingCanvas;

	private float myWidth;
	private float myHeight;

	// Use this for initialization
	void Start () 
	{
		rect = GetComponent<RectTransform> ();
		mainCamera = GameObject.FindGameObjectWithTag ("MainCamera").GetComponent<Camera> ();

		hackingCanvas = GameObject.FindGameObjectWithTag ("HackingCanvas").GetComponent<RectTransform> ();

		myWidth = (rect.rect.width + 5) / 2;
		myHeight = (rect.rect.height + 5) / 2;

		Debug.Log (-((hackingCanvas.rect.height / 2) - myHeight) - 250);

		Debug.Log (((hackingCanvas.rect.height / 2) - myHeight) - 250);
	}

	void Update ()
	{
		if(isDragged)
		{
			Vector2 pos;
			RectTransformUtility.ScreenPointToLocalPointInRectangle(hackingCanvas.transform as RectTransform, Input.mousePosition, mainCamera, out pos);
			transform.position = Vector3.Lerp (transform.position, hackingCanvas.transform.TransformPoint(pos * 0.6f), lerp);
		}

		RaycastHit info;
		if (Physics.Raycast (transform.position, transform.forward, out info, 100f, LayerMask.NameToLayer ("UI")))
			underElement = info.collider.gameObject;

		BlockRect ();
	}

	void BlockRect ()
	{
		if(rect.anchoredPosition.x < -((hackingCanvas.rect.width / 2) - myWidth))
		{
			Vector3 localPos = rect.anchoredPosition;
			localPos.x = -((hackingCanvas.rect.width / 2) - myWidth);
			rect.anchoredPosition = localPos;
		}
		else if(rect.anchoredPosition.x > ((hackingCanvas.rect.width / 2) - myWidth))
		{
			Vector3 localPos = rect.anchoredPosition;
			localPos.x = ((hackingCanvas.rect.width / 2) - myWidth);
			rect.anchoredPosition = localPos;
		}

		if(rect.anchoredPosition.y < -((hackingCanvas.rect.height / 2) - myHeight) - 250)
		{
			Vector3 localPos = rect.anchoredPosition;
			localPos.y = -((hackingCanvas.rect.height / 2) - myHeight) - 250;
			rect.anchoredPosition = localPos;
		}
		else if(rect.anchoredPosition.y > ((hackingCanvas.rect.height / 2) - myHeight) - 250)
		{
			Vector3 localPos = rect.anchoredPosition;
			localPos.y = ((hackingCanvas.rect.height / 2) - myHeight) - 250;
			rect.anchoredPosition = localPos;
		}
	}

	public void OnPointerDown (PointerEventData eventData)
	{
		isDragged = true;
		currentItemDragged = gameObject;

		RemoveParent ();
	}

	public void OnPointerUp (PointerEventData eventData)
	{
		isDragged = false;
		currentItemDragged = null;

		CheckDrop ();
	}

	public void CheckDrop ()
	{
		PointerEventData pointer = new PointerEventData(EventSystem.current);
		pointer.position = Input.mousePosition;

		List<RaycastResult> raycastResults = new List<RaycastResult>();
		EventSystem.current.RaycastAll(pointer, raycastResults);

		for (int i = 0; i < raycastResults.Count; i++)
		{
			if(raycastResults [i].gameObject.tag == "Slot")
			{
				Debug.Log (raycastResults [i].gameObject);
				raycastResults [i].gameObject.GetComponent<ScrollManager> ().AddElement (rect);
			}
		}
	}

	public void RemoveParent ()
	{
		transform.SetParent (hackingCanvas.transform);
	}
}
