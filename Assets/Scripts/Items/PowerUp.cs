using UnityEngine;
using System.Collections;

public class PowerUp : MonoBehaviour
{

    public float startTime;
    public float duration;

    // Use this for initialization
    void Start()
    {
        startTime = Time.time;
        StartCoroutine("Activate");
        duration = 5;
    }

    // Update is called once per frame
    void Update()
    {
        if (Time.time - startTime > duration)
            StartCoroutine("Deactivate");
    }

    IEnumerator Activate(){
        float i = 0.0f;
        Paddle paddleScript = gameObject.GetComponent<Paddle>();
        while (i < 1)
        {
            float scalar = Mathf.Lerp(1, 2, i);
            paddleScript.SetWidth(3*scalar);
            i += 0.05f;
            yield return true;
        }
        paddleScript.SetWidth(6);
    }

    IEnumerator Deactivate()
    {
        float i = 0.0f;
        Paddle paddleScript = gameObject.GetComponent<Paddle>();
        while (i < 1)
        {
            float scalar = Mathf.Lerp(2, 1, i);
            paddleScript.SetWidth(3*scalar);
            i += 0.05f;
            yield return true;
        }
        paddleScript.SetWidth(3);
        paddleScript.CurrentPower = null;
        Destroy(this);
    }

    public void Reset()
    {
        startTime = Time.time;
    }
}
