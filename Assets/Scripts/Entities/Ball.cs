using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public enum BallState{ Dead, Born, Alive };
public class Ball : Entity
{
    [HideInInspector]
    public BallState state;
    [HideInInspector]
    public GameObject parent;

    Rigidbody2D _rigidBody2D;

    protected override void Start()
    {
        base.Start();
        state = BallState.Born;
        attack = 1;
        health = 10;
        _rigidBody2D = gameObject.rigidbody2D;
    }

    public void Launch()
    {
        state = BallState.Alive;
        Vector2 launchForce = new Vector2(transform.position.x * 0.1f, 1);
        _rigidBody2D.AddForce(launchForce.normalized * 700);
        gameObject.GetComponent<TrailRenderer>().enabled = true;
    }

    void FixedUpdate()
    {
        switch (state)
        {
            case BallState.Born:
                gameObject.GetComponent<TrailRenderer>().enabled = false;
                transform.position = new Vector3(parent.transform.position.x, parent.transform.position.y + 1, 0);
                _rigidBody2D.velocity = Vector2.zero;
                break;
            case BallState.Alive:
                if (Mathf.Abs(_rigidBody2D.velocity.y) < 5)
                {
                    _rigidBody2D.AddForce(new Vector2(0, 2));
                }
                if (Mathf.Abs(_rigidBody2D.velocity.x) < 5)
                {
                    _rigidBody2D.AddForce(new Vector2(2, 0));
                }
                break;
            case BallState.Dead:
                _rigidBody2D.velocity = Vector2.zero;
                Destroy(gameObject);
                break;
            default:
                break;
        }  
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

        _rigidBody2D.AddForce(_rigidBody2D.velocity.normalized * 10);
        if (coll.gameObject.tag == "KillZone")
        {
            LevelManager.Instance.restartBall();
        }
        
    }

}