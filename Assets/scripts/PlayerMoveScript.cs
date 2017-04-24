using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMoveScript : TurnTakerScript {

	public Dictionary <string, KeyCode> moveKeyDict;

	public GameObject crumb;
	private GameObject crumbTrail;
	public List <LatticeVector> visited;

	public override void Start(){
		base.Start ();

		setupMoveGuide ();
		setupPlayerBox ();

		setMoveKeyBindings ();

		crumbTrail = GameObject.Find ("CrumbTrail");

		visited = new List<LatticeVector> ();
		GameObject newCrumb = Instantiate (crumb, destination, Quaternion.identity);
		newCrumb.transform.SetParent(crumbTrail.transform);
		visited.Add (latticePosition);

	}
		


	public override void takeTurn(){

		Debug.Log ("Player Taking Turn!");

		foreach (var moveKeyPress in moveKeyDict) {
			if (Input.GetKeyDown (moveKeyPress.Value) && Input.GetKey (KeyCode.Keypad5)) {
				//Debug.Log ("Test Moving " + moveKeyPress.Key);
				latticePosition += moveLatticeDict[moveKeyPress.Key];
				targetDir = moveLatticeDict [moveKeyPress.Key].getWorldVector (master.bases);
				destination = destination + targetDir;

				master.turnLock = true;
				objectTurnLock = true;
				break; // only one keypress allowed

			}
	
		}

		//Debug.Log ("Length " + visited.Count.ToString());

	}

	public override void Update(){
		if (master.turnLock && objectTurnLock) {
			if (Vector3.Distance (destination, transform.position) > moveStep*0.001f) {

				transform.position = Vector3.MoveTowards(transform.position, destination, moveStep);


			} else {

				master.turnLock = false;
				objectTurnLock = false;

				if (visited.Contains(latticePosition)){

					// Do nothing
					// Debug.Log("Already visited site");
				} else {
					// Add crumb
					GameObject newCrumb = Instantiate (crumb, destination, Quaternion.identity);
					newCrumb.transform.SetParent(crumbTrail.transform);
					visited.Add (latticePosition);
				}


			}

		}

		Vector3 newDir = Vector3.RotateTowards(objectMesh.transform.forward, targetDir, rotateStep, 0.0F);
		objectMesh.transform.rotation = Quaternion.LookRotation(newDir);

		a1 = latticePosition.a1;
		a2 = latticePosition.a2;
		a3 = latticePosition.a3;

	}



	public void turnShip(){
		Debug.Log ("Rotating");
		foreach (var moveKeyPress in moveKeyDict) {
			if (Input.GetKeyDown (moveKeyPress.Value) && !Input.GetKey (KeyCode.Keypad5)) {
				targetDir = moveLatticeDict [moveKeyPress.Key].getWorldVector (master.bases);
				break; // only one additional keypress allowed
			}

		}

	}


	void setupMoveGuide(){
		float scale = master.gridSize;
		GameObject moveGuide = GameObject.FindGameObjectWithTag ("MoveGuide");
		moveGuide.transform.localScale = new Vector3 (scale/2f, scale/2f, scale/2f);
	
	}

	void setupPlayerBox (){
		float scale = master.gridSize;
		GameObject rhomDoc = GameObject.FindGameObjectWithTag ("PlayerBox");
		rhomDoc.transform.localScale = new Vector3 (scale, scale, scale);
		LineRenderer[] lines = GetComponentsInChildren<LineRenderer> ();

		foreach (LineRenderer line in lines) {
			line.startColor = Color.white;
			line.endColor = Color.white;
			line.startWidth = scale * 0.02f;
			line.endWidth = scale * 0.02f;
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
