using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class CollideableShape
{

    public Vector2[] points;
    public CollideableShape(Vector2[] pArray)
    {
        points = pArray;
    }

    public void translate(Vector2 pos){
        for (int i = 0; i < points.Length; i++)
        {
            points[i] += pos;
        }
    }

    public void scale(Vector2 scale,Vector2 center)
    {
        for (int i = 0; i < points.Length; i++)
        {
            Vector2 cPoint = points[i]-center;
            cPoint.Scale(scale);
            points[i] += center;
        }
    }

    public void rotate(float amount,Vector2 center)
    {
        for (int i = 0; i < points.Length; i++)
        {
            Vector2 cPoint -=center;
            Vector2 nPoint = new Vector2(cPoint*sin)
        }
    }


}
