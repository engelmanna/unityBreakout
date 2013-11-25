using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class CollideableManager : MonoBehaviour {

    static CollideableManager instance;

    private List<GameObject> deadColliders;
    private List<GameObject> deadDynamicColliders;

    private List<CollideableMover> colliders;
    private List<CollideableMover> newDynamicColliders;

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

        deadColliders = new List<GameObject>();
        newDynamicColliders = new List<CollideableMover>();

        colliders = new List<CollideableMover>(FindObjectsOfType<CollideableMover>());

	}
	
	// Update is called once per frame
	void Update () {

        foreach (CollideableMover nGo in newDynamicColliders)
            colliders.Add(nGo);

        newDynamicColliders.Clear();

        foreach (CollideableMover collA in colliders)
        {
            foreach(CollideableMover collB in colliders)
            {
                if (collA != collB)
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

        foreach (GameObject db in deadColliders)
        {
            colliders.Remove(db.GetComponent<CollideableMover>());
        }

        deadColliders.Clear();

	}

    public void addDynamicBody(CollideableMover cm)
    {
        newDynamicColliders.Add(cm);
    }

    public void removeBody(GameObject go)
    {
        deadColliders.Add(go);
    }

}
