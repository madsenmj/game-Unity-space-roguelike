using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TurnMasterScript : MonoBehaviour {

	public float gridSize;
	//public Vector3 basisA1 = new Vector3 (0f,0f,1f);
	//public Vector3 basisA2 = new Vector3 (0.866025f, 0f, 0.5f);
	//public Vector3 basisA3 = new Vector3 (0.288675f, 0.816497f, 0.5f);

	public Vector3[] bases = new Vector3[] {
		new Vector3 (0f,0f,1f),
		new Vector3 (0.866025f, 0f, 0.5f),
		new Vector3 (0.288675f, 0.816497f, 0.5f)
	};

	public GameObject[] objectsThatTakeTurns;
	public bool turnLock = false;

	public GameObject player;
	private GameObject crumbtrail;
	private GameObject HUD;

	public int mapLimit = 10;

	public Dictionary<LatticeVector, string> playableGrid;
	public Dictionary <string, KeyCode> moveKeyDict;

	void Awake(){
		// Reset Unit Vectors by gridSize
		for(int i=0; i<3; i++){
			bases [i] *= gridSize;
		}
		playableGrid = new Dictionary<LatticeVector, string>();
		setMoveKeyBindings ();

	}

	// Use this for initialization
	void Start () {
		objectsThatTakeTurns = GameObject.FindGameObjectsWithTag("NPC");
		player = GameObject.FindGameObjectWithTag ("Player");
		crumbtrail = GameObject.Find ("CrumbTrail");
		HUD = GameObject.Find ("HUD");

		StartCoroutine (TurnHandler());


	}
	
	// Update is called once per frame
	void Update () {


	}

	private IEnumerator TurnHandler(){
		while (true) {
			//Debug.Log ("Checking");
			if (Input.anyKeyDown) {
				if (Input.GetMouseButtonDown (0) || Input.GetMouseButtonDown (1) || Input.GetMouseButtonDown (2)) {

				} else if (Input.GetKeyDown (KeyCode.T)) {
					
					crumbtrail.SetActive(!crumbtrail.activeSelf);

				} else if (Input.GetKeyDown (KeyCode.H)) {
					

					HUD.SetActive(!HUD.activeSelf);

				}else if (!Input.GetKey (KeyCode.Keypad5)) {
					foreach (var moveKeyPress in moveKeyDict) {
						if (Input.GetKeyDown (moveKeyPress.Value) && !Input.GetKey (KeyCode.Keypad5)) {
							player.GetComponent<PlayerMoveScript> ().turnShip (moveKeyPress.Key);
							break; // only one additional keypress allowed
						}
					}

					
				
				} else {
					string direction = "Stay";
					foreach (var moveKeyPress in moveKeyDict) {
						if (Input.GetKey (KeyCode.Keypad5) && Input.GetKeyDown (moveKeyPress.Value)) {
							direction = moveKeyPress.Key;
							player.GetComponent<PlayerMoveScript> ().takeTurn (direction);


							foreach (GameObject objectToTakeTurn in objectsThatTakeTurns) {
								while (turnLock) {
									yield return null;
								}
								objectToTakeTurn.GetComponent<TurnTakerScript>().takeTurn ();
							}		


							break;

						}
					}

				}



			}
			yield return new WaitForFixedUpdate();
		}

	}

	void setMoveKeyBindings (){

		moveKeyDict = new Dictionary<string, KeyCode> ()
		{
			{"Forward", 		KeyCode.Keypad8},
			{"Backward", 		KeyCode.Keypad2},
			{"ForwardLeft", 	KeyCode.Keypad7},
			{"ForwardRight",	KeyCode.Keypad9},
			{"BackwardLeft", 	KeyCode.Keypad1},
			{"BackwardRight", 	KeyCode.Keypad3},
			{"UpLeft", 			KeyCode.Keypad4},
			{"DownRight", 		KeyCode.Keypad6},
			{"UpRightBackward", KeyCode.KeypadPlus},
			{"UpRightForward", 	KeyCode.KeypadMinus},
			{"DownLeftForward",	KeyCode.Keypad0},
			{"DownLeftBackward",KeyCode.KeypadPeriod}
		};
	}

}
