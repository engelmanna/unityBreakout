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

        gameObject.GetComponent<TrailRenderer>().enabled = false;
        state = BallState.Born;
        StartCoroutine("Birth");
    }

    public void Launch()
    {
        state = BallState.Alive;
        gameObject.GetComponent<TrailRenderer>().enabled = true;
        Vector2 launchForce = new Vector2(transform.position.x * 0.1f, 1);
        _rigidBody2D.AddForce(launchForce.normalized * 700);
    }

    void FixedUpdate()
    {
        switch (state)
        {
            case BallState.Born:
                transform.position = new Vector3(parent.transform.position.x, parent.transform.position.y + 1, 0);
                break;
            case BallState.Alive:
                if (Mathf.Abs(_rigidBody2D.velocity.y) < 5)
                    _rigidBody2D.AddForce(new Vector2(0, _rigidBody2D.velocity.y*1.3f));
                if (Mathf.Abs(_rigidBody2D.velocity.x) < 5)
                    _rigidBody2D.AddForce(new Vector2(_rigidBody2D.velocity.x * 1.3f, 0));
                break;
            case BallState.Dead: break;
            default: break;
        }  
    }

    IEnumerator Die()
    {
        state = BallState.Dead;
        _rigidBody2D.velocity = Vector2.zero;
        float i = 0.0f;
        while (i < 1)
        {
            i += 0.05f;
            yield return false;
        }
        LevelManager.Instance.restartBall();
        Destroy(gameObject);

        
    }

    IEnumerator Birth()
    {
        float i = 0.0f;
        while (i < 0.5f)
        {
            i += 0.05f;
            transform.localScale=new Vector3(i, i, i);
            yield return false;
        }
        transform.localScale = new Vector3(0.5f, 0.5f, 0.5f);


    }

    protected override void OnCollisionEnter2D(Collision2D coll)
    {
        base.OnCollisionEnter2D(coll);

        _rigidBody2D.AddForce(_rigidBody2D.velocity.normalized * 10);

        if (coll.gameObject.tag == "KillZone")
        {
            if (coll.gameObject.GetComponent<KillZone>().enabled)
            {
                StartCoroutine("Die");
            }
            else
            {
                coll.gameObject.GetComponent<KillZone>().enabled = true;
                LevelManager.Instance.CurrentPower.duration = 0;
            }
        }
              
    }

}