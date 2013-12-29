using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public enum BallState{ Dead, Born, Alive };
public class Ball : Entity
{
    

    public float maxSpeed = 20;
    public BallState state;
    public GameObject parent;
    protected override void Start()
    {
        base.Start();
        state = BallState.Born;
        attack = 1;
        health = 10;
    }
    public void Launch()
    {
        state = BallState.Alive;
        gameObject.rigidbody2D.AddForce(new Vector2(400, 800));
        gameObject.GetComponent<TrailRenderer>().enabled = true;
    }
    void FixedUpdate()
    {
        switch (state)
        {
            case BallState.Born:
                gameObject.GetComponent<TrailRenderer>().enabled = false;
                transform.position = new Vector3(parent.transform.position.x, parent.transform.position.y + 1, 0);
                gameObject.rigidbody2D.velocity = Vector2.zero;
                break;
            case BallState.Alive:
                break;
            case BallState.Dead:
                
                gameObject.rigidbody2D.velocity = Vector2.zero;
                Destroy(gameObject);
                break;
            default:
                break;
        }

        //Limit speed
        //if (gameObject.rigidbody2D.velocity != Vector2.zero)
            //gameObject.rigidbody2D.velocity *= (maxSpeed / gameObject.rigidbody2D.velocity.magnitude);   
    }

    IEnumerator Die()
    {
        float i = 0.0f;
        while (i < 1)
        {
            i += 0.05f;
            yield return false;
        }
        
        state = BallState.Born;
    }

    protected override void OnCollisionEnter2D(Collision2D coll)
    {
        base.OnCollisionEnter2D(coll);

        if (coll.gameObject.tag == "Block")
        {
            maxSpeed = 12 + coll.gameObject.GetComponent<Block>().Health * 3;
        }

        if (coll.gameObject.tag == "KillZone")
        {
            LevelManager.Instance.restartBall();
        }
        
    }

}