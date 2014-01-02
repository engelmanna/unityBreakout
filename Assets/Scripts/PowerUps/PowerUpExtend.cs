using UnityEngine;
using System.Collections;

public class PowerUpExtend : PowerUp
{

    // Use this for initialization
    protected override void Start()
    {
        duration = 5;
        powType = PowerType.EXTEND;
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
        float i = 0.0f;
        while (i < 1)
        {
            float scalar = Mathf.Lerp(1, 2, i);
            LevelManager.Instance.paddleScript.SetWidth(3 * scalar);
            i += 0.05f;
            yield return true;
        }
        LevelManager.Instance.paddleScript.SetWidth(6);
    }

    IEnumerator Deactivate()
    {
        float i = 0.0f;
        while (i < 1)
        {
            float scalar = Mathf.Lerp(2, 1, i);
            LevelManager.Instance.paddleScript.SetWidth(3 * scalar);
            i += 0.05f;
            yield return true;
        }
        LevelManager.Instance.paddleScript.SetWidth(3);
        Destroy(this);
    }
}
