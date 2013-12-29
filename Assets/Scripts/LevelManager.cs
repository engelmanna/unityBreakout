using UnityEngine;
using System.Collections;

public class LevelManager : MonoBehaviour
{
    static LevelManager instance;

    public int lives;
    public GameObject ball;
    public GameObject paddle;
    Ball ballScript;
    Paddle paddleScript;

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
        GameObject ballObj = Instantiate(ball) as GameObject;
        ballScript = ballObj.GetComponent<Ball>();

        GameObject paddleObj = Instantiate(paddle,new Vector3(0,-7,0),Quaternion.identity) as GameObject;
        paddleScript = paddleObj.GetComponent<Paddle>();

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
            ballScript.state = BallState.Dead;

            GameObject ballObj = Instantiate(ball,new Vector3(paddleScript.transform.position.x,paddleScript.transform.position.y+1,0),Quaternion.identity) as GameObject;
            ballScript = ballObj.GetComponent<Ball>();
            ballScript.parent = paddleScript.gameObject;
        
        if(paddleScript.currentPower!=null)
            paddleScript.currentPower.duration = 0;
    }


}
