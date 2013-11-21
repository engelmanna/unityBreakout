using UnityEngine;
using System.Collections;

public class Block : Collideable {

    float size = 1;
    bool dead = false;

	// Use this for initialization
	void Start () {
        rect = new Rect(transform.position.x - 1.5f, transform.position.y - 0.5f, 3, 1);
	}
	
	// Update is called once per frame
	void Update () {
        if (dead)
        {
            size -= 0.1f;
            transform.localScale *= size;

        }
        if (dead && size < 0)
        {
            GameObject.Destroy(gameObject);
        }
	}

    public override int collide()
    {
        dead = true;
        return 1;
    }
}
