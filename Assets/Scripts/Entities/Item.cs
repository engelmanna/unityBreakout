using UnityEngine;
using System.Collections;

public class Item : MonoBehaviour
{
    
    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        transform.Translate(0, -0.1f, 0);
        if (transform.position.y<-15)
        {
            Destroy(gameObject);
        }
    }

    void OnTriggerEnter2D(Collider2D coll)
    {
        if (coll.gameObject.tag == "Paddle")
        {
            if (coll.gameObject.GetComponent<PowerUp>() != null)
            {
                coll.gameObject.GetComponent<PowerUp>().ResetTimer();
            }
            else
            {
                coll.gameObject.AddComponent<PowerUp>();
            }
            
            Destroy(gameObject);
        }
        
        
    }

    
}