using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class Select : MonoBehaviour
{
    public Button button;
    // Use this for initialization
    void Start()
    {
        button.onClick.AddListener(LoadLevelSelect);
    }

    void LoadLevelSelect()
    {
        Application.LoadLevel(2);
    }

    // Update is called once per frame
    void Update()
    {

    }
}
