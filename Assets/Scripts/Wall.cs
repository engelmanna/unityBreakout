using UnityEngine;
using System.Collections;

public class Wall : Collideable {

    public Rect wallRect;
    // Use this for initialization
    void Start()
    {
        rect = wallRect;
    }

    void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.blue;
        Gizmos.DrawWireCube(new Vector3(wallRect.center.x, wallRect.center.y), new Vector3(wallRect.width, wallRect.height, 1));
    }
    

    public override int collide()
    {
        return 0;
    }
}
