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

    public override bool onHit(int atkValue)
    {
        if (health >= 0)
        {
            health -= atkValue;
            updateColor();
        }
            
        if (health == 0)
        {
            CollideableManager.Instance.removeBody(gameObject);
            StartCoroutine("death");
            return true;
        }

        return false;
    }

    IEnumerator death()
    {
        while (transform.localScale.x > 0)
        {
            coll.resize(transform.localScale.x-0.1f);
            yield return Time.deltaTime;
        }
        GameObject.Destroy(gameObject); 
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
