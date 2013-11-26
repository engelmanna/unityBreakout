using UnityEngine;
using System.Collections;

public class CollideableRectangle : CollideableShape {

    public CollideableRectangle(Vector2[] pArray)
        : base(pArray)
    {
        type = "rectangle";
    }
}
