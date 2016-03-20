using UnityEngine;
using System.Collections;

public class EnemyDetect : MonoBehaviour {
    private Animator animator;
    public bool flip = false;
    private bool die = false;
    public GameObject angry,why;
	// Use this for initialization
	void Start () {
        animator = GetComponent<Animator>();
	}
	
	// Update is called once per frame
	void Update () {
	    if(animator)
        {
            if(animator.GetCurrentAnimatorStateInfo(0).IsName("Walk")||
                animator.GetCurrentAnimatorStateInfo(0).IsName("lookAround"))
            {
                int direction = flip ? 1 : -1;
                RaycastHit2D hit = Physics2D.Raycast(transform.position, transform.right*direction,10, (1 <<9|1<<10));
                Debug.DrawLine(transform.position, transform.right * 100*direction + transform.position, Color.red);
                if (hit.collider!=null)
                {
                    if (!die&& hit.collider.gameObject.name == "manpo")
                    {
                        die = true;
                        Die();
                    }
                }
            }
        }
	}

    void Die()
    {
        animator.enabled = false;
        iTween.Stop(gameObject);
        GameObject.Find("manpo").GetComponent<CharacterController>().StopAllCoroutines();
        angry.SetActive(true);
        StartCoroutine(ReloadLevel());
    }

    IEnumerator ReloadLevel()
    {
        yield return new WaitForSeconds(1);
        GameObject.Find("FadeOut").GetComponent<iTweenAlphaTo>().iTweenPlay();
        yield return new WaitForSeconds(2);
        Application.LoadLevel(0);
    }
}
