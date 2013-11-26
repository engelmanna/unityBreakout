using UnityEngine;
using System.Collections;

public class Collideable: MonoBehaviour {

    //Members
    protected Rect rect;
    protected Vector2 velocity;

    public Vector2 size;
    public bool isStatic;
    public bool lockX;
    public bool lockY;
    public float drag;
    
    //Member accessors
    public Rect Rectangle {
        get{ return rect; }
        set{ rect = value; }
    }

    public Vector2 Velocity
    {
        get { return velocity; }
    }

    public void setVelocity(float x, float y)
    {
        setVelocity(new Vector2(x, y));
    }

    public void setVelocity(Vector2 vel)
    {
        if (lockX)
            vel.x = 0;
        if (lockY)
            vel.y = 0;
        if (isStatic)
            vel = Vector2.zero;

        velocity = vel;
    }

    //Unity Methods
    void Start()
    {
        rect = new Rect(transform.position.x - size.x / 2, transform.position.y - size.y / 2, size.x, size.y);
        setVelocity(10, 10);
    }

    void Update()
    {
        transform.position += new Vector3(velocity.x * Time.deltaTime, velocity.y * Time.deltaTime);
        rect.center = new Vector2(transform.position.x, transform.position.y);
        velocity.x *= 1-drag;
        velocity.y *= 1-drag;
    }

    void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.red;
        Gizmos.DrawWireCube(transform.position, new Vector3(size.x, size.y));
    }

    //Scale Functions (scale both object and collision rect)
    public void resize(float scale)
    {
        resize(new Vector3(scale, scale, scale));
    }

    public void resize(Vector3 scale)
    {
        transform.localScale = scale;

        float xMin = (rect.xMin - rect.center.x) * scale.x + rect.center.x;
        float xMax = (rect.xMax - rect.center.x) * scale.x + rect.center.x;
        float yMin = (rect.yMin - rect.center.y) * scale.y + rect.center.y;
        float yMax = (rect.yMax - rect.center.y) * scale.y + rect.center.y;

        rect = Rect.MinMaxRect(xMin, yMin, xMax, yMax);
    }


    public Vector2 bounce(Rect blk)
    {
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

        transform.Translate(mtd.x, mtd.y, 0);
        rect.center = new Vector2(transform.position.x, transform.position.y);

        return mtd;
    }
}
