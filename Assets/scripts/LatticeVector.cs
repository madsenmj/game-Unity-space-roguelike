using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LatticeVector
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
		return new LatticeVector(a.a1 + b.a1, a.a2 + b.a2, a.a3 - b.a3);
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
		// If parameter is null return false:
		if ((object)p == null)
		{
			return false;
		}

		// Return true if the fields match:
		return a1 == p.a1 && a2 == p.a2 && a3 == p.a3;
	}

	public override int GetHashCode()
	{
		return a1 ^ a2 ^ a3;
	}

}
