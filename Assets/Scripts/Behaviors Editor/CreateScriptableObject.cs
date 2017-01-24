using UnityEngine;
using System.Collections;
using UnityEditor;

public class CreateScriptableObject
{
	[MenuItem ("Assets/Create/Behavior")]
	public static void CreateMyAsset ()
	{
		Bounce asset = ScriptableObject.CreateInstance<Bounce> ();

		AssetDatabase.CreateAsset (asset, "Assets/Scripts/Behaviors Objects/" + asset.Name + ".asset");
		AssetDatabase.SaveAssets ();

		EditorUtility.FocusProjectWindow ();

		Selection.activeObject = asset;
	}
}
