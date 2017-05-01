using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMoveScript : TurnTakerScript {



	public GameObject crumb;
	private GameObject crumbTrail;
	public List <LatticeVector> visited;

	public float HUDScale = 200f;

	public override void Start(){
		base.Start ();

		setupMoveGuide ();
		setupPlayerBox ();



		crumbTrail = GameObject.Find ("CrumbTrail");

		visited = new List<LatticeVector> ();
		GameObject newCrumb = Instantiate (crumb, destination, Quaternion.identity);
		newCrumb.transform.SetParent(crumbTrail.transform);
		visited.Add (latticePosition);

		master.playableGrid [latticePosition] = "player";

	}
		


	public override void takeTurn(string direction){

		//Debug.Log ("Player Taking Turn!");

		//Debug.Log ("Test Moving " + direction);
		LatticeVector newPosition = latticePosition +  moveLatticeDict[direction];

		Debug.Log ("Player attempting to move to " + newPosition.ToString ());
		string attemptStatus = checkSpace (newPosition);
		if (attemptStatus == "open") {

			master.playableGrid [latticePosition] = "open";
			master.playableGrid [newPosition] = "player";

			latticePosition = newPosition;
			targetDir = moveLatticeDict [direction].getWorldVector (master.bases);
			destination = destination + targetDir;



			master.turnLock = true;
			objectTurnLock = true;
				
		} else if (attemptStatus == "NPC") {



			Debug.Log ("Player attacks NPC.");
			targetDir = moveLatticeDict [direction].getWorldVector (master.bases);


		}
				

	


		//Debug.Log ("Length " + visited.Count.ToString());

	}

	public override void Update(){
		if (master.turnLock && objectTurnLock) {
			if (Vector3.Distance (destination, transform.position) > moveStep*0.00001f) {

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



	public void turnShip(string direction){
		Debug.Log ("Rotating");
		targetDir = moveLatticeDict [direction].getWorldVector (master.bases);
	}


	void setupMoveGuide(){
		
		GameObject moveGuide = GameObject.FindGameObjectWithTag ("MoveGuide");
		moveGuide.transform.localScale = new Vector3 (HUDScale/2f, HUDScale/2f, HUDScale/2f);
	
	}

	void setupPlayerBox (){
		
		GameObject rhomDoc = GameObject.FindGameObjectWithTag ("PlayerBox");
		rhomDoc.transform.localScale = new Vector3 (HUDScale, HUDScale, HUDScale);
		LineRenderer[] lines = GetComponentsInChildren<LineRenderer> ();

		foreach (LineRenderer line in lines) {
			line.startWidth = HUDScale * 0.02f;
			line.endWidth = HUDScale * 0.02f;
		}
	
	}


		

}
