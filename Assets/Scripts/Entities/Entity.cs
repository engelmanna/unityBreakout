using UnityEngine;
using System.Collections;

public abstract class Entity : MonoBehaviour
{

    protected Rigidbody2D coll;
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
        coll = gameObject.rigidbody2D;
    }
}
