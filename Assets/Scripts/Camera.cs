using UnityEngine;
using System.Collections;

public class Camera : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        transform.position = new Vector3((Input.mousePosition.x-(Screen.width/2))*0.003f, (Input.mousePosition.y-(Screen.height/2))*0.003f , -15);
        transform.LookAt(Vector3.zero);
	}
}
