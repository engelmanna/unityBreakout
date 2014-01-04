using UnityEngine;
using System.Collections;

public class PowerUpBarrier : PowerUp
{

    GameObject kzone;
    // Use this for initialization
    protected override void Start()
    {
        duration = 60;
        PowType = PowerType.BARRIER;
        kzone = GameObject.FindGameObjectWithTag("KillZone");
        base.Start();
    }

    protected override void StartPowerup()
    {
        kzone.GetComponent<KillZone>().Attack = 0;
        kzone.renderer.material.SetColor("_Emission", Color.cyan);
        kzone.renderer.material.SetColor("_Color", Color.cyan);
    }

    protected override void EndPowerup()
    {
        kzone.GetComponent<KillZone>().Attack = 1000;
        kzone.renderer.material.SetColor("_Emission", Color.red);
        kzone.renderer.material.SetColor("_Color", Color.red);
        Destroy(this);
    }
}
