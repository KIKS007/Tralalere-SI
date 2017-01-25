using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class DragAndDrop : MonoBehaviour, IPointerUpHandler, IPointerDownHandler, IDragHandler
{
	public static GameObject currentItemDragged;

	[Header ("Platform Type")]
	public BehaviorType uiBehaviorType;

	[Header ("Drag")]
	public bool isDragged = false;
	public bool isFixed = false;

	[Header ("Current Scroll Parent")]
	public ScrollManager scrollManager;

	private RectTransform rect;
	private Camera mainCamera;

	private float lerp = 0.2f;

	private RectTransform hackingCanvas;
	public RectTransform scrollViewport;

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

		if (transform.parent.parent.parent.GetComponent<ScrollManager> () != null)
			scrollManager = transform.parent.parent.parent.GetComponent<ScrollManager> ();
		
		scrollViewport = scrollManager.content.parent.GetComponent<RectTransform> ();
	}

	void Update ()
	{
		if(isDragged)
		{
			Vector2 pos;
			RectTransformUtility.ScreenPointToLocalPointInRectangle(hackingCanvas.transform as RectTransform, Input.mousePosition, mainCamera, out pos);
			transform.position = Vector3.Lerp (transform.position, hackingCanvas.transform.TransformPoint(pos * 0.6f), lerp);

			if(!isFixed)
				BlockRect (hackingCanvas);
			else
				FixedBlockRect (scrollViewport);
		}
	}

	void BlockRect (RectTransform parent)
	{
		if(rect.anchoredPosition.x < -((parent.rect.width / 2) - myWidth))
		{
			Vector3 localPos = rect.anchoredPosition;
			localPos.x = -((parent.rect.width / 2) - myWidth);
			rect.anchoredPosition = localPos;
		}
		else if(rect.anchoredPosition.x > ((parent.rect.width / 2) - myWidth))
		{
			Vector3 localPos = rect.anchoredPosition;
			localPos.x = ((parent.rect.width / 2) - myWidth);
			rect.anchoredPosition = localPos;
		}

		if(rect.anchoredPosition.y < -((parent.rect.height / 2) - myHeight) - 250)
		{
			Vector3 localPos = rect.anchoredPosition;
			localPos.y = -((parent.rect.height / 2) - myHeight) - 250;
			rect.anchoredPosition = localPos;
		}
		else if(rect.anchoredPosition.y > ((parent.rect.height / 2) - myHeight) - 250)
		{
			Vector3 localPos = rect.anchoredPosition;
			localPos.y = ((parent.rect.height / 2) - myHeight) - 250;
			rect.anchoredPosition = localPos;
		}
	}

	void FixedBlockRect (RectTransform parent)
	{
		if(rect.anchoredPosition.x < -((parent.rect.width / 2) - myWidth))
		{
			Vector3 localPos = rect.anchoredPosition;
			localPos.x = -((parent.rect.width / 2) - myWidth);
			rect.anchoredPosition = localPos;
		}
		else if(rect.anchoredPosition.x > ((parent.rect.width / 2) - myWidth))
		{
			Vector3 localPos = rect.anchoredPosition;
			localPos.x = ((parent.rect.width / 2) - myWidth);
			rect.anchoredPosition = localPos;
		}

		if(rect.anchoredPosition.y < -((parent.rect.height / 2) - myHeight) - 250)
		{
			Vector3 localPos = rect.anchoredPosition;
			localPos.y = -((parent.rect.height / 2) - myHeight) - 250;
			rect.anchoredPosition = localPos;
		}
		else if(rect.anchoredPosition.y > ((parent.rect.height / 2) - myHeight) - 170)
		{
			Vector3 localPos = rect.anchoredPosition;
			localPos.y = ((parent.rect.height / 2) - myHeight) - 170;
			rect.anchoredPosition = localPos;
		}
	}

	public void OnPointerDown (PointerEventData eventData)
	{
		isDragged = true;
		currentItemDragged = gameObject;
		
		if(!isFixed)
			RemoveFromScroll ();
		
		StartCoroutine (MoveOtherElements ());			
	}

	public void OnPointerUp (PointerEventData eventData)
	{
		isDragged = false;
		currentItemDragged = null;
		
		//Debug.Log ("Up");
		
		CheckDrop ();			
	}

	public void CheckDrop ()
	{
		ScrollManager scrollTemp = CheckWhichSlot ();

		if(scrollTemp != null)
		{
			if (scrollManager != null && scrollManager != scrollTemp && !isFixed)
				RemoveFromScroll ();

			if (scrollManager == scrollTemp && isFixed || !isFixed)
				scrollManager = scrollTemp;			

			scrollManager.InsertElement (rect);				
		}
		else
		{
			scrollManager.InsertElement (rect);
		}
	}

	ScrollManager CheckWhichSlot ()
	{
		ScrollManager scrollManager = null;

		PointerEventData pointer = new PointerEventData(EventSystem.current);
		pointer.position = Input.mousePosition;

		List<RaycastResult> raycastResults = new List<RaycastResult>();
		EventSystem.current.RaycastAll(pointer, raycastResults);

		for (int i = 0; i < raycastResults.Count; i++)
		{
			if(raycastResults [i].gameObject.tag == "Slot")
			{
				if (raycastResults [i].gameObject.GetComponent<ScrollManager> ())
				{
					scrollManager = raycastResults [i].gameObject.GetComponent<ScrollManager> ();
					break;
				}
			}
		}

		return scrollManager;
	}

	public void RemoveFromScroll ()
	{
		if(scrollManager != null)
		{
			scrollManager.RemoveElement (rect);
			scrollManager.PlaceElements ();
			
			scrollManager = null;
			transform.SetParent (hackingCanvas.transform);			
		}
	}

	IEnumerator MoveOtherElements ()
	{
		if(isDragged)
		{
			ScrollManager scrollTemp = CheckWhichSlot ();

			if(scrollTemp != null)
			{
				if (scrollManager != null && scrollManager != scrollTemp && !isFixed)
				{
					RemoveFromScroll ();
				}

				if (scrollManager == scrollTemp && isFixed || !isFixed)
				{
					scrollManager = scrollTemp;
					scrollManager.InsertElement (rect, false);					
				}				
			}
			
			//Debug.Log (scrollTemp);
			yield return new WaitForSeconds (0.1f);
			
			StartCoroutine (MoveOtherElements ());
		}

	}

	public void OnDrag (PointerEventData eventData)
	{
		//Do nothing
	}
}
