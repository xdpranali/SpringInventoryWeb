package com.r3sys.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class IssueRaw
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int issueId;
	private int id;
	private String rName;
	private String issueName;
	private double iQuantity;
	private String issueDate;
	private String issueTime;
	
	public int getIssueId() {
		return issueId;
	}
	public void setIssueId(int issueId) {
		this.issueId = issueId;
	}
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
	public String getIssueName() {
		return issueName;
	}
	public void setIssueName(String issueName) {
		this.issueName = issueName;
	}
	public double getiQuantity() {
		return iQuantity;
	}
	public void setiQuantity(double iQuantity) {
		this.iQuantity = iQuantity;
	}
	public String getIssueDate() {
		return issueDate;
	}
	public void setIssueDate(String issueDate) {
		this.issueDate = issueDate;
	}
	public String getIssueTime() {
		return issueTime;
	}
	public void setIssueTime(String issueTime) {
		this.issueTime = issueTime;
	}
	public IssueRaw() {
		super();
		// TODO Auto-generated constructor stub
	}
	public IssueRaw(int issueId, int id, String rName, String issueName, double iQuantity, String issueDate,
			String issueTime) {
		super();
		this.issueId = issueId;
		this.id = id;
		this.rName = rName;
		this.issueName = issueName;
		this.iQuantity = iQuantity;
		this.issueDate = issueDate;
		this.issueTime = issueTime;
	}
	@Override
	public String toString() {
		return "IssueRaw [issueId=" + issueId + ", id=" + id + ", rName=" + rName + ", issueName=" + issueName
				+ ", iQuantity=" + iQuantity + ", issueDate=" + issueDate + ", issueTime=" + issueTime + "]";
	}
	
	
	
	
	
}
