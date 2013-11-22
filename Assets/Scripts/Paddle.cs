using UnityEngine;
using System.Collections;

public class Paddle : CollideableMover {

	// Use this for initialization
	void Start () {
        rect = new Rect(transform.position.x - 1.5f, transform.position.y - 0.5f, 3, 1);
	}
	
	// Update is called once per frame
	void Update () {
        if (Mathf.Abs(transform.position.y)>0.01f)
        {
            translateTo(new Vector2(0, (-7 - transform.position.y)*0.1f));
            if(Mathf.Abs(transform.position.y)<0.01f)
            {
                moveTo(new Vector2(transform.position.x, -7));
            }
        }
        if (Input.GetKey(KeyCode.A) && transform.position.x > -6.5)
        {
            translateTo(new Vector2(-0.3f, 0));
        }

        if (Input.GetKey(KeyCode.D) && transform.position.x < 6.5)
        {
            translateTo(new Vector2(0.3f, 0));
        }
	}

    public override int collide()
    {
        translateTo(new Vector2(0, -0.2f));
        return 0;
    }
}
