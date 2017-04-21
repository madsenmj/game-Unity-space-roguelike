using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TurnMasterScript : MonoBehaviour {

	public float gridSize;
	public TurnTakerScript[] objectsThatTakeTurns;
	public bool turnLock = false;

	// Use this for initialization
	void Start () {
		objectsThatTakeTurns = GetComponentsInChildren<TurnTakerScript> ();
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
