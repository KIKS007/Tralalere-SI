using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class ScrollManager : MonoBehaviour 
{
	public List<RectTransform> elements = new List<RectTransform> ();

	private float _xPos = 0f;
	private float _initialYPos = 70;

	private float _duration = 0.5f;
	private Ease _ease = Ease.OutQuad;

	private float gapBetweenElements = 10f;

	private RectTransform content;

	public float contentHeight;

	// Use this for initialization
	void Start () 
	{
		content = transform.GetChild (0).GetChild (0).GetComponent<RectTransform> ();	

		GetElements ();
	}
	
	// Update is called once per frame
	void Update () 
	{
		
	}

	void GetElements ()
	{
		elements.Clear ();

		for (int i = 0; i < content.transform.childCount; i++)
		{
			elements.Add (content.transform.GetChild (i).GetComponent<RectTransform> ());
			//elements [i].anchoredPosition = new Vector2 (_xPos, _initialYPos);
		}

		PlaceElements ();
	}

	public void AddElement (RectTransform element)
	{
		
	}

	void PlaceElements ()
	{
		//SetContentHeight ();

		for (int i = 0; i < elements.Count; i++)
		{
			Vector2 pos = new Vector2 (_xPos, -elements [i].sizeDelta.y * 0.5f - gapBetweenElements);

			if(i == 0)
			{
				elements [i].DOAnchorPos (pos, _duration).SetEase (_ease);

			}
			else
			{
				pos = pos + new Vector2 (_xPos, -(elements [i].sizeDelta.y + gapBetweenElements) * (i));

				elements [i].DOAnchorPos (pos, _duration).SetEase (_ease);	
			}

			Debug.Log (pos);

		}

	}

	void SetContentHeight ()
	{
		Debug.Log ((elements [0].sizeDelta.y + gapBetweenElements) * elements.Count);
		contentHeight = (elements [0].sizeDelta.y + gapBetweenElements) * elements.Count;
		content.sizeDelta = new Vector2 (content.sizeDelta.x, contentHeight);
	}
}
