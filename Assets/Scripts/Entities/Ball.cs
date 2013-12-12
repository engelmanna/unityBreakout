using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Ball : Entity
{

    public float maxSpeed = 20;
    protected override void Start()
    {
        base.Start();
        gameObject.rigidbody2D.AddForce(new Vector2(800, 800));
        attack = 1;
        health = 10;
    }

    void FixedUpdate()
    {
        if (gameObject.rigidbody2D.velocity != Vector2.zero)
        {
            gameObject.rigidbody2D.velocity *= (maxSpeed / gameObject.rigidbody2D.velocity.magnitude);
        }
    }

    protected override void OnCollisionEnter2D(Collision2D coll)
    {
        base.OnCollisionEnter2D(coll);
        if (coll.gameObject.tag == "Paddle")
        {
            float offset = coll.transform.position.x - transform.position.x;
            gameObject.rigidbody2D.AddForce(new Vector2(offset * 150, 0));
        }

        if (coll.gameObject.tag == "Block")
        {
            maxSpeed = 12 + coll.gameObject.GetComponent<Block>().Health * 3;
        }
        
    }

}