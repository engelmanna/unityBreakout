using UnityEngine;
using System.Collections;

public enum PowerType{EXTEND=1,BOMB=2,FLAME=3};

public class Item : MonoBehaviour
{

    public PowerType powerType;
    public float speed;

    Transform _transform;

    // Use this for initialization
    void Start()
    {
        _transform = transform;
    }

    // Update is called once per frame
    void Update()
    {
        _transform.Translate(0, Time.deltaTime * -speed, 0);
    }

    void OnTriggerEnter2D(Collider2D coll)
    {
        if (coll.gameObject.tag == "Paddle")
        {
            switch (powerType)
            {
                case PowerType.EXTEND:
                    Paddle paddleScript = coll.gameObject.GetComponent<Paddle>();
                    paddleScript.CurrentPower = coll.gameObject.AddComponent<PowerUp>();
                    break;
                default: break;
            }     
            Destroy(gameObject);
        }

        if (coll.gameObject.tag == "KillZone")
            Destroy(gameObject); 
    }
}