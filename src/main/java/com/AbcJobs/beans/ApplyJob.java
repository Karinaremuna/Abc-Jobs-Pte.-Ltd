package com.AbcJobs.beans;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name ="apply_job")
public class ApplyJob {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int applyId;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "userId",referencedColumnName = "userid")
	private User applyJobUser;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "jobId",referencedColumnName = "jobid")
	private Job applyJobId;
	
	public ApplyJob() {
		
	}
	
	public ApplyJob(int applyId, User applyJobUser, Job applyJobId) {
		super();
		this.applyId = applyId;
		this.applyJobUser = applyJobUser;
		this.applyJobId = applyJobId;
	}
	public int getApplyId() {
		return applyId;
	}
	public void setApplyId(int applyId) {
		this.applyId = applyId;
	}
	public User getApplyJobUser() {
		return applyJobUser;
	}
	public void setApplyJobUser(User applyJobUser) {
		this.applyJobUser = applyJobUser;
	}
	public Job getApplyJobId() {
		return applyJobId;
	}
	public void setApplyJobId(Job applyJobId) {
		this.applyJobId = applyJobId;
	}
	@Override
	public String toString() {
		return "ApplyJob [applyId=" + applyId + ", applyJobUser=" + applyJobUser + ", applyJobId=" + applyJobId + "]";
	}
	
	

}
