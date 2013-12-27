using UnityEngine;
using System.Collections;

public class CameraController : MonoBehaviour {

    public GameObject lookAt;
    float shake_decay;
    float shake_intensity;
    Vector3 originPosition;

	// Update is called once per frame
	void Update () {

        if (shake_intensity > 0)
        {
            transform.position = originPosition + Random.insideUnitSphere * shake_intensity;
            shake_intensity -= shake_decay;
        }

        transform.position = new Vector3(-lookAt.transform.position.x * 0.25f, transform.position.y, transform.position.z);

        transform.LookAt(new Vector3(lookAt.transform.position.x*0.08f,-1,0));
        
	}

    public void Shake()
    {
        originPosition = transform.position;
        shake_intensity = .05f;
        shake_decay = 0.004f;
    }
}
