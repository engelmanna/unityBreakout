using UnityEngine;
using System.Collections;

public class Paddle : Entity
{

	// Update is called once per frame
	void Update () {

        if (Input.GetKey(KeyCode.A))
            coll.setVelocity(-20,0);

        if (Input.GetKey(KeyCode.D))
            coll.setVelocity(20, 0);
	}


}