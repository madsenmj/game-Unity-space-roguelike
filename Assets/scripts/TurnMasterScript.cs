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

	public TurnTakerScript[] objectsThatTakeTurns;
	public bool turnLock = false;

	private GameObject player;

	void Awake(){
		// Reset Unit Vectors by gridSize
		for(int i=0; i<3; i++){
			bases [i] *= gridSize;
		}
	}

	// Use this for initialization
	void Start () {
		objectsThatTakeTurns = GetComponentsInChildren<TurnTakerScript> ();
		StartCoroutine (TurnHandler());

		player = GameObject.FindGameObjectWithTag ("Player");

	}
	
	// Update is called once per frame
	void Update () {


	}

	private IEnumerator TurnHandler(){
		while (true) {
			//Debug.Log ("Checking");
			if (Input.anyKeyDown) {
				if (Input.GetMouseButtonDown (0) || Input.GetMouseButtonDown (1) || Input.GetMouseButtonDown (2)) {

				} else if (!Input.GetKey(KeyCode.Keypad5)){
					
					player.GetComponent<PlayerMoveScript> ().turnShip ();

				} else {
					foreach (TurnTakerScript objectToTakeTurn in objectsThatTakeTurns) {
						while (turnLock) {
							yield return null;
						}
						objectToTakeTurn.takeTurn ();

					}			

				}



			}
			yield return new WaitForFixedUpdate();
		}

	}

}
