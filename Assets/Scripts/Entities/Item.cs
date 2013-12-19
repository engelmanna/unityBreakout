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
        if (coll.tag == "Paddle")
        {
            coll.gameObject.AddComponent<PowerUp>();
            Destroy(gameObject);
        }
        
        
    }

    
}