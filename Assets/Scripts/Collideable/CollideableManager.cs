using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class CollideableManager : MonoBehaviour {

    static CollideableManager instance;

    private List<Collideable> colliders;
    private List<Collideable> newColliders;
    private List<Collideable> deadColliders;

    public static CollideableManager Instance
    {
        get
        {
            if (instance == null)
            {
                instance = FindObjectOfType(typeof(CollideableManager)) as CollideableManager;
                if (instance == null)
                {
                    GameObject obj = new GameObject();
                    instance = obj.AddComponent(typeof(CollideableManager)) as CollideableManager;
                }
            }
            return instance;
        }
    }

	// Use this for initialization
	void Start () {
        colliders = new List<Collideable>(FindObjectsOfType<Collideable>());
        deadColliders = new List<Collideable>();
        newColliders = new List<Collideable>();
	}
	
	// Update is called once per frame
	void Update () {

        foreach (Collideable nGo in newColliders)
            colliders.Add(nGo);

        newColliders.Clear();

        foreach (Collideable collA in colliders)
        {
            foreach(Collideable collB in colliders)
            {
                if (collA != collB && !(collA.isStatic && collB.isStatic))
                {
                    if (collA.Rectangle.Overlaps(collB.Rectangle))
                    {
                        collA.bounce(collB.Rectangle);
                        collB.bounce(collA.Rectangle);

                        collA.gameObject.GetComponent<Entity>().onHit(collB.gameObject.GetComponent<Entity>().Attack);
                        collB.gameObject.GetComponent<Entity>().onHit(collA.gameObject.GetComponent<Entity>().Attack);
                    }
                }
            }
        }

        foreach (Collideable db in deadColliders)
            colliders.Remove(db.GetComponent<Collideable>());

        deadColliders.Clear();

	}

    public void addBody(Collideable cm)
    {
        newColliders.Add(cm);
    }

    public void removeBody(Collideable cm)
    {
        deadColliders.Add(cm);
    }

}
