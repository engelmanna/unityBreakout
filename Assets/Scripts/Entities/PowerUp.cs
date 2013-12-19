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
        while (i < 1)
        {
            float scalar = Mathf.Lerp(1, 2, i);
            transform.localScale = new Vector3(scalar, 1, 1);
            i += 0.05f;
            yield return true;
        }
    }

    IEnumerator Deactivate()
    {
        float i = 1.0f;
        while (i > 0)
        {
            float scalar = Mathf.Lerp(1, 2, i);
            transform.localScale = new Vector3(scalar, 1, 1);
            i -= 0.05f;
            yield return true;
        }
        Destroy(this);
    }
}
