package com.r3sys.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class IssueProcessed
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int pissueId;
	private int pid;
	private String pName;
	private String pissueName;
	private double piQuantity;
	private String pissueDate;
	private String pissueTime;
	
	@Override
	public String toString() {
		return "IssueProcessed [pissueId=" + pissueId + ", pid=" + pid + ", pName=" + pName + ", pissueName="
				+ pissueName + ", piQuantity=" + piQuantity + ", pissueDate=" + pissueDate + ", pissueTime="
				+ pissueTime + "]";
	}
	public IssueProcessed() {
		super();
		// TODO Auto-generated constructor stub
	}
	public IssueProcessed(int pissueId, int pid, String pName, String pissueName, double piQuantity, String pissueDate,
			String pissueTime) {
		super();
		this.pissueId = pissueId;
		this.pid = pid;
		this.pName = pName;
		this.pissueName = pissueName;
		this.piQuantity = piQuantity;
		this.pissueDate = pissueDate;
		this.pissueTime = pissueTime;
	}
	public int getPissueId() {
		return pissueId;
	}
	public void setPissueId(int pissueId) {
		this.pissueId = pissueId;
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
	public String getPissueName() {
		return pissueName;
	}
	public void setPissueName(String pissueName) {
		this.pissueName = pissueName;
	}
	public double getPiQuantity() {
		return piQuantity;
	}
	public void setPiQuantity(double piQuantity) {
		this.piQuantity = piQuantity;
	}
	public String getPissueDate() {
		return pissueDate;
	}
	public void setPissueDate(String pissueDate) {
		this.pissueDate = pissueDate;
	}
	public String getPissueTime() {
		return pissueTime;
	}
	public void setPissueTime(String pissueTime) {
		this.pissueTime = pissueTime;
	}
	
	
	

}
