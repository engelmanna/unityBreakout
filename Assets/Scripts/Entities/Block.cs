using UnityEngine;
using System.Collections;

public class Block : Entity {

    Color cColor = Color.white;
    public int startHealth;

    Material _material;
    public GameObject item;
    public GameObject particle;

    protected override void Start()
    {
        base.Start();

        _material = gameObject.renderer.material;

        health = startHealth;
        UpdateColor();
    }

    void FixedUpdate()
    {
        _material.SetFloat("_Pan", Time.timeSinceLevelLoad * 0.1f);
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
            particle.particleSystem.renderer.material = _material;
            _material.SetColor("_Emission", cColor);
            
            Instantiate(particle,transform.position,Quaternion.identity);
            GameObject.Destroy(gameObject);
            
        }
        UpdateColor();
        StartCoroutine("FlashBlock"); 
    }

    private void UpdateColor()
    {
        switch (health)
        {
            case (5):
                cColor = Color.magenta;
                break;
            case (4):
                cColor = Color.blue;
                break;
            case (3):
                cColor = Color.green;
                break;
            case (2):
                cColor = Color.yellow;
                break;
            case (1):
                cColor = Color.red;
                break;
            case (0):
                cColor = Color.red;
                break;
            default:
                cColor = Color.magenta;
                break;
        }
        _material.SetColor("_Emission", cColor);
    }

    IEnumerator FlashBlock()
    {
        for (float i = 1; i >= 0; i -= 0.2f )
        {
            _material.SetFloat("_Flash", i);
            yield return false;
        }
    }
}
