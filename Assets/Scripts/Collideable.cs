using UnityEngine;
using System.Collections;

public abstract class Collideable : MonoBehaviour {

    protected Rect rect;
    public Rect Rectangle {
        get
        {
            return rect;
        }
        set
        {
            rect = value;
        }
    }

    public abstract int collide();
}
