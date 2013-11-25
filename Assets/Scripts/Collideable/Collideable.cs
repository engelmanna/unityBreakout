using UnityEngine;
using System.Collections;

public class Collideable: MonoBehaviour {

    protected Rect rect;
    public Vector2 size;

    void Start()
    {
        rect = new Rect(transform.position.x - size.x / 2, transform.position.y - size.y / 2, size.x, size.y);
    }

    public Rect Rectangle {
        get{ return rect; }
        set{ rect = value; }
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

    void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.red;
        Gizmos.DrawWireCube(transform.position, new Vector3(size.x, size.y));
    }
}
