using UnityEngine;
using System.Collections;

public class CameraController : MonoBehaviour {

    public GameObject lookAt;

    Vector3 shakePosition;
    float shake_intensity;

	void Update () {
        if (shake_intensity > 0)
        {
            shakePosition = Random.insideUnitSphere * shake_intensity;
            shake_intensity -= 0.008f;
        }
        transform.position = new Vector3(-lookAt.transform.position.x * 0.25f, -3.3f, -10)+shakePosition;
        transform.LookAt(new Vector3(lookAt.transform.position.x * 0.08f, -1 ,0));
        
	}

    public void Shake()
    {
        shake_intensity = 0.4f;
    }
}
