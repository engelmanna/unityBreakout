using UnityEngine;
using System.Collections;

public class Paddle : Entity
{
    float xVel = 0;
    float moveSpeed = 0.06f;
    public GameObject paddleCenter;
    public GameObject paddleLeft;
    public GameObject paddleRight;
    BoxCollider2D paddleCollider;

    Vector3 scVec;
    protected override void Start()
    {
        base.Start();
        invincible = true;
        scVec = new Vector3(1, 1, 1);
        transform.localScale = scVec;
        paddleCollider = gameObject.collider2D as BoxCollider2D;
        setWidth(3);
    }

	//Using Fixed update instead of update because of Rigid bodies
	void FixedUpdate () {

        if (Input.GetKey(KeyCode.A))
            xVel -= moveSpeed;

        if (Input.GetKey(KeyCode.D))
            xVel += moveSpeed;

        transform.Translate(xVel, 0, 0);
        xVel *= 0.8f;

        //Keep paddle in bounds
        if (transform.position.x+1.5f*transform.localScale.x > 8)
            transform.Translate(-(transform.position.x + 1.5f * transform.localScale.x - 8), 0, 0);

        if (transform.position.x - 1.5f*transform.localScale.x < -8)
            transform.Translate(-(transform.position.x - 1.5f * transform.localScale.x + 8), 0, 0);
	}

    public void setWidth(float width){
        paddleLeft.transform.localPosition = new Vector3(width * 0.5f, 0, 0);
        paddleRight.transform.localPosition = new Vector3(-width * 0.5f, 0, 0);
        paddleCenter.transform.localScale = new Vector3(width - 0.6f, 1, 1);
        paddleCollider.size = new Vector2(width, 1);

    }
    


}