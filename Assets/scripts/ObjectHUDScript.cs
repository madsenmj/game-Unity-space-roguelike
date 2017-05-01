using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ObjectHUDScript : MonoBehaviour {

	private ObjectScript obScript; 
	public GameObject HUDPrefab;
	private Text scanText;
	public GameObject scannerPanel;
	public Canvas canvas;

	public float scannerRange = 3000f;

	private TurnMasterScript master;

	// Use this for initialization
	void Start () {
		obScript = GetComponent<ObjectScript> ();
		scannerPanel = Instantiate (HUDPrefab) as GameObject;
		scannerPanel.transform.SetParent (canvas.transform, true);
		scanText = scannerPanel.GetComponentInChildren<Text> ();
		scanText.text = "[]\n" + transform.name;


		master = FindObjectOfType<TurnMasterScript> ();
	}
	
	// Update is called once per frame
	void Update () {
		float distToPlayer = (transform.position - master.player.transform.position).magnitude;

		Vector3 screenPos = Camera.main.WorldToScreenPoint(transform.position);

		scannerPanel.transform.position = new Vector3(screenPos.x, screenPos.y, screenPos.z/100f);
		scannerPanel.SetActive (screenPos.z > 0f && distToPlayer <= scannerRange);

		//TextMesh tm = GetComponent<TextMesh> ();
	
		//tm.characterSize = (int) (distToPlayer / 50f);

		scanText.text = "[ ]\n" + transform.name + "\n" + (distToPlayer / 100f).ToString ("F1") + " km";

	}
}
	