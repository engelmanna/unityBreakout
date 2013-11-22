using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Stage : MonoBehaviour {

    public GameObject prefab;
    public GameObject paddle;

    private List<GameObject> staticColliders;
    private List<GameObject> deadColliders;

    private List<GameObject> dynamicColliders;
    private List<GameObject> deadDynamicColliders;

	// Use this for initialization
	void Start () {

        GameObject.Instantiate(prefab, new Vector3(0, -3, 0), Quaternion.identity);

        staticColliders = new List<GameObject>(GameObject.FindGameObjectsWithTag("StaticCollider"));
        deadColliders = new List<GameObject>();

        dynamicColliders = new List<GameObject>(GameObject.FindGameObjectsWithTag("DynamicCollider"));

	}
	
	// Update is called once per frame
	void Update () {
        foreach(GameObject dynC in dynamicColliders){

            CollideableMover dynCscript = dynC.GetComponent<CollideableMover>();

            foreach (GameObject statC in staticColliders)
            {
                Collideable statCscript = statC.GetComponent<Collideable>();

                if (dynCscript.Rectangle.Overlaps(statCscript.Rectangle)) {
                    
                    Vector2 bounceAmt = dynCscript.bounce(statCscript.Rectangle);
                    dynCscript.translateTo(bounceAmt);

                    dynCscript.collide();
                    switch (statCscript.collide())
                    {
                        case 1:
                            deadColliders.Add(statC);
                            break;
                        case -1:
                            //dynCscript.reset();
                            break;
                        default:
                            break;
                    }
                }
            }

            foreach (GameObject dynC2 in dynamicColliders)
            {
                if (dynC != dynC2)
                {
                    CollideableMover dynC2script = dynC2.GetComponent<CollideableMover>();
                    if (dynCscript.Rectangle.Overlaps(dynC2script.Rectangle))
                    {
                        dynCscript.bounce(dynC2script.Rectangle);

                        dynC2script.collide();
                        dynCscript.collide();
                    }
                }
            }
        }

        foreach (GameObject db in deadColliders)
        {
            staticColliders.Remove(db);
        }
        deadColliders.Clear();

	}
}
