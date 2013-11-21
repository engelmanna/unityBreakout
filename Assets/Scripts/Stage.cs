using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Stage : MonoBehaviour {

    public GameObject prefab;
    public GameObject paddle;

    private Ball ballScript;

    private GameObject ball;

    private List<GameObject> blocks;
    private List<GameObject> deadBlocks;

	// Use this for initialization
	void Start () {

        ball = GameObject.Instantiate(prefab, new Vector3(0, -3, 0), Quaternion.identity) as GameObject;
        ballScript = ball.GetComponent<Ball>();

        blocks = new List<GameObject>(GameObject.FindGameObjectsWithTag("Block"));
        deadBlocks = new List<GameObject>();
	}
	
	// Update is called once per frame
	void Update () {

        Paddle pds = paddle.GetComponent<Paddle>();
        
        foreach (GameObject o in blocks)
        {
            Collideable bs = o.GetComponent<Collideable>();

            if (ballScript.bounce(bs.Rectangle, false))
            {
                switch (bs.collide()) 
                {
                    case 1:
                        deadBlocks.Add(o);
                        break;
                    case -1:
                        ballScript.reset();
                        break;
                    default:
                        break;
                }
                
            }
        }

        foreach (GameObject db in deadBlocks)
        {
            blocks.Remove(db);
        }
        deadBlocks.Clear();

        ballScript.bounce(pds.Rectangle, true);

	}
}
