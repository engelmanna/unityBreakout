using UnityEngine;
using System.Collections;

public class PlanetController : MonoBehaviour {

    Transform _transform;
    float speed;

	// Use this for initialization
	void Start () {
        _transform = transform;
        speed = Random.Range(1.5f, 3);
	}
	
	// Update is called once per frame
	void Update () {
        _transform.LookAt(Vector3.zero);
        _transform.RotateAround(Vector3.zero, Vector3.up, Time.deltaTime * speed );
	}
}
