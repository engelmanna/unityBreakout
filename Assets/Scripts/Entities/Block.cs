using UnityEngine;
using System.Collections;

public class Block : Entity {

    Color cColor = Color.white;
    public int startHealth;
    public GameObject item;
    public GameObject particle;

    protected override void Start()
    {
        base.Start();
        health = startHealth;
        updateColor();
    }

    protected override void OnCollisionEnter2D(Collision2D coll)
    {
        base.OnCollisionEnter2D(coll);
        
        if (health <= 0 && !invincible)
        {
            if (item != null)
            {
                GameObject itm = Instantiate(item) as GameObject;
                itm.transform.position = transform.position;
            }
            particle.particleSystem.renderer.material = gameObject.renderer.material;
            particle.renderer.material.SetColor("_Emission", Color.blue);
            
            Instantiate(particle,transform.position,Quaternion.identity);
            
            GameObject.Destroy(gameObject);
            
        }

        updateColor();
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
