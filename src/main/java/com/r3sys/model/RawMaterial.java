package com.r3sys.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class RawMaterial
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String rName;
	private double rQuantity;
	private String rUnit;
	private float rCostPerUnit;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getrName() {
		return rName;
	}
	public void setrName(String rName) {
		this.rName = rName;
	}
	public double getrQuantity() {
		return rQuantity;
	}
	public void setrQuantity(double rQuantity) {
		this.rQuantity = rQuantity;
	}
	public String getrUnit() {
		return rUnit;
	}
	public void setrUnit(String rUnit) {
		this.rUnit = rUnit;
	}
	public float getrCostPerUnit() {
		return rCostPerUnit;
	}
	public void setrCostPerUnit(float rCostPerUnit) {
		this.rCostPerUnit = rCostPerUnit;
	}
	public RawMaterial(int id, String rName, double rQuantity, String rUnit, float rCostPerUnit) {
		super();
		this.id = id;
		this.rName = rName;
		this.rQuantity = rQuantity;
		this.rUnit = rUnit;
		this.rCostPerUnit = rCostPerUnit;
	}
	public RawMaterial() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "RawMaterial [id=" + id + ", rName=" + rName + ", rQuantity=" + rQuantity + ", rUnit=" + rUnit
				+ ", rCostPerUnit=" + rCostPerUnit + "]";
	}
	
	

}
