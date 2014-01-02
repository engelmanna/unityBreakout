using UnityEngine;
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

}
