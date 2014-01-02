using UnityEngine;
using System.Collections;

public class Paddle : Entity
{
    float xVel = 0;
    float moveSpeed = 0.06f;
    float halfSize = 1.5f;

    

    BoxCollider2D paddleCollider;
    Transform bnLeft;
    Transform bnRight;
    GameObject fireLeft;
    GameObject fireRight;

    protected override void Start()
    {
        base.Start();

        Camera.main.GetComponent<CameraController>().lookAt = gameObject;

        paddleCollider =    gameObject.collider2D as BoxCollider2D;
        bnLeft =            transform.Find("paddle_bn_root/paddle_bn_left");
        bnRight =           transform.Find("paddle_bn_root/paddle_bn_right");
        fireLeft =          GameObject.Find("rocket_left");
        fireRight =         GameObject.Find("rocket_right");
    }

	//Using Fixed update instead of update because of Rigid bodies
	void FixedUpdate () {

        //Apply thrust. Turn on thrusters if key is down
        if (Input.GetKey(KeyCode.A)) { 
            xVel -= moveSpeed;
            fireLeft.SetActive(true);
        }
        else
        {
            fireLeft.SetActive(false);
        }

        if (Input.GetKey(KeyCode.D)) { 
            xVel += moveSpeed;
            fireRight.SetActive(true);
        }
        else
        {
            fireRight.SetActive(false);
        }

        //Move and rotate paddle according to thrust
        //TODO: lock Y translation
        transform.Translate(xVel, 0, 0, Space.World);
        transform.eulerAngles = new Vector3(0, 0, xVel*5);
        
        //Keep paddle in bounds
        //TODO: Get level bounds from Level manager
        if (transform.position.x + halfSize > 8)
            transform.Translate(-(transform.position.x + halfSize + LevelManager.Instance.levelSize.x), 0, 0);

        if (transform.position.x - halfSize < -8)
            transform.Translate(-(transform.position.x - halfSize + LevelManager.Instance.levelSize.y), 0, 0);


        transform.position = new Vector3(transform.position.x, LevelManager.Instance.startPos.y);

        //Decay sideways velocity
        xVel *= 0.8f;

	}

    //Takes care of all the stretching and squashing of the paddle
    public void SetWidth(float width){
        halfSize = width / 2;
        bnLeft.localPosition = new Vector3(halfSize, 0, 0);
        bnRight.localPosition = new Vector3(-halfSize, 0, 0);
        paddleCollider.size = new Vector2(width, 0.25f);
    }
}