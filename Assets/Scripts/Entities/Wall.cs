using UnityEngine;
using System.Collections;

public class Wall : Entity {

    protected override void Start()
    {
        base.Start();
        invincible = true;
    }
}
