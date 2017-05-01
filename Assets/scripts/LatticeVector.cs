using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LatticeVector : IEqualityComparer<LatticeVector>
{
	public int a1, a2, a3;

	public LatticeVector ()
	{
		this.a1 = 0;
		this.a2 = 0;
		this.a3 = 0;
	}

	public LatticeVector (int x, int y, int z)
	{
		this.a1 = x;
		this.a2 = y;
		this.a3 = z;
	}


	public static LatticeVector operator +(LatticeVector a, LatticeVector b) {
		return new LatticeVector(a.a1 + b.a1, a.a2 + b.a2, a.a3 + b.a3);
	}

	public static LatticeVector operator -(LatticeVector a, LatticeVector b) {
		return new LatticeVector(a.a1 - b.a1, a.a2 - b.a2, a.a3 - b.a3);
	}

	public static LatticeVector operator *(LatticeVector a, int b) {
		return new LatticeVector(a.a1 * b, a.a2 * b, a.a3 * b);
	}

	public static bool operator ==(LatticeVector a, LatticeVector b) {
		return a.a1 == b.a1 && a.a2 == b.a2 && a.a3 == b.a3;
	}

	public static bool operator !=(LatticeVector a, LatticeVector b) {
		return a.a1 != b.a1 || a.a2 != b.a2 || a.a3 != b.a3;
	}

	public override string ToString(){
		return ("LV (" + a1.ToString() + "," + a2.ToString() + "," + a3.ToString() + ")");

	}

	public Vector3 getWorldVector(Vector3[] bases){
		return bases [0] * this.a1 + bases [1] * this.a2 + bases [2] * this.a3;
	}


	public override bool Equals(System.Object obj)
	{
		//Debug.Log ("Equals 1 Checked");
		// If parameter is null return false.
		if (obj == null)
		{
			return false;
		}

		// If parameter cannot be cast to Point return false.
		LatticeVector p = obj as LatticeVector;
		if ((System.Object)p == null)
		{
			return false;
		}

		// Return true if the fields match:
		return a1 == p.a1 && a2 == p.a2 && a3 == p.a3;
	}

	public bool Equals(LatticeVector p)
	{
		//Debug.Log ("Equals 2 Checked");
		// If parameter is null return false:
		if ((object)p == null)
		{
			return false;
		}

		// Return true if the fields match:
		return a1 == p.a1 && a2 == p.a2 && a3 == p.a3;
	}

	public bool Equals(LatticeVector a, LatticeVector b) {
		//Debug.Log ("Equals 3 Checked");
		return a.a1 == b.a1 && a.a2 == b.a2 && a.a3 == b.a3;
	}

	public override int GetHashCode()
	{
		//Debug.Log ("Hash 1 Checked");
		return string.Format ("{0}-{1}-{2}", a1, a2, a3).GetHashCode ();
	}

	public int GetHashCode(LatticeVector p)
	{
		//Debug.Log ("Hash 2 Checked");
		return string.Format ("{0}-{1}-{2}", p.a1, p.a2, p.a3).GetHashCode ();
	}

}
