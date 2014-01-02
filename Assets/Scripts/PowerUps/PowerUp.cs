using UnityEngine;
using System.Collections;

public class PowerUp : MonoBehaviour
{

    public float startTime;
    public float duration;
    public PowerType powType;

    // Use this for initialization
    protected virtual void Start()
    {
        startTime = Time.time;
        StartPowerup();
    }

    // Update is called once per frame
    void Update()
    {
        if (Time.time - startTime > duration)
            EndPowerup();
    }

    protected virtual void StartPowerup()
    {
    }

    protected virtual void EndPowerup()
    {
    }


    public void Reset()
    {
        startTime = Time.time;
    }
}
