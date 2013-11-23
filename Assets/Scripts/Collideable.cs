using UnityEngine;
using System.Collections;

public abstract class Collideable : MonoBehaviour {

    protected Rect rect;

    public Rect Rectangle {
        get{ return rect; }
        set{ rect = value; }
    }

    void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.red;
        Gizmos.DrawWireCube(transform.position, new Vector3(rect.width, rect.height, 0));
    }

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

    public abstract int collide(Vector2 bounceAmt);
}
