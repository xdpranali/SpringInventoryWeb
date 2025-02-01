package com.r3sys.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class ProcessedMaterial
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int pid;
	private String pName;
	private double pQuantity;
	private String pUnit;
	private float pCostPerUnit;
	
	@Override
	public String toString() {
		return "ProcessedMaterial [pid=" + pid + ", pName=" + pName + ", pQuantity=" + pQuantity + ", pUnit=" + pUnit
				+ ", pCostPerUnit=" + pCostPerUnit + "]";
	}
	public ProcessedMaterial() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProcessedMaterial(int pid, String pName, double pQuantity, String pUnit, float pCostPerUnit) {
		super();
		this.pid = pid;
		this.pName = pName;
		this.pQuantity = pQuantity;
		this.pUnit = pUnit;
		this.pCostPerUnit = pCostPerUnit;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public double getpQuantity() {
		return pQuantity;
	}
	public void setpQuantity(double pQuantity) {
		this.pQuantity = pQuantity;
	}
	public String getpUnit() {
		return pUnit;
	}
	public void setpUnit(String pUnit) {
		this.pUnit = pUnit;
	}
	public float getpCostPerUnit() {
		return pCostPerUnit;
	}
	public void setpCostPerUnit(float pCostPerUnit) {
		this.pCostPerUnit = pCostPerUnit;
	}
	
	
}
