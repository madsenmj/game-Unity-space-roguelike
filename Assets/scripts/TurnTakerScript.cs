using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Linq;

public class TurnTakerScript : ObjectScript {


	public Vector3 destination;
	public Vector3 targetDir;

	public int a1;
	public int a2;
	public int a3;

	public LatticeVector latticePosition;

	public float speed = 100f;
	public float turnSpeed = 1000f;

	public float moveStep;
	public float rotateStep;

	public bool objectTurnLock = false;

	public TurnMasterScript master;

	public Dictionary <string, LatticeVector> moveLatticeDict;

	public GameObject objectMesh;

	int health = 1;
	int healthRegenRate = 1;

	public override void Start(){
		master = GetComponentInParent<TurnMasterScript> ();

		latticePosition = new LatticeVector (a1, a2, a3);

		setMoveLatticeMappings ();

		// Cooerce position to lattice
		transform.position = latticePosition.getWorldVector(master.bases);

		destination = transform.position;

		speed = master.gridSize*10f;

		moveStep = speed * Time.deltaTime;
		rotateStep = turnSpeed * Time.deltaTime;

		objectMesh = this.transform.FindChild ("ObjectMesh").gameObject;
		targetDir = destination - transform.position;

		master.playableGrid [latticePosition] = "blocked";

	}




	public override void Update(){

		if (master.turnLock && objectTurnLock) {
			if (Vector3.Distance (destination, transform.position) > moveStep*0.00001f) {

				transform.position = Vector3.MoveTowards(transform.position, destination, moveStep);

			
			} else {
				
				master.turnLock = false;
				objectTurnLock = false;



			}

		}

		Vector3 newDir = Vector3.RotateTowards(objectMesh.transform.forward, targetDir, rotateStep, 0.0F);
		objectMesh.transform.rotation = Quaternion.LookRotation(newDir);

		a1 = latticePosition.a1;
		a2 = latticePosition.a2;
		a3 = latticePosition.a3;


	}

	public virtual void takeTurn(){
		//GetComponentInParent<TurnMasterScript> ().turnLock = true;


		//Debug.Log (transform.name + " Taking Turn.");


		bool notMovedYet = true;
		while (notMovedYet) {
			string key = moveLatticeDict.Keys.ToList ()[UnityEngine.Random.Range (0, moveLatticeDict.Count - 1)];

			LatticeVector attemptMove = latticePosition + moveLatticeDict [key];
			Debug.Log (transform.name + " moving to " + attemptMove.ToString());
			string attemptStatus = checkSpace (attemptMove);
			if (attemptStatus == "open") {
				master.playableGrid [latticePosition] = "open";
				master.playableGrid [attemptMove] = "NPC";
				latticePosition = attemptMove;
				notMovedYet = false;
				targetDir = moveLatticeDict [key].getWorldVector (master.bases);
				destination = destination + targetDir;

				master.turnLock = true;
				objectTurnLock = true; 
			} else if (attemptStatus == "player") {
				targetDir = moveLatticeDict [key].getWorldVector (master.bases);
				Debug.Log (transform.name + " attacks player! ");
			}
				
		}

	}

	public virtual void takeTurn(string direction){
		LatticeVector attemptMove = latticePosition + moveLatticeDict [direction];
		Debug.Log (transform.name + " moving to " + attemptMove.ToString());
		string attemptStatus = checkSpace (attemptMove);
		if (attemptStatus == "open") {
			master.playableGrid [latticePosition] = "open";
			master.playableGrid [attemptMove] = "NPC";
			latticePosition = attemptMove;
			targetDir = moveLatticeDict [direction].getWorldVector (master.bases);
			destination = destination + targetDir;

			master.turnLock = true;
			objectTurnLock = true; 
		} else if (attemptStatus == "player") {
			targetDir = moveLatticeDict [direction].getWorldVector (master.bases);
			Debug.Log (transform.name + " attacks player! ");
		}
	
	}


	void setMoveLatticeMappings (){
		moveLatticeDict = new Dictionary<string, LatticeVector> ()
		{
			{"Forward", 		new LatticeVector(1,0,0)},
			{"Backward", 		new LatticeVector(-1,0,0)},
			{"ForwardLeft", 	new LatticeVector(1,-1,0)},
			{"ForwardRight",	new LatticeVector(0,1,0)},
			{"BackwardLeft", 	new LatticeVector(0,-1,0)},
			{"BackwardRight", 	new LatticeVector(-1,1,0)},
			{"UpLeft",	 		new LatticeVector(0,-1,1)},
			{"DownRight", 		new LatticeVector(0,1,-1)},
			{"UpRightBackward", new LatticeVector(-1,0,1)},
			{"UpRightForward", 	new LatticeVector(0,0,1)},
			{"DownLeftForward", new LatticeVector(1,0,-1)},
			{"DownLeftBackward",new LatticeVector(0,0,-1)},
			{"Stay",			new LatticeVector(0,0,0)}
		};
	}


	public virtual string checkSpace(LatticeVector targetSpace){
		if (!master.playableGrid.ContainsKey (targetSpace)) {
			return "open";
		} else if (master.playableGrid.ContainsKey (targetSpace)) {
			return master.playableGrid [targetSpace];
		} else {
			return "blocked";
		}
	}


}
