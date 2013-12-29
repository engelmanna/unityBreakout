using UnityEngine;
using System.Collections;

public class BallPowerUp : MonoBehaviour
{

    // Use this for initialization
    void Start()
    {
    }

    // Update is called once per frame
    void Update()
    {
    }

    void OnCollisionEnter2D(Collision2D coll)
    {
        if (coll.gameObject.tag == "Block")
        {
            Vector2 move = coll.relativeVelocity;
            move.Scale(new Vector2(2,2));
            gameObject.rigidbody2D.velocity = move;
            Destroy(coll.gameObject);
        }

    }

}
