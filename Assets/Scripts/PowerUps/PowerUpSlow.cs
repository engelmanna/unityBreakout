using UnityEngine;
using System.Collections;

public class PowerUpSlow : PowerUp
{

    GameObject ball;

    // Use this for initialization
    protected override void Start()
    {
        duration = 3;
        powType = PowerType.SLOW;
        ball = GameObject.FindGameObjectWithTag("Ball");
        base.Start();
    }

    protected override void StartPowerup()
    {
        Vector2 vel = ball.rigidbody2D.velocity;
        vel.Scale(new Vector2(0.5f, 0.5f));
        ball.rigidbody2D.velocity = vel;
    }

    protected override void EndPowerup()
    {
        Vector2 vel = ball.rigidbody2D.velocity;
        vel.Scale(new Vector2(2, 2));
        ball.rigidbody2D.velocity = vel;
        Destroy(this);
    }
}
