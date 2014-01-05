using UnityEngine;
using System.Collections;

public class Block : Entity {

    Color cColor = Color.white;
    public int startHealth;

    public GameObject item;
    Mesh msh;

    protected override void Start()
    {
        base.Start();

        msh = GetComponent<MeshFilter>().mesh;
        health = startHealth;
        UpdateColor();
    }

    protected override void OnCollisionEnter2D(Collision2D coll)
    {
        base.OnCollisionEnter2D(coll);
      
        if (health <= 0 && !invincible)
        {
            if (item != null)
            {
                LevelManager.Instance.score += 100;
                GameObject itm = Instantiate(item) as GameObject;
                itm.transform.position = transform.position;
            }
            StartCoroutine("Die");
        }
        LevelManager.Instance.score += 10;
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
        
        Color[] colors = new Color[msh.vertices.Length];
        for (int i = 0; i < msh.vertices.Length;i++ )
        {
            colors[i] = cColor;
        }
        msh.colors = colors;
    }

    IEnumerator Die()
    {
        renderer.enabled = false;
        collider2D.enabled = false;
        particleSystem.Play();
        while (!particleSystem.isStopped)
        {
            yield return false;
        }
        LevelManager.Instance.blocks--;
        GameObject.Destroy(gameObject);
    }

    IEnumerator FlashBlock()
    {
        Color[] colors = new Color[msh.vertices.Length];
        
        for (float i = 1; i >= 0; i -= 0.02f )
        {
            Color flashAmt = new Color(i * 3, i * 3, i * 3);
            for (int j = 0; j < msh.vertices.Length; j++)
            {
                colors[j] = cColor + flashAmt;
            }
            msh.colors = colors;
            yield return null;
        }

    }
}
