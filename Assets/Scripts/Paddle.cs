using UnityEngine;
using System.Collections;

public class Paddle : CollideableMover {

	// Use this for initialization
	void Start () {
        rect = new Rect(transform.position.x - 1.5f, transform.position.y - 0.5f, 3, 1);
	}
	
	// Update is called once per frame
	void Update () {

        if (Input.GetKey(KeyCode.A))
        {
            velocity.x = -0.3f;
        }

        if (Input.GetKey(KeyCode.D))
        {
            velocity.x = 0.3f;
        }

        translateTo(velocity);
        velocity.x *= 0.6f;
        
	}

    public override int collide(Vector2 bounceAmt)
    {
        bounceAmt.y = 0;
        translateTo(bounceAmt);
        return 0;
    }
}