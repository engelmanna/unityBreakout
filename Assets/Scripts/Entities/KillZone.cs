using UnityEngine;
using System.Collections;

public class KillZone : Entity {

    protected override void Start()
    {
        base.Start();
        attack = 1000;
    }
}
