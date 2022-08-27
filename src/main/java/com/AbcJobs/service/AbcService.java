package com.AbcJobs.service;

import java.util.List;

import com.AbcJobs.beans.ApplyJob;
import com.AbcJobs.beans.BulkEmail;
import com.AbcJobs.beans.Job;
import com.AbcJobs.beans.Thread;
import com.AbcJobs.beans.User;

public interface AbcService {
	public String addUser(User us);
	public List<User> showAll();
	public List<User> showuser(String name);
	public void deleteUserData(int id);
	public User searchUser(int id);
	public void saveUser(User user);
	public String updtUser(User us);
	public User ulogin(String username);
//	JOB
	public String addJob(Job job);
	public List<Job> showJobs();
	public void saveJob(Job job);
	public Job uJob(int jobid);
	public void deleteJobData(int id);
	public String updtJob(Job jobs);
	public Job searchJob(int id);
//	BULK EMAIL
	public String addBulkEmail(BulkEmail bulkemail);
	public List<BulkEmail> showBulkEmail();
	public void sendBulkEmail(String recipients, String subject, String emailMessage );
	public void saveBulk(BulkEmail bulkemail);
//	THREAD
	public String addThread(Thread thread);
	public List<Thread> showThread();
	public Thread uThread(String threadmessage);
	public void saveThread(Thread thread);
	public void deleteThread(int id);
//APPLY JOB
	public void appliedJob(ApplyJob applyjob);
}
