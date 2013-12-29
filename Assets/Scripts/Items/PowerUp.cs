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
        {
            StartCoroutine("Deactivate");
        }
    }

    IEnumerator Activate(){
        float i = 0.0f;
        Paddle paddleScript = gameObject.GetComponent<Paddle>();
        paddleScript.currentPower = this;
        while (i < 1)
        {
            float scalar = Mathf.Lerp(1, 2, i);
            paddleScript.setWidth(3*scalar);
            i += 0.05f;
            yield return true;
        }
        paddleScript.setWidth(6);
    }

    IEnumerator Deactivate()
    {
        float i = 0.0f;
        Paddle paddleScript = gameObject.GetComponent<Paddle>();
        while (i < 1)
        {
            float scalar = Mathf.Lerp(2, 1, i);
            paddleScript.setWidth(3*scalar);
            i += 0.05f;
            yield return true;
        }
        paddleScript.setWidth(3);
        Destroy(this);
    }

    public void ResetTimer()
    {
        startTime = Time.time;
    }
}
