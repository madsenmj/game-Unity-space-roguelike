using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TurnTakerScript : MonoBehaviour {


	public Vector3 destination;
	public float positionThreshold = 1f;
	public float forceScale = 1000f;
	public bool objectTurnLock = false;

	public virtual void Start(){
		destination = transform.position;

	}

	public virtual void Update(){
		//Debug.Log ("Master Turn Lock; " + GetComponentInParent<TurnMasterScript> ().turnLock.ToString () +
		//	" " + transform.name + " Turn Lock " + objectTurnLock.ToString() + " Distance: "
		//			+ Vector3.Distance (destination, transform.position).ToString ()); 
		if (GetComponentInParent<TurnMasterScript> ().turnLock && objectTurnLock) {
			if (Vector3.Distance (destination, transform.position) > positionThreshold) {
				//Debug.Log ("Pushing " + transform.name);
				GetComponent<Rigidbody> ().AddForce ((destination - transform.position) * forceScale);
			} else {
				
				GetComponentInParent<TurnMasterScript> ().turnLock = false;
				objectTurnLock = false;
			}
		}

	}

	public virtual void takeTurn(){
		//GetComponentInParent<TurnMasterScript> ().turnLock = true;
		Debug.Log (transform.name + " Taking Turn.");

	}



}
