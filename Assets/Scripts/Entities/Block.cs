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
        UpdateColor();
        StartCoroutine("ScaleUp");
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

        UpdateColor();
    }

    private void UpdateColor()
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

    IEnumerator ScaleUp()
    {
        float i = 0;
        Vector3 tempScale = Vector3.zero;
        float test = ((transform.position.x + LevelManager.Instance.levelSize.y/2) / LevelManager.Instance.levelSize.y) * 0.05f + 0.05f;
        Vector3 growScale = new Vector3(test,test,test);
        while (tempScale.x < 1)
        {
            transform.localScale = tempScale;
            tempScale += growScale;

            yield return false;
        }
        transform.localScale = Vector3.one;
    }
}
