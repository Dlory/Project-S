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
    //Climb Up and Down
    public GameObject climbUp_0, climbUp_1, climbDown_0, climbDown_1;
    //ClickButton
    public GameObject clickJiuPing, clickBackCabinet, clickCabinet, clickGetTheKey,
        clickSleepingPill, clickShears, clickEggs;

    //Duyan
    public Animator duyan;
    //Tips
    public GameObject shockTips;
    //Door
    public GameObject door;

    private int floor = 0;
    private float centerOffset = 1f;
    private bool factToRight = true;
    private Vector2 targetPosition = Vector2.zero;

    private bool canMove = true;
    private bool doorOpen = false;

    public int NeedItemCount = 0;
    public int HideItemCount = 0;

    public LevelOneUI levelOneUI;
    public GameObject ResultUI;

    // Use this for initialization
    void Start () {
        SetFloor();
    }

    Vector2 worldPosition = Vector2.zero;
    // Update is called once per frame
    void Update()
    {
        UITouch();
        CharacterMove();  
    }



    void UITouch()
    {
        worldPosition = Vector2.zero;
        if (Input.anyKeyDown && !Application.isMobilePlatform)
            worldPosition = Camera.main.ScreenToWorldPoint(Input.mousePosition);
        if (Input.touchCount != 0 && Application.isMobilePlatform)
            worldPosition = Camera.main.ScreenToWorldPoint(Input.touches[0].position);

        if (worldPosition != Vector2.zero)
        {
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit2D[] hits = Physics2D.RaycastAll(ray.origin, ray.direction, 30, 1 << 8);
            foreach (RaycastHit2D hit in hits)
            {
                if (hit.collider != null)
                {
                    if (hit.collider.name .StartsWith("ClimbUp"))
                    {
                        ClimbUp();
                    }
                    if (hit.collider.name.StartsWith("ClimbDown"))
                    {
                        ClimbDown();
                    }

                    if (hit.collider.name == "ClickJiuPing")
                    {
                        StartCoroutine(ClickJiuPing());
                    }

                    if (hit.collider.name == "ClickOpenBackCabinet")
                    {
                        StartCoroutine(ClickOpenBackCabinet());
                    }

                    if (hit.collider.name == "ClickOpenCabinet")
                    {
                        StartCoroutine(ClickOpenCabinet());
                    }

                    if(hit.collider.name=="ClickGetTheKey")
                    {
                        clickGetTheKey.SetActive(false);
                        GameObject.Find("key").SetActive(false);
                    }

                    if (hit.collider.name == "ClickSleeping_Pill")
                    {
                        clickSleepingPill.SetActive(false);
                        GameObject.Find("sleeping pill_need").SetActive(false);
                        NeedItemCount++;
                    }

                    if (hit.collider.name == "ClickShears")
                    {
                        clickShears.SetActive(false);
                        GameObject.Find("shears_need").SetActive(false);
                        NeedItemCount++;
                    }

                    if (hit.collider.name == "ClickEggs")
                    {
                        clickEggs.SetActive(false);
                        GameObject.Find("egg_need").SetActive(false);
                        NeedItemCount++;
                    }

                    if (hit.collider.name == "book_hide"&&floor==1)
                    {
                        GameObject.Find("book_hide").SetActive(false);
                        HideItemCount++;
                        levelOneUI.book.SetActive(true);
                    }

                    if (hit.collider.name == "milk_hide" && floor == 1)
                    {
                        GameObject.Find("milk_hide").SetActive(false);
                        HideItemCount++;
                        levelOneUI.milk.SetActive(true);
                    }

                    if (hit.collider.name == "paint6_hide" && floor == 2)
                    {
                        GameObject.Find("paint6_hide").SetActive(false);
                        HideItemCount++;
                        levelOneUI.paint6.SetActive(true);
                    }

                    if (hit.collider.name == "paint7_hide" && floor == 2)
                    {
                        GameObject.Find("paint7_hide").SetActive(false);
                        HideItemCount++;
                        levelOneUI.paint7.SetActive(true);
                    }

                    if (hit.collider.name == "jiangbei_hide" && floor == 2)
                    {
                        GameObject.Find("jiangbei_hide").SetActive(false);
                        HideItemCount++;
                        levelOneUI.jiangbei.SetActive(true);
                    }
                }
            }
        }
    }

    private IEnumerator ClickOpenCabinet()
    {
        clickCabinet.SetActive(false);
        animator.SetTrigger("OpenCabinet");
        yield return new WaitForSeconds(0.5f);
        GameObject.Find("Cabinet").GetComponent<Animator>().SetBool("Open", true);
        GameObject.Find("Cabinet").GetComponent<Animator>().SetBool("Close", false);
        yield return new WaitForSeconds(1.4f);
        self.sortingOrder = 3;
        transform.localPosition = new Vector2(-1.18f, -2.887f);
        transform.localScale = Vector3.one * 0.274f;
        animator.SetTrigger("CloseBackCabinet");
        yield return new WaitForSeconds(1);
        GameObject.Find("Cabinet").GetComponent<Animator>().SetBool("Open", false);
        GameObject.Find("Cabinet").GetComponent<Animator>().SetBool("Close", true);
        yield return new WaitForSeconds(1);
        clickBackCabinet.SetActive(true);
        transform.GetComponent<BoxCollider2D>().enabled = true;
    }

    private IEnumerator ClickOpenBackCabinet()
    {
        transform.localPosition = new Vector2(-1.18f, -2.887f);
        clickBackCabinet.SetActive(false);
        GameObject.Find("Cabinet").GetComponent<Animator>().SetBool("Open",true);
        animator.SetTrigger("OpenBackCabinet");
        yield return new WaitForSeconds(1.5f);
        self.sortingOrder = 1;
        transform.localPosition = new Vector2(-1.12f, -2.79f);
        transform.localScale = Vector3.one * 0.1926f;
        transform.GetComponent<BoxCollider2D>().enabled = false;
        GameObject.Find("Cabinet").GetComponent<Animator>().SetBool("Open", false);
        GameObject.Find("Cabinet").GetComponent<Animator>().SetBool("Close", true);
        yield return new WaitForSeconds(1f);
        clickCabinet.SetActive(true);
    }

    private void ClampMove(ref Vector2 hitPoint)
    {
        if (floor == 0)
            hitPoint = new Vector2(Mathf.Clamp(hitPoint.x, -10, 10), hitPoint.y);
        else if (floor == 1)
        {
            if(!doorOpen)
                hitPoint = new Vector2(Mathf.Clamp(hitPoint.x, -6.44f, 0.1509438f), hitPoint.y);
        }
    }

    private void Move(RaycastHit2D hit)
    {
        Vector2 hitPoint = hit.point;
        factToRight = hitPoint.x > transform.localPosition.x;
        self.flipX = factToRight;
        ClampMove(ref hitPoint);
        targetPosition = hitPoint + Vector2.up * centerOffset;
        float time = Mathf.Abs(hitPoint.x - transform.localPosition.x) / MoveSpeed;
        iTween.MoveTo(gameObject, iTween.Hash("x", targetPosition.x, "time", time, "easetype", iTween.EaseType.linear,
            "onstart", "StartWalk", "onstarttarget", gameObject,
            "oncomplete", "EndWalk", "oncompletetarget", gameObject));
    }

    void ClimbDown()
    {
        canMove = false;
        animator.SetBool("Walk", false);
        climbUp_0.SetActive(false); climbDown_0.SetActive(false);
        climbUp_1.SetActive(false); climbDown_1.SetActive(false);
        if (floor == 1)
        {
            iTween.Stop(gameObject);
            transform.localPosition = new Vector3(-2.68f, -2.887f, 0);
            iTween.MoveTo(gameObject, iTween.Hash("y", -4.94f, "time", 1, "easetype", iTween.EaseType.linear,
            "onstart", "StartClimb", "onstarttarget", gameObject, "onstartparams", false,
            "oncomplete", "EndClimb", "oncompletetarget", gameObject, "oncompleteparams", false));
        }
        if (floor == 2)
        {
            iTween.Stop(gameObject);
            transform.localPosition = new Vector3(5.11f, 0.55f, 0);
            iTween.MoveTo(gameObject, iTween.Hash("y", -2.887f, "time", 2, "easetype", iTween.EaseType.linear,
            "onstart", "StartClimb", "onstarttarget", gameObject, "onstartparams", false,
            "oncomplete", "EndClimb", "oncompletetarget", gameObject, "oncompleteparams", false));
        }
    }

    private void ClimbUp()
    {
        canMove = false;
        animator.SetBool("Walk", false);
        climbUp_0.SetActive(false); climbDown_0.SetActive(false);
        climbUp_1.SetActive(false); climbDown_1.SetActive(false);
        if(floor==0)
        {
            iTween.Stop(gameObject);
            transform.localPosition = GameObject.Find("ladder1").transform.localPosition;
            iTween.MoveTo(gameObject, iTween.Hash("y", -2.887f, "time", 1, "easetype", iTween.EaseType.linear,
            "onstart", "StartClimb", "onstarttarget", gameObject, "onstartparams", true,
            "oncomplete", "EndClimb", "oncompletetarget", gameObject, "oncompleteparams", true));
        }
        if(floor==1)
        {
            iTween.Stop(gameObject);
            transform.localPosition = new Vector3(5.11f, -2.887f, 0);
            iTween.MoveTo(gameObject, iTween.Hash("y", 0.55f, "time", 2, "easetype", iTween.EaseType.linear,
            "onstart", "StartClimb", "onstarttarget", gameObject, "onstartparams", true,
            "oncomplete", "EndClimb", "oncompletetarget", gameObject, "oncompleteparams", true));
        }
    }

    void CharacterMove()
    {
        if (!canMove)
            return;

        if (worldPosition != Vector2.zero)
        {
            RaycastHit2D[] hits = Physics2D.RaycastAll(worldPosition, Vector2.down, 2);

            foreach(RaycastHit2D hit in hits)
            {
                if (hit.collider != null && hit.collider.gameObject.name.StartsWith("ground"))
                {
                    Move(hit);
                }
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
                ground0.SetActive(true);
                break;
            case 1:
                ground0.SetActive(false);
                ground2.SetActive(false);
                ground1_1.SetActive(true);
                if (doorOpen)
                {
                    ground1_2.SetActive(true);
                }
                else
                {
                    ground1_2.SetActive(false);
                }
                    
                break;
            case 2:
                ground0.SetActive(false);
                ground1_1.SetActive(false);
                ground1_2.SetActive(false);
                ground2.SetActive(true);
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

    void StartClimb(bool up)
    {
        if (animator)
        {
            if(up)
            {
                if (floor == 0)
                    GameObject.Find("ladder1").GetComponent<BoxCollider2D>().enabled = false;
                if (floor == 1)
                    GameObject.Find("ladder2").GetComponent<BoxCollider2D>().enabled = false;
                floor++;
            }
            else
            {
                if (floor == 1)
                    GameObject.Find("ladder1").GetComponent<BoxCollider2D>().enabled = false;
                if (floor == 2)
                    GameObject.Find("ladder2").GetComponent<BoxCollider2D>().enabled = false;
                floor--;
            }

            animator.SetBool("Climb", true);
        }
    }

    void EndClimb(bool up)
    {
        if (animator)
        {
            if(up)
            {
                if (floor == 1)
                    GameObject.Find("ladder1").GetComponent<BoxCollider2D>().enabled = true;
                if (floor == 2)
                    GameObject.Find("ladder2").GetComponent<BoxCollider2D>().enabled = true;
            }
            else
            {
                if (floor == 0)
                    GameObject.Find("ladder1").GetComponent<BoxCollider2D>().enabled = true;
                if (floor == 1)
                    GameObject.Find("ladder2").GetComponent<BoxCollider2D>().enabled = true;
            }
            SetFloor();
            canMove = true;
            animator.SetBool("Climb", false);        
        }
    }


    void OnTriggerEnter2D(Collider2D coll)
    {
        if (coll.gameObject.name=="ladder1")
        {
            if(floor == 0)
            {
                climbUp_1.SetActive(false); climbDown_1.SetActive(false);
                climbUp_0.SetActive(true); climbDown_0.SetActive(false);
            }
            else if(floor ==1)
            {
                climbUp_1.SetActive(false); climbDown_1.SetActive(false);
                climbUp_0.SetActive(false); climbDown_0.SetActive(true);
            }
        }

        if (coll.gameObject.name == "ladder2")
        {
            if (floor == 1)
            {
                climbUp_0.SetActive(false); climbDown_0.SetActive(false);
                climbUp_1.SetActive(true); climbDown_1.SetActive(false);
            }
            else if (floor == 2)
            {
                climbUp_0.SetActive(false); climbDown_0.SetActive(false);
                climbUp_1.SetActive(false); climbDown_1.SetActive(true);
            }
        }

        if(coll.gameObject.name=="jiuping")
        {
            clickJiuPing.SetActive(true);
        }

        if (coll.gameObject.name == "Cabinet")
        {
            clickBackCabinet.SetActive(true);
        }

        if(coll.gameObject.name=="key")
        {
            clickGetTheKey.SetActive(true);
        }

        if (coll.gameObject.name == "sleeping pill_need")
        {
            clickSleepingPill.SetActive(true);
        }

        if (coll.gameObject.name == "shears_need")
        {
            clickShears.SetActive(true);
        }

        if (coll.gameObject.name == "egg_need")
        {
            clickEggs.SetActive(true);
        }

        if (coll.gameObject.name == "door")
        {
            if (GameObject.Find("key") == null&&doorOpen==false)
            {
                doorOpen = true;
                iTween.ScaleTo(door, iTween.Hash("scale", new Vector3(1, 0), "time", 2, "easetype", iTween.EaseType.linear));
                Invoke("SetFloor", 1.5f);
            }
        }

        if (coll.gameObject.name == "flower"&&NeedItemCount==3)
        {
            ResultUI.SetActive(true);
            enabled = false;
            Debug.Log("Done");
        }
    }

    void OnTriggerExit2D(Collider2D coll)
    {
        if (coll.gameObject.name.StartsWith("ladder"))
        {
            climbUp_0.SetActive(false);climbDown_0.SetActive(false);
            climbUp_1.SetActive(false); climbDown_1.SetActive(false);
        }

        if (coll.gameObject.name == "jiuping")
        {
            clickJiuPing.SetActive(false);
        }

        if (coll.gameObject.name == "Cabinet")
        {
            clickBackCabinet.SetActive(false);
        }

        if (coll.gameObject.name == "shears_need")
        {
            clickShears.SetActive(false);
        }

        if (coll.gameObject.name == "egg_need")
        {
            clickEggs.SetActive(false);
        }

        if (coll.gameObject.name == "key")
        {
            clickGetTheKey.SetActive(false);
        }
        if (coll.gameObject.name == "sleeping pill_need")
        {
            clickSleepingPill.SetActive(false);
        }
    }

    IEnumerator ClickJiuPing()
    {
        clickJiuPing.SetActive(false);
        //animator.SetBool("BreakBottle",true);
        GameObject.Find("jiuping").SetActive(false);
        yield return new WaitForSeconds(0.7f);
        shockTips.SetActive(true);
        duyan.transform.localPosition = new Vector3(6.52f, -2.2f, 0);
        duyan.SetTrigger("Terrified");
        yield return new WaitForSeconds(0.2f);
        shockTips.SetActive(false);
        duyan.transform.localPosition = new Vector3(6.52f, -2.63f, 0);
        yield return new WaitForSeconds(1f);
        duyan.SetBool("Walk",true);
        iTween.MoveTo(duyan.gameObject, iTween.Hash("x", 1.54f,"y",-2.74f, "time", 4, "easetype", iTween.EaseType.linear,
"oncomplete", "DuYanOpenTheDoor", "oncompletetarget", gameObject));
    }

    void DuYanOpenTheDoor()
    {
        duyan.SetBool("Walk", false);
        iTween.ScaleTo(door, iTween.Hash("scale", new Vector3(1, 0),"time",2,"easetype",iTween.EaseType.linear
            , "oncomplete", "DoorResetScale", "oncompletetarget", gameObject));
        StartCoroutine(DuYanContinueMove());
    }

    void DoorResetScale()
    {
        iTween.ScaleTo(door, iTween.Hash("delay",1,"scale", new Vector3(1, 1), "time", 2, "easetype", iTween.EaseType.linear));
    }


    IEnumerator DuYanContinueMove()
    {
        yield return new WaitForSeconds(2);
        duyan.SetBool("Walk", true);
        iTween.MoveTo(duyan.gameObject, iTween.Hash("x", -2.69f, "y", -2.82f, "time", 3, "easetype", iTween.EaseType.linear,
"oncomplete", "DuYanClimbDown", "oncompletetarget", gameObject));
    }

    void DuYanClimbDown()
    {
        duyan.SetBool("Walk", false);
        duyan.SetBool("Climb", true);
        iTween.MoveTo(duyan.gameObject, iTween.Hash( "y",-4.87f, "time", 3, "easetype", iTween.EaseType.linear,
"oncomplete", "DuYanClimbDownEnd", "oncompletetarget", gameObject));
    }

    void DuYanClimbDownEnd()
    {
        duyan.SetBool("Climb", false);
        duyan.GetComponent<SpriteRenderer>().flipX = false;
        duyan.GetComponent<EnemyDetect>().flip = false;
        StartCoroutine(LookAnotherSide());
    }

    IEnumerator LookAnotherSide()
    {
        yield return new WaitForSeconds(1.0f);
        duyan.SetBool("Walk", true);
        duyan.GetComponent<SpriteRenderer>().flipX = true;
        duyan.GetComponent<EnemyDetect>().flip = true;
        iTween.MoveTo(duyan.gameObject, iTween.Hash("X", 3.3f, "time", 4, "easetype", iTween.EaseType.linear,
"oncomplete", "DuYanWalkEnd", "oncompletetarget", gameObject));
    }


    void DuYanWalkEnd()
    {
        duyan.SetBool("Walk", false);
        duyan.GetComponent<EnemyDetect>().why.SetActive(true);
    }

}
