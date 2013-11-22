using UnityEngine;
using System.Collections;

public abstract class CollideableMover : Collideable
{

    protected void moveTo(Vector2 pos)
    {
        transform.position = new Vector3(pos.x, pos.y);
        rect.center = new Vector2(transform.position.x, transform.position.y);
    }

    protected void translateTo(Vector2 pos)
    {
        transform.position += new Vector3(pos.x, pos.y);
        rect.center = new Vector2(transform.position.x, transform.position.y);
    }

    public override int collide()
    {
        return 0;
    }
}