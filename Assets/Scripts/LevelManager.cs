using UnityEngine;
using System.Collections;

public class LevelManager : MonoBehaviour
{
    static LevelManager instance;

    public int lives;
    public GameObject ball;

    public static LevelManager Instance
    {
        get
        {
            if (instance == null)
            {
                instance = FindObjectOfType(typeof(LevelManager)) as LevelManager;
                if (instance == null)
                {
                    GameObject obj = new GameObject();
                    instance = obj.AddComponent(typeof(LevelManager)) as LevelManager;
                }
            }
            return instance;
        }
    }

    public void restartBall()
    {
        lives--;
        if (lives < 0)
            restartLevel();

        GameObject bl = Instantiate(ball) as GameObject;
        bl.GetComponent<Collideable>().setVelocity(10, 10);
        CollideableManager.Instance.addBody(bl.GetComponent<Collideable>());    
    }

    public void restartLevel()
    {
        Application.LoadLevel(0);
    }
}
