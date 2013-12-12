using UnityEngine;
using System.Collections;

public class CameraController : MonoBehaviour {

    public GameObject lookAt;
	// Update is called once per frame
	void Update () {
        transform.LookAt(new Vector3(lookAt.transform.position.x*0.08f,-1,0));
	}
}
