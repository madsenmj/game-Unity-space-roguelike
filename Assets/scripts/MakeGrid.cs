using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MakeGrid : MonoBehaviour {

	public GameObject rhomDoc;
	public int nA1;
	public int nA2;
	public int nA3;


	// Use this for initialization
	void Start () {
		float scale = GetComponentInParent<TurnMasterScript> ().gridSize;
		TurnMasterScript master = GetComponentInParent<TurnMasterScript> ();

		rhomDoc.transform.localScale = new Vector3 (scale, scale, scale);

		LineRenderer[] lines = rhomDoc.GetComponentsInChildren<LineRenderer> ();

		foreach (LineRenderer line in lines) {
			line.startColor = Color.green;
			line.endColor = Color.green;
			line.startWidth = scale * 0.01f;
			line.endWidth = scale * 0.01f;
		}


		for (int i1 = -nA1; i1 < nA1+1; i1++) {
			for (int i2 = -nA2; i2 < nA2+1; i2++) {
				for (int i3 = -nA3; i3 < nA3+1; i3++) {
					LatticeVector lv = new LatticeVector (i1, i2, i3);
					Instantiate (rhomDoc, lv.getWorldVector(master.bases), Quaternion.identity);
				}
			}
		}



	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
