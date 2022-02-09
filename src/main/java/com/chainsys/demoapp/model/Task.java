package com.chainsys.demoapp.model;

import java.util.Date;

public class Task {
	
	private String name;
	private String createdBy;
	private String priority;
	private String status;
	private Date createdDate;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public String getPriority() {
		return priority;
	}
	public void setPriority(String priority) {
		this.priority = priority;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	public Task() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Task(String name, String createdBy, String priority, String status, Date createdDate) {
		super();
		this.name = name;
		this.createdBy = createdBy;
		this.priority = priority;
		this.status = status;
		this.createdDate = createdDate;
	}
	
	

}
