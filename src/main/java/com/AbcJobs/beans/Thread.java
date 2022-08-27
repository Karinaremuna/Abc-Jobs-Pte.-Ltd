package com.AbcJobs.beans;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Thread")
public class Thread {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int threadid;
	private String username;
	private String threadMessage;

	public Thread() {
		
	}

	public Thread(int threadid, String username, String threadMessage) {
		super();
		this.threadid = threadid;
		this.username = username;
		this.threadMessage = threadMessage;
	}

	public int getThreadid() {
		return threadid;
	}

	public void setThreadid(int threadid) {
		this.threadid = threadid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getThreadMessage() {
		return threadMessage;
	}

	public void setThreadMessage(String threadMessage) {
		this.threadMessage = threadMessage;
	}

	@Override
	public String toString() {
		return "Thread [threadid=" + threadid + ", username=" + username + ", threadMessage=" + threadMessage + "]";
	}

	
	
}
