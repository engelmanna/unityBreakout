using UnityEngine;
using System.Collections;

public abstract class Entity : MonoBehaviour
{

    protected Collideable coll;
    protected int attack;
    public int Attack {
        get { return attack; }
        set { attack = value; }
    }

    protected int health;
    public int Health
    {
        get { return health; }
        set { health = value; }
    }
    
    protected virtual void Start()
    {
        attack = 0;
        health = -1;
        coll = gameObject.GetComponent<Collideable>();
    }

    //Called whenever an entity collides with something.
    public virtual bool onHit(int atkValue)
    {
        if (health >= 0)
            health -= atkValue;

        if (health == 0)
            return true;

        return false;
    }
}
