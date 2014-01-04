using UnityEngine;
using System.Collections;

public class ScoreController : MonoBehaviour {

    TextMesh txtMesh;
	// Use this for initialization
	void Start () {
        txtMesh = GetComponent<TextMesh>();
	}
	
	// Update is called once per frame
	void Update () {
        txtMesh.text = LevelManager.Instance.score.ToString();
	}
}
