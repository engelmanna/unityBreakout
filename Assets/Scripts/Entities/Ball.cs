using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Ball : Entity
{
    protected override void Start()
    {
        base.Start();
        coll.resize(0.5f);
        attack = 1;
        health = 10;
    }

    public override bool onHit(int atkValue)
    {
        if (health >= 0)
        {
            health -= atkValue;
            if (health < 0)
                health = 0;
        }
            
        if (health == 0)
        {
            LevelManager.Instance.restartBall();
            CollideableManager.Instance.removeBody(coll);
            StartCoroutine("death");
            return true;
        }

        return false;
    }

    IEnumerator death()
    {
        while (transform.localScale.x > 0)
        {
            coll.resize(transform.localScale.x - 0.1f);
            yield return Time.deltaTime;
        }
        GameObject.Destroy(gameObject);
    }

}