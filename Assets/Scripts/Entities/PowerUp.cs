using UnityEngine;
using System.Collections;

public class PowerUp : MonoBehaviour
{

    float myTime;
    // Use this for initialization
    void Start()
    {
        myTime = Time.time;
        StartCoroutine("Activate");
    }

    // Update is called once per frame
    void Update()
    {
        if (Time.time - myTime > 5)
        {
            StartCoroutine("Deactivate");
        }
    }

    IEnumerator Activate(){
        float i = 0.0f;
        Paddle paddleScript = gameObject.GetComponent<Paddle>();
        while (i < 1)
        {
            float scalar = Mathf.Lerp(1, 2, i);
            paddleScript.setWidth(3 * scalar);
            i += 0.05f;
            yield return true;
        }
        paddleScript.setWidth(6);
    }

    IEnumerator Deactivate()
    {
        float i = 1.0f;
        Paddle paddleScript = gameObject.GetComponent<Paddle>();
        while (i > 0)
        {
            float scalar = Mathf.Lerp(1, 2, i);
            paddleScript.setWidth(3 * scalar);
            i -= 0.05f;
            yield return true;
        }
        paddleScript.setWidth(3);
        Destroy(this);
    }
}
