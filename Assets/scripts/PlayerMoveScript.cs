using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMoveScript : TurnTakerScript {


	public override void takeTurn(){
		Debug.Log ("Player Taking Turn!");


		if (Input.GetKeyDown (KeyCode.Keypad8)) {
			
			destination = destination + Vector3.forward * GetComponentInParent<TurnMasterScript> ().gridSize;
			Debug.Log ("Moving Forward to " + destination.ToString());
			GetComponentInParent<TurnMasterScript> ().turnLock = true;
			objectTurnLock = true;
		}

		if (Input.GetKeyDown (KeyCode.Keypad2)) {
			Debug.Log ("Moving Backward");
		}

		if (Input.GetKeyDown (KeyCode.Keypad4)) {
			Debug.Log ("Moving Left");
		}

		if (Input.GetKeyDown (KeyCode.Keypad6)) {
			Debug.Log ("Moving Right");
		}

		if (Input.GetKeyDown (KeyCode.Keypad5)) {
			Debug.Log ("Moving Up");
		}

		if (Input.GetKeyDown (KeyCode.Keypad0)) {
			Debug.Log ("Moving Down");
		}


	}




}
