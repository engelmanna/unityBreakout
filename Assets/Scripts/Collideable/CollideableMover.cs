using UnityEngine;
using System.Collections;

public class CollideableMover : Collideable
{
    public Vector2 velocity;
    public bool lockX;
    public bool lockY;

    void Update()
    {
        transform.position += new Vector3(velocity.x * Time.deltaTime, velocity.y * Time.deltaTime);
        rect.center = new Vector2(transform.position.x, transform.position.y);
    }

    public void moveTo(Vector2 pos)
    {
        transform.position = new Vector3(pos.x, pos.y);
        rect.center = new Vector2(pos.x,pos.y);
    }

    public void translate(Vector2 pos)
    {
        transform.position += new Vector3(pos.x,pos.y);
        rect.center = new Vector2(transform.position.x, transform.position.y);
    }

    public Vector2 bounce(Rect blk)
    {

        //Debug.DrawLine(new Vector3(rect.xMin, rect.yMin), new Vector3(rect.xMax, rect.yMin), Color.red, 1, false);
        //Debug.DrawLine(new Vector3(rect.xMax, rect.yMin), new Vector3(rect.xMax, rect.yMax), Color.red, 1, false);
        //Debug.DrawLine(new Vector3(rect.xMax, rect.yMax), new Vector3(rect.xMin, rect.yMax), Color.red, 1, false);
        //Debug.DrawLine(new Vector3(rect.xMin, rect.yMax), new Vector3(rect.xMin, rect.yMin), Color.red, 1, false);

        Vector2 mtd = new Vector2();
        float left = rect.xMin - blk.xMax;
        float right = rect.xMax - blk.xMin;
        float top = rect.yMin - blk.yMax;
        float bottom = rect.yMax - blk.yMin;

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
            mtd.x = 0;
        }

        if (lockX)
        {
            mtd.x = 0;
        }
        if (lockY)
        {
            mtd.y = 0;
        }

        translate(mtd);
        return mtd;
    }
}