using UnityEngine;
using System.Collections;

public class PowerUpExtend : PowerUp
{

    // Use this for initialization
    protected override void Start()
    {
        duration = 5;
        PowType = PowerType.EXTEND;
        base.Start();    
    }

    protected override void StartPowerup()
    {
        StartCoroutine("Activate");
    }
    protected override void EndPowerup()
    {
        StartCoroutine("Deactivate");
    }

    IEnumerator Activate(){
        for (float i = 0; i <= 1; i += 0.05f )
        {
            float scalar = Mathf.Lerp(1, 2, i);
            LevelManager.Instance.paddleScript.SetWidth(3 * scalar);
            yield return true;
        }
        LevelManager.Instance.paddleScript.SetWidth(6);
    }

    IEnumerator Deactivate()
    {
        for (float i = 0; i <= 1; i += 0.05f )
        {
            float scalar = Mathf.Lerp(2, 1, i);
            LevelManager.Instance.paddleScript.SetWidth(3 * scalar);
            yield return true;
        }
        LevelManager.Instance.paddleScript.SetWidth(3);
        Destroy(this);
    }
}
