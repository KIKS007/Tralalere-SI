using UnityEngine;
using System.Collections;
using UnityEditor;

public class CreateScriptableObject
{
	[MenuItem ("Assets/Create/Behavior")]
	public static void CreateMyAsset ()
	{
		Scale asset = ScriptableObject.CreateInstance<Scale> ();

		AssetDatabase.CreateAsset (asset, "Assets/Scripts/Behaviors Objects/" + asset.Name + ".asset");
		AssetDatabase.SaveAssets ();

		EditorUtility.FocusProjectWindow ();

		Selection.activeObject = asset;
	}
}
