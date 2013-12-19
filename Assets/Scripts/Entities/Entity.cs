using UnityEngine;
using System.Collections;

public abstract class Entity : MonoBehaviour
{
    public bool invincible = false;

    protected int attack = 0;
    public int Attack {
        get { return attack; }
        set { attack = value; }
    }

    protected int health = 1;
    public int Health
    {
        get { return health; }
        set { health = value; }
    }
    
    protected virtual void Start() { }

    protected virtual void OnCollisionEnter2D(Collision2D coll)
    {
        if (!invincible)
            health -= coll.gameObject.GetComponent<Entity>().Attack;

        
    }
}
