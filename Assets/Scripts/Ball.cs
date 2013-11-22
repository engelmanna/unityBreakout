using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Ball : CollideableMover{

    public float size;

    // Use this for initialization
    void Start()
    {
        rect = new Rect(transform.position.x - 0.5f, transform.position.y + 0.5f, 1, 1);
        resize(0.5f);
        velocity = new Vector2(10f, 10f);
    }

    // Update is called once per frame
    void Update()
    {
        translateTo(new Vector2(velocity.x * Time.deltaTime, velocity.y * Time.deltaTime));
    }


    public void reset(){
        velocity = new Vector2(0,10);
        moveTo(new Vector2(0,-5));
    }

    public override int collide()
    {
        return 0;
    }
}
