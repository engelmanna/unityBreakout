using UnityEngine;
using System.Collections;

public class Paddle : Entity
{
    float xVel = 0;
    float moveSpeed = 0.1f;

	// Update is called once per frame
	void FixedUpdate () {

        if (Input.GetKey(KeyCode.A))
            xVel -= moveSpeed;

        if (Input.GetKey(KeyCode.D))
            xVel += moveSpeed;

        if (transform.position.x > 8 || transform.position.x < -8)
            xVel *= -1;

        transform.Translate(xVel, 0, 0);
        xVel *= 0.5f;

	}

}