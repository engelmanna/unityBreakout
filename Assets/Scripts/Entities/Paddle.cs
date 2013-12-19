using UnityEngine;
using System.Collections;

public class Paddle : Entity
{
    float xVel = 0;
    float moveSpeed = 0.06f;

    Vector3 scVec;
    protected override void Start()
    {
        base.Start();
        invincible = true;
        scVec = new Vector3(1, 1, 1);
        transform.localScale = scVec;
    }

	//Using Fixed update instead of update because of Rigid bodies
	void FixedUpdate () {

        if (Input.GetKey(KeyCode.A))
            xVel -= moveSpeed;

        if (Input.GetKey(KeyCode.D))
            xVel += moveSpeed;

        transform.Translate(xVel, 0, 0);
        xVel *= 0.8f;

        //Keep paddle in bounds
        if (transform.position.x+1.5f*transform.localScale.x > 8)
            transform.Translate(-(transform.position.x + 1.5f * transform.localScale.x - 8), 0, 0);

        if (transform.position.x - 1.5f*transform.localScale.x < -8)
            transform.Translate(-(transform.position.x - 1.5f * transform.localScale.x + 8), 0, 0);
	}

    


}