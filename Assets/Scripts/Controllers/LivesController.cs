using UnityEngine;
using System.Collections;

public class LivesController : MonoBehaviour {

    TextMesh txtMesh;
	// Use this for initialization
	void Start () {
        txtMesh = GetComponent<TextMesh>();
	}
	
	// Update is called once per frame
	void Update () {
        string lives = "";
        for (int i = 0; i < LevelManager.Instance.lives; i++)
        {
            lives += ".";
        }
        txtMesh.text = lives;
	}
}
