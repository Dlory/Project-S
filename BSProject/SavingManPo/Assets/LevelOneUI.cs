using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class LevelOneUI : MonoBehaviour {
    public GameObject book, milk, paint6, paint7, jiangbei;
    public Button menuBt, continueBt, reStartBt;
    // Use this for initialization
    void Start() {
        menuBt.onClick.AddListener(BackToMenu);
        //continueBt.onClick.AddListener(BackToMenu);
        reStartBt.onClick.AddListener(Restart);
    }

    void BackToMenu()
    {
        Application.LoadLevel(0);
    }

    void Restart()
    {
        Application.LoadLevel(2);
    }
	
	// Update is called once per frame
	void Update () {
	    if(Input.GetKeyDown(KeyCode.Escape))
        {
            Application.Quit();
        }
	}
}
