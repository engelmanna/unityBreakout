using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class LevelManager : MonoBehaviour
{
    static LevelManager instance;

    public int lives;
    public GameObject ball;
    public GameObject paddle;

    public Ball ballScript;
    public Paddle paddleScript;
    public Vector2 startPos;
    public Vector2 levelSize;

    PowerUp CurrentPower;
    List<PowerUp> powerupList = new List<PowerUp>();

    public static LevelManager Instance
    {
        get
        {
            if (instance == null)
            {
                instance = FindObjectOfType(typeof(LevelManager)) as LevelManager;
                if (instance == null)
                {
                    GameObject obj = new GameObject();
                    instance = obj.AddComponent(typeof(LevelManager)) as LevelManager;
                }
            }
            return instance;
        }
    }

    void Start()
    {
        GameObject paddleObj = Instantiate(paddle,startPos,Quaternion.identity) as GameObject;
        paddleScript = paddleObj.GetComponent<Paddle>();
        
        GameObject ballObj = Instantiate(ball) as GameObject;
        ballScript = ballObj.GetComponent<Ball>();

        ballScript.parent = paddleObj;

    }

    void Update()
    {
        if (Input.GetKey(KeyCode.Space) && ballScript.state == BallState.Born)
        {
            ballScript.Launch();
        }
    }
    public void restartBall()
    {
        lives--;
        if (lives < 0)
        {
            Application.LoadLevel(0);
        }
        GameObject[] items = GameObject.FindGameObjectsWithTag("Item");
        for (int i = 0; i < items.Length; i++)
        {
            Destroy(items[i]);
        }

        GameObject ballObj = Instantiate(ball,new Vector3(paddleScript.transform.position.x,paddleScript.transform.position.y+1,0),Quaternion.identity) as GameObject;
        ballScript = ballObj.GetComponent<Ball>();
        ballScript.parent = paddleScript.gameObject;

        foreach (PowerUp pow in powerupList)
        {
            pow.duration = 0;
        }
    }

    public void AddPowerup(PowerType pt){

        foreach (PowerUp pow in powerupList)
        {
            if (pow.powType == pt)
            {
                pow.Reset();
                return;
            }
        }

        switch (pt)
        {
            case PowerType.EXTEND:
                CurrentPower = gameObject.AddComponent<PowerUpExtend>();
                break;
            case PowerType.SLOW:
                CurrentPower = gameObject.AddComponent<PowerUpSlow>();
                break;
            case PowerType.BARRIER:
                CurrentPower = gameObject.AddComponent<PowerUpBarrier>();
                break;
            default: break;
        }        
    }


}