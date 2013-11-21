using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Ball : CollideableMover{

    private Vector2 velocity;

    // Use this for initialization
    void Start()
    {
        rect = new Rect(transform.position.x - 0.5f, transform.position.y + 0.5f, 1, 1);
        velocity = new Vector2(10f, 10f);
    }

    // Update is called once per frame
    void Update()
    {
        translateTo(new Vector2(velocity.x * Time.deltaTime, velocity.y * Time.deltaTime));
    }

    public bool bounce(Rect blk, bool paddle)
    {
        if (rect.Overlaps(blk))
        {
            translateTo(new Vector2(-velocity.x * Time.deltaTime, -velocity.y * Time.deltaTime));

            float vX = transform.position.x - blk.center.x;
            float vY = transform.position.y - blk.center.y;

            if (Mathf.Abs(vX) > blk.width/2 + 0.5)
            {
                velocity.x *= -1;
            }
            if (Mathf.Abs(vY) > blk.height/2 + 0.5)
            {
                velocity.y *= -1;
                if (paddle)
                {
                    velocity.x += vX * 3;
                    velocity.Normalize();
                    velocity.Scale(new Vector2(15, 15));
                }
            }
            return true;
        }
        return false;
    }

    public void reset(){
        velocity = new Vector2(0,10);
        moveTo(new Vector2(0,-5));
    }
}
