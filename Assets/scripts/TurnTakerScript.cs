using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TurnTakerScript : MonoBehaviour {


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


	public virtual void Start(){
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

	}




	public virtual void Update(){

		if (master.turnLock && objectTurnLock) {
			if (Vector3.Distance (destination, transform.position) > moveStep*0.001f) {

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


		Debug.Log (transform.name + " Taking Turn.");

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
			{"DownLeftBackward",new LatticeVector(0,0,-1)}

		};
	}



}
