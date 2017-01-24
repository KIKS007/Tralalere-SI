using UnityEngine;
using System.Collections;
using UnityEditor;

public class CreateScriptableObject
{
	[MenuItem ("Assets/Create/Behavior")]
	public static void CreateMyAsset ()
	{
		Boost asset = ScriptableObject.CreateInstance<Boost> ();

		AssetDatabase.CreateAsset (asset, "Assets/Scripts/Resources/" + asset.Name + ".asset");
		AssetDatabase.SaveAssets ();

		EditorUtility.FocusProjectWindow ();

		Selection.activeObject = asset;
	}
}
