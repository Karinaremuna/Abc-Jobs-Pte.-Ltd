package com.AbcJobs.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.AbcJobs.dao.ApplyJobRepository;
import com.AbcJobs.dao.BulkEmailRepository;
import com.AbcJobs.dao.JobRepository;
import com.AbcJobs.dao.ThreadRepository;
import com.AbcJobs.dao.UserRepository;
import com.AbcJobs.beans.ApplyJob;
import com.AbcJobs.beans.BulkEmail;
import com.AbcJobs.beans.Job;
import com.AbcJobs.beans.Thread;
import com.AbcJobs.beans.User;


@Service("myservice")
public class AbcServiceImp implements AbcService {
	private PasswordEncoder passwordencoder;
	@Autowired
	UserRepository userrepo;
	@Autowired
	JobRepository jobrepo;
	@Autowired
	ThreadRepository threadrepo;
	@Autowired
	private JavaMailSender  sendmail;
	@Autowired
	BulkEmailRepository bulkrepo;
	@Autowired
	ApplyJobRepository applyjobrepo;
	@Autowired
	public AbcServiceImp(PasswordEncoder encoder) {
		this.passwordencoder=encoder;
	}
	@Override
	public String addUser(User us) {
		us.setRole("USER");
		us.setPassword(passwordencoder.encode(us.getPassword()));
		 userrepo.save(us);
		 return "DATA ADDED";
	}
	@Override
	public List<User> showAll() {
		List<User> showAll=userrepo.findAll();
		return showAll;
	}

	@Override
	public List<User> showuser(String name) {
		List<User> showuser=userrepo.findByUsernameContaining(name);
		return showuser;
	}


	@Override
	public void deleteUserData(int id) {
		this.userrepo.deleteById(id);
	}

	@Override
	public User searchUser(int id) {
		Optional<User> userData=userrepo.findById(id);
		User ud=userData.get();
		return ud;
	}

	@Override
	public void saveUser(User user) {
		this.userrepo.save(user);
		
	}

	@Override
	public String updtUser(User us) {
		userrepo.save(us);
		 return "DATA ADDED";
	}

	@Override
	public User ulogin(String username) {
		User vallogin = userrepo.findByUsername(username);
		return vallogin;
	}

	@Override
	public String addJob(Job job) {	
		jobrepo.save(job);
		return "job added";
	}

	@Override
	public List<Job> showJobs() {
		List<Job> showJobs=jobrepo.findAll();
		return showJobs;
	}

	@Override
	public void saveJob(Job job) {
		this.jobrepo.save(job);
		
	}

	@Override
	public Job uJob(int jobid) {
		Optional<Job>valjob = jobrepo.findById(jobid);
		Job job = valjob.get();
		return job;
	}

	@Override
	public String addBulkEmail(BulkEmail bulkemail) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public void sendBulkEmail(String recipients, String subject, String emailMessage) {
		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(recipients);
		message.setSubject(subject);
		message.setText(emailMessage);
		
		sendmail.send(message);
		System.out.println("Email has successfully send to" + recipients);
		
	}

	@Override
	public List<BulkEmail> showBulkEmail() {
		List<BulkEmail> allBulkEmails = bulkrepo.findAll();
		return allBulkEmails;
	
	}
	@Override
	public void saveBulk(BulkEmail bulkemail) {
		bulkrepo.save(bulkemail);
	}
	@Override
	public void deleteJobData(int id) {
		this.jobrepo.deleteById(id);
		
	}
	@Override
	public String updtJob(Job jobs) {
		jobrepo.save(jobs);
		 return "DATA ADDED";
	}
	@Override
	public Job searchJob(int id) {
		Optional<Job> jobData=jobrepo.findById(id);
		Job jd=jobData.get();
		return jd;
	}
	@Override
	public String addThread(Thread thread) {
		threadrepo.save(thread);
		return "thread added";
	}
	@Override
	public List<Thread> showThread() {
		List<Thread> showThreads=threadrepo.findAll();
		return showThreads;
	}

	@Override
	public Thread uThread(String threadmessage) {
		Thread valthread=threadrepo.findByThreadMessage(threadmessage);
		return valthread;
	}
	@Override
	public void saveThread(Thread thread) {
		this.threadrepo.save(thread);
		
	}
	@Override
	public void deleteThread(int id) {
		this.threadrepo.deleteById(id);
		
	}
	@Override
	public void appliedJob(ApplyJob applyjob) {
		applyjobrepo.save(applyjob);
		
	}


	
	

	


}
