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
        uiMat = GameObject.Find("ui_barrier").renderer.material;
        base.Start();
        
    }

    protected override void StartPowerup()
    {
        uiMat.SetColor("_EmisColor", Color.white);
        kzone.GetComponent<KillZone>().Attack = 0;
        kzone.renderer.material.SetColor("_Emission", Color.cyan);
        kzone.renderer.material.SetColor("_Color", Color.cyan);
    }

    protected override void EndPowerup()
    {
        uiMat.SetColor("_EmisColor", Color.black);
        kzone.GetComponent<KillZone>().Attack = 1000;
        kzone.renderer.material.SetColor("_Emission", Color.red);
        kzone.renderer.material.SetColor("_Color", Color.red);
        Destroy(this);
    }
}
