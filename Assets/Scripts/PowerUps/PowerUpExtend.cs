using UnityEngine;
using System.Collections;

public class PowerUpExtend : PowerUp
{

    // Use this for initialization
    protected override void Start()
    {
        duration = 5;
        PowType = PowerType.EXTEND;
        uiMat = GameObject.Find("ui_extend").renderer.material;
        base.Start();    
    }

    protected override void StartPowerup()
    {
        uiMat.SetColor("_EmisColor", Color.white);
        StartCoroutine("Activate");
    }
    protected override void EndPowerup()
    {
        uiMat.SetColor("_EmisColor", Color.black);
        StartCoroutine("Deactivate");
    }

    IEnumerator Activate(){
        for (float i = 0; i <= 1; i += Time.deltaTime*4 )
        {
            float scalar = Mathf.Lerp(1, 2, i);
            LevelManager.Instance.paddleScript.SetWidth(3 * scalar);
            yield return 0;
        }
        LevelManager.Instance.paddleScript.SetWidth(6);
    }

    IEnumerator Deactivate()
    {
        for (float i = 0; i <= 1; i += Time.deltaTime*4 )
        {
            float scalar = Mathf.Lerp(2, 1, i);
            LevelManager.Instance.paddleScript.SetWidth(3 * scalar);
            yield return 0;
        }
        LevelManager.Instance.paddleScript.SetWidth(3);
        Destroy(this);
    }
}
