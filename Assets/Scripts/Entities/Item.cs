using UnityEngine;
using System.Collections;

public enum PowerType{EXTEND=1,SLOW=2,BARRIER=3};

public class Item : Entity
{

    public PowerType powerType;
    public float speed;

    Transform rotator;
    Transform _transform;

    // Use this for initialization
    protected override void Start()
    {
        _transform = transform;
        rotator = _transform.Find("itemRotator");
        _transform.Find("itemCore").renderer.materials[1].SetTextureOffset("_MainTex", new Vector2(-0.25f*(1-(int)powerType), 0));
    }

    // Update is called once per frame
    void Update()
    {
        _transform.Translate(0, Time.deltaTime * -speed, 0);
        rotator.Rotate(0, 0, 10);
    }

    void OnTriggerEnter2D(Collider2D coll)
    {
        if (coll.gameObject.tag == "Paddle")
        {
            if (LevelManager.Instance.CurrentPower != null && LevelManager.Instance.CurrentPower.powType == powerType)
            {
                LevelManager.Instance.CurrentPower.Reset();
            }
            else
            {
                switch (powerType)
                {
                    case PowerType.EXTEND:
                        LevelManager.Instance.CurrentPower = coll.gameObject.AddComponent<PowerUpExtend>();
                        break;
                    case PowerType.SLOW:
                        LevelManager.Instance.CurrentPower = coll.gameObject.AddComponent<PowerUpSlow>();
                        break;
                    case PowerType.BARRIER:
                        LevelManager.Instance.CurrentPower = coll.gameObject.AddComponent<PowerUpBarrier>();
                        break;
                    default: break;
                }
            }
                 
            Destroy(gameObject);
        }

        if (coll.gameObject.tag == "KillZone")
            Destroy(gameObject); 
    }
}