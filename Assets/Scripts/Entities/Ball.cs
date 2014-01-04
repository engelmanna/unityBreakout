using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public enum BallState{ Dead, Born, Alive };
public class Ball : Entity
{
    BallState state;
    Rigidbody2D _rigidBody2D;

    [HideInInspector]
    public GameObject parent;

    protected override void Start()
    {
        base.Start();
        state = BallState.Born;
        attack = 1;
        health = 10;
        _rigidBody2D = gameObject.rigidbody2D;

        gameObject.GetComponent<TrailRenderer>().enabled = false;
        StartCoroutine("Birth");
    }

    public void Launch()
    {
        if (state == BallState.Born)
        {
            state = BallState.Alive;
            gameObject.GetComponent<TrailRenderer>().enabled = true;
            Vector2 launchForce = new Vector2(transform.position.x * 0.1f, 1);
            _rigidBody2D.AddForce(launchForce.normalized * 700);
        }   
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
        Camera.main.GetComponent<CameraController>().Shake();

        renderer.enabled = false;
        gameObject.collider2D.enabled = false;
        _rigidBody2D.Sleep();
        state = BallState.Dead;
        
        particleSystem.Play();

        while(!particleSystem.isStopped)
        {
            yield return 0;
        }
        
        LevelManager.Instance.restartBall();
        Destroy(gameObject);   
    }

    IEnumerator Birth()
    {
        float i = 0;
        while (i < 1)
        {
            i += Time.deltaTime * 3;
            transform.localScale=new Vector3(i, i, i);
            yield return 0;
        }
        transform.localScale = Vector3.one;


    }

    protected override void OnCollisionEnter2D(Collision2D coll)
    {
        base.OnCollisionEnter2D(coll);

        _rigidBody2D.AddForce(_rigidBody2D.velocity.normalized * 10);

        if (health <= 0 && !invincible)
            StartCoroutine("Die");       
    }

}