using UnityEngine;
using System.Collections;

public class Block : Collideable {

    float scalar = 1;

    public Vector2 size;

	// Use this for initialization
	void Start () {
        rect = new Rect(transform.position.x - size.x/2, transform.position.y - size.y/2, size.x, size.y);
	}

    public override int collide(Vector2 bounceAmt)
    {
        StartCoroutine("die");
        return 1;
    }

    IEnumerator die()
    {
        while (scalar > 0)
        {
            scalar -= 0.1f;
            resize(scalar);
            yield return Time.deltaTime;
        }
        GameObject.Destroy(gameObject); 
    }
}
