using UnityEngine;
using System.Collections;

public class Block : Entity {

    Color cColor = Color.white;
    public int startHealth;
    protected override void Start()
    {
        base.Start();
        health = startHealth;
        updateColor();
        
    }

    void OnCollisionEnter2D(Collision2D coll)
    {
        
        if (coll.gameObject.tag == "Ball")
        {
            coll.gameObject.GetComponent<Ball>().maxSpeed = 12 + health*3;
            if (health >= 0)
            {
                health -= 1;
                updateColor();
            }

            if (health == 0)
            {
                GameObject.Destroy(gameObject);
            }
        }
    }


    private void updateColor()
    {
        switch (health)
        {
            case (5):
                cColor = Color.red;
                break;
            case (4):
                cColor = Color.yellow;
                break;
            case (3):
                cColor = Color.green;
                break;
            case (2):
                cColor = Color.cyan;
                break;
            case (1):
                cColor = Color.blue;
                break;
            case (0):
                cColor = Color.white;
                break;
            default:
                cColor = Color.red;
                break;
        }
        gameObject.renderer.material.SetColor("_Emission", cColor);
    }
}
