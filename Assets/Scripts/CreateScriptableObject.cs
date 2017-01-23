using UnityEngine;
using System.Collections;
using UnityEditor;

public class CreateScriptableObject
{
	[MenuItem ("Assets/Create/CodeBlock")]
	public static void CreateMyAsset ()
	{
		Move asset = ScriptableObject.CreateInstance<Move> ();

		AssetDatabase.CreateAsset (asset, "Assets/Scripts/Behaviors Objects" + asset.Name + ".asset");
		AssetDatabase.SaveAssets ();

		EditorUtility.FocusProjectWindow ();

		Selection.activeObject = asset;
	}
}
