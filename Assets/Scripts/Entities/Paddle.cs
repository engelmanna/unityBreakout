using UnityEngine;
using System.Collections;

public class Paddle : Entity
{

	// Update is called once per frame
	void Update () {

        if (Input.GetKey(KeyCode.A))
            coll.velocity.x = -20;

        if (Input.GetKey(KeyCode.D))
            coll.velocity.x = 20;

        coll.velocity.x *= 0.8f;  
	}


}