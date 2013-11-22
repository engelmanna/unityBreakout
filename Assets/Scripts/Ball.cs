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
            //Debug.DrawLine(new Vector3(rect.xMin, rect.yMin), new Vector3(rect.xMax, rect.yMin), Color.red, 1, false);
            //Debug.DrawLine(new Vector3(rect.xMax, rect.yMin), new Vector3(rect.xMax, rect.yMax), Color.red, 1, false);
            //Debug.DrawLine(new Vector3(rect.xMax, rect.yMax), new Vector3(rect.xMin, rect.yMax), Color.red, 1, false);
            //Debug.DrawLine(new Vector3(rect.xMin, rect.yMax), new Vector3(rect.xMin, rect.yMin), Color.red, 1, false);

            Vector2 mtd =   new Vector2();
            float left =    rect.xMin - blk.xMax;
            float right =   rect.xMax - blk.xMin;
            float top =     rect.yMin - blk.yMax;
            float bottom =  rect.yMax - blk.yMin;

            if (Mathf.Abs(left) < right)
                mtd.x = -left;
            else
                mtd.x = -right;

            if (Mathf.Abs(top) < bottom)
                mtd.y = -top;
            else
                mtd.y = -bottom;

            if (Mathf.Abs(mtd.x) < Mathf.Abs(mtd.y))
            {
                mtd.y = 0;
                velocity.x = -velocity.x;
            }
            else
            {
                velocity.y = -velocity.y;
                if (paddle)
                {
                    velocity.x += mtd.x * 5;
                    velocity.Normalize();
                    velocity.Scale(new Vector2(15, 15));
                }
                mtd.x = 0;
            }
            translateTo(mtd);

            return true;
        }
        return false;
    }

    public void reset(){
        velocity = new Vector2(0,10);
        moveTo(new Vector2(0,-5));
    }
}
