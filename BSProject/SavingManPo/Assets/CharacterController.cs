using UnityEngine;
using System.Collections;

public class CharacterController : MonoBehaviour {

    //Ground0 Collider
    public GameObject ground0;
    //Ground1 Collider
    public GameObject ground1_1, ground1_2;
    //Ground2 Collider
    public GameObject ground2;
    //Self
    public SpriteRenderer self;
    //Animator
    public Animator animator;
    //Speed
    public float MoveSpeed = 2.0f;

    private int floor = 0;
    private float centerOffset = 1f;
    private bool factToRight = true;
    private Vector2 targetPosition = Vector2.zero;

    // Use this for initialization
    void Start () {
        SetFloor();
    }

    Vector2 worldPosition = Vector2.zero;
    // Update is called once per frame
    void Update()
    {
        worldPosition = Vector2.zero;
        if (Input.anyKeyDown&&!Application.isMobilePlatform)
            worldPosition = Camera.main.ScreenToWorldPoint(Input.mousePosition);
        if(Input.touchCount!=0&&Application.isMobilePlatform)
            worldPosition = Camera.main.ScreenToWorldPoint(Input.touches[0].position);

        if(worldPosition!=Vector2.zero)
        {
            RaycastHit2D hit = Physics2D.Raycast(worldPosition, Vector2.down, 2);
            if (hit.collider != null && hit.collider.gameObject.name.StartsWith("ground"))
            {
                Vector2 hitPoint = hit.point;
                factToRight = hitPoint.x > transform.localPosition.x;
                self.flipX = factToRight;
                hitPoint = new Vector2(Mathf.Clamp(hitPoint.x, -10, 10), hitPoint.y);
                targetPosition = hitPoint + Vector2.up * centerOffset;
                float time = Mathf.Abs(hitPoint.x - transform.localPosition.x) / MoveSpeed;
                iTween.MoveTo(gameObject, iTween.Hash("x", targetPosition.x, "time", time, "easetype", iTween.EaseType.linear,
                    "onstart", "StartWalk", "onstarttarget", gameObject,
                    "oncomplete", "EndWalk", "oncompletetarget", gameObject));
                Debug.Log(hit.collider.name + " " + hitPoint);
            }
        }
    }

    void SetFloor()
    {
        switch(floor)
        {
            case 0:
                ground1_1.SetActive(false);
                ground1_2.SetActive(false);
                ground2.SetActive(false);
                break;
            case 1:
                ground0.SetActive(false);
                ground2.SetActive(false);
                break;
            case 2:
                ground0.SetActive(false);
                ground1_1.SetActive(false);
                ground1_2.SetActive(false);
                break;
        }
    }

    void StartWalk()
    {
        if(animator)
        {
            animator.SetBool("Walk", true);
        }
    }

    void EndWalk()
    {
        if (animator)
        {
            animator.SetBool("Walk", false);
        }
    }
}
