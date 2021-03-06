﻿using UnityEngine;
using System.Collections;

public class KillZone : Entity {

    protected override void Start()
    {
        base.Start();
        attack = 1000;
        invincible = true;
        renderer.material.SetColor("_Emission", Color.red);
        renderer.material.SetColor("_Color", Color.red);
    }


    /*if (coll.gameObject.tag == "KillZone")
        {
            if (coll.gameObject.GetComponent<KillZone>().enabled)
            {
                //StartCoroutine("Die");
            }
            else
            {
                coll.gameObject.GetComponent<KillZone>().enabled = true;
                LevelManager.Instance.RemovePowerup(PowerType.BARRIER);
            }
        }*/

    protected override void OnCollisionEnter2D(Collision2D coll)
    {
        base.OnCollisionEnter2D(coll);

        if (coll.gameObject.tag == "Ball")
            LevelManager.Instance.RemovePowerup(PowerType.BARRIER);
    }

}
