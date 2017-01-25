using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class ScrollManager : MonoBehaviour 
{
	public List<RectTransform> elements = new List<RectTransform> ();

	private float _xPos = 0f;
	private float _initialYPos = 70;

	private float _duration = 0.25f;
	private Ease _ease = Ease.OutQuad;

	private float gapBetweenElements = 10f;

	[HideInInspector]
	public RectTransform content;

	private float contentHeight;

	private float comparaisonOffset = 0f;

	// Use this for initialization
	void Awake () 
	{
		
	}

	void OnEnable ()
	{
		content = transform.GetChild (0).GetChild (0).GetComponent<RectTransform> ();
		GetElements ();		
	}

	void GetElements ()
	{
		elements.Clear ();

		for (int i = 0; i < content.transform.childCount; i++)
		{
			elements.Add (content.transform.GetChild (i).GetComponent<RectTransform> ());
			elements [i].anchoredPosition = new Vector2 (_xPos, _initialYPos);
		}

		PlaceElements ();
	}

	public void InsertElement (RectTransform element, bool setParent = true)
	{
		if(content == null)
			content = transform.GetChild (0).GetChild (0).GetComponent<RectTransform> ();

		if(setParent)
			element.SetParent (content.transform);

		if(elements.Count > 0)
		{
			if(element.position.y > elements [0].position.y + comparaisonOffset)
			{
				//Debug.Log ("First");
				RemoveElement (element);
				elements.Insert (0, element);
			}
			
			else if(element.position.y < elements [elements.Count - 1].position.y - comparaisonOffset)
			{
				//Debug.Log ("Last");
				RemoveElement (element);
				elements.Add (element);
			}
			
			else
			{
				for (int i = 0; i < elements.Count; i++)
				{				
					if(element.position.y < elements [i].position.y - comparaisonOffset && element.position.y > elements [i + 1].position.y + comparaisonOffset)
					{
						//Debug.Log ("Between");
						RemoveElement (element);
						elements.Insert (i + 1, element);
						break;
					}
				}			
			}			
		}
		else
		{
			//Debug.Log ("Add");
			elements.Add (element);
		}


		PlaceElements ();
	}

	public void AddElement (RectTransform element)
	{
		if(content == null)
			content = transform.GetChild (0).GetChild (0).GetComponent<RectTransform> ();

		element.SetParent (content.transform);

		elements.Add (element);

		PlaceElements ();
	}

	public void RemoveElement (RectTransform element)
	{
		if (elements.Contains (element))
			elements.Remove (element);
	}

	public void PlaceElements ()
	{
		SetContentHeight ();

		for (int i = 0; i < elements.Count; i++)
		{
			Vector2 pos = new Vector2 (_xPos, -elements [i].sizeDelta.y * 0.5f - gapBetweenElements);

			if (!elements [i].gameObject.GetComponent<DragAndDrop> ().canBeDragged || !elements [i].gameObject.GetComponent<DragAndDrop> ().isDragged)
			{
				if(i == 0)
				{
					elements [i].DOAnchorPos (pos, _duration).SetEase (_ease);
					
				}
				else
				{
					pos = pos + new Vector2 (_xPos, -(elements [i].sizeDelta.y + gapBetweenElements) * (i));
					
					elements [i].DOAnchorPos (pos, _duration).SetEase (_ease);	
				}				
			}
		}
	}

	void SetContentHeight ()
	{
		if(elements.Count > 0)
		{
			contentHeight = (elements [0].sizeDelta.y + gapBetweenElements) * elements.Count;

			contentHeight = contentHeight + gapBetweenElements;

			content.sizeDelta = new Vector2 (content.sizeDelta.x, contentHeight);
		}
	}

	public void ClearElements ()
	{
		for (int i = 0; i < elements.Count; i++)
			Destroy (elements [i].gameObject);

		elements.Clear ();
	}
}
