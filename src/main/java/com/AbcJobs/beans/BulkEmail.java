package com.AbcJobs.beans;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "bulk_email")
public class BulkEmail {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int bulkid;
	private String recipients;
	private String subject;
	private String emailMessages;
	
	public BulkEmail() {
		
	}

	public BulkEmail(int bulkid, String recipients, String subject, String emailMessages) {
		super();
		this.bulkid = bulkid;
		this.recipients = recipients;
		this.subject = subject;
		this.emailMessages = emailMessages;
	}


	public int getBulkid() {
		return bulkid;
	}


	public void setBulkid(int bulkid) {
		this.bulkid = bulkid;
	}


	public String getRecipients() {
		return recipients;
	}

	public void setRecipients(String recipients) {
		this.recipients = recipients;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getEmailMessages() {
		return emailMessages;
	}

	public void setEmailMessages(String emailMessages) {
		this.emailMessages = emailMessages;
	}

	@Override
	public String toString() {
		return "BulkEmail [bulkid=" + bulkid + ", recipients=" + recipients + ", subject=" + subject
				+ ", emailMessages=" + emailMessages + "]";
	}
	
	
}
