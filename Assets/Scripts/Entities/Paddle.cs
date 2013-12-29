using UnityEngine;
using System.Collections;

public class Paddle : Entity
{
    float xVel = 0;
    float moveSpeed = 0.06f;
    float halfSize = 1.5f;

    public PowerUp currentPower;
    BoxCollider2D paddleCollider;

    public Transform bnLeft;
    public Transform bnRight;
    public GameObject fireLeft;
    public GameObject fireRight;

    protected override void Start()
    {
        base.Start();
        paddleCollider = gameObject.collider2D as BoxCollider2D;
        Camera.main.GetComponent<CameraController>().lookAt = gameObject;
    }

	//Using Fixed update instead of update because of Rigid bodies
	void FixedUpdate () {

        //Apply thrust. Turn on thrusters if key is down
        if (Input.GetKey(KeyCode.A)) { 
            xVel -= moveSpeed;
            fireLeft.SetActive(true);
            fireLeft.transform.localScale = new Vector3(Random.Range(0.9f,1.1f), 1, 1);
        }
        else
        {
            fireLeft.SetActive(false);
        }

        if (Input.GetKey(KeyCode.D)) { 
            xVel += moveSpeed;
            fireRight.SetActive(true);
            fireRight.transform.localScale = new Vector3(Random.Range(0.9f, 1.1f), 1, 1);
        }
        else
        {
            fireRight.SetActive(false);
        }

        //Move and rotate paddle according to thrust
        //TODO: lock Y translation
        transform.Translate(xVel, 0, 0, Space.World);
        transform.eulerAngles = new Vector3(0, 0, xVel*5);


        xVel *= 0.8f;
        
        //Keep paddle in bounds
        //TODO: Get level bounds from Level manager
        if (transform.position.x + halfSize > 8)
            transform.Translate(-(transform.position.x + halfSize - 8), 0, 0);

        if (transform.position.x - halfSize < -8)
            transform.Translate(-(transform.position.x - halfSize + 8), 0, 0);
	}

    //Takes care of all the stretching and squashing of the paddle
    public void setWidth(float width){
        halfSize = width / 2;
        bnLeft.localPosition = new Vector3(width / 2, 0, 0);
        bnRight.localPosition = new Vector3(-width / 2, 0, 0);
        paddleCollider.size = new Vector2(width, 0.25f);
    }
}