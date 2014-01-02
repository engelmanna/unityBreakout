using UnityEngine;
using System.Collections;

public class PowerUpBarrier : PowerUp
{

    GameObject kzone;
    // Use this for initialization
    protected override void Start()
    {
        duration = 60;
        powType = PowerType.BARRIER;
        kzone = GameObject.FindGameObjectWithTag("KillZone");
        base.Start();
    }

    protected override void StartPowerup()
    {
        kzone.GetComponent<KillZone>().enabled = false;
        kzone.renderer.material.SetColor("_Emission", Color.cyan);
        kzone.renderer.material.SetColor("_Color", Color.cyan);
    }

    protected override void EndPowerup()
    {
        Debug.Log("Ending Barrier");
        kzone.GetComponent<KillZone>().enabled = true;
        kzone.renderer.material.SetColor("_Emission", Color.red);
        kzone.renderer.material.SetColor("_Color", Color.red);
        Destroy(this);
    }
}
