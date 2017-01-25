using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public delegate void EventHandler();

public class GameManager : Singleton<GameManager> 
{
	public void Awake ()
	{
		DontDestroyOnLoad (this);
	}
}
