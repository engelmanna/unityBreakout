using UnityEngine;
using System.Collections;

public class PowerUpSlow : PowerUp
{

    GameObject ball;

    // Use this for initialization
    protected override void Start()
    {
        duration = 3;
        PowType = PowerType.SLOW;
        ball = GameObject.FindGameObjectWithTag("Ball");
        uiMat = GameObject.Find("ui_slow").renderer.material;
        base.Start();
    }

    protected override void StartPowerup()
    {
        uiMat.SetColor("_EmisColor", Color.white);
        Vector2 vel = ball.rigidbody2D.velocity;
        vel.Scale(new Vector2(0.5f, 0.5f));
        ball.rigidbody2D.velocity = vel;
    }

    protected override void EndPowerup()
    {
        uiMat.SetColor("_EmisColor", Color.black);
        Vector2 vel = ball.rigidbody2D.velocity;
        vel.Scale(new Vector2(2, 2));
        ball.rigidbody2D.velocity = vel;
        Destroy(this);
    }
}
