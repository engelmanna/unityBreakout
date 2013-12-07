using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Ball : Entity
{

    public float maxSpeed = 20;
    protected override void Start()
    {
        base.Start();
        coll.AddForce(new Vector2(0, 800));
        attack = 1;
        health = 10;
    }

    void FixedUpdate()
    {
        if (coll.velocity != Vector2.zero)
        {
            coll.velocity *= (maxSpeed / coll.velocity.magnitude);
        }
    }
    void OnCollisionEnter2D(Collision2D collision)
    {
        if (collision.gameObject.tag == "Paddle")
        {
            float offset = collision.transform.position.x - transform.position.x;
            coll.AddForce(new Vector2(offset * 150, 0));
        }
        
    }

}