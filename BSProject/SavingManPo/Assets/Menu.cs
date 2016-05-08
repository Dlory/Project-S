using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class Menu : MonoBehaviour {
    public Button button;
	// Use this for initialization
	void Start () {
        button.onClick.AddListener(LoadLevelSelect);
	}

    void LoadLevelSelect()
    {
        Application.LoadLevel(1);
    }
	
	// Update is called once per frame
	void Update () {
	
	}
}
