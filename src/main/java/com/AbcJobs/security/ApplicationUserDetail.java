package com.AbcJobs.security;

import java.util.Collection;
import java.util.Collections;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

import com.AbcJobs.beans.Job;
import com.AbcJobs.beans.User;


@Component
public class ApplicationUserDetail implements UserDetails{

	private static final long serialVersionUID = 1L;
	User user;
	Job job;
	Thread thread;
	public ApplicationUserDetail() {
		super();
	}
	public ApplicationUserDetail(User user) {
		super();
		this.user=user;
	}
	public ApplicationUserDetail (Job job) {
		super();
		this.job=job;
	}
	public ApplicationUserDetail (Thread thread) {
		super();
		this.thread=thread;
	}
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return Collections.singleton(new SimpleGrantedAuthority(user.getRole()));
	}
	

	@Override
	public String getPassword() {
		return user.getPassword();
	}

	@Override
	public String getUsername() {
		return user.getUsername();
	}
	
	public String getJobTitle() {
		return job.getJobTitle();
	}
	
	
	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}
	public String getFullname(String fullname){
		return this.user.getFirstname()+""+this.user.getLastname();
		
	}
	public void setFirstname(String firstname) {
		this.user.setFirstname(firstname);
		
	}	
	public void setLastname(String lastname) {
		this.user.setLastname(lastname);
	}
	public void getJobAddress(String jobAddress) {
		this.job.setJobAddress(jobAddress);
	}
	
	@Override
	protected Object clone() throws CloneNotSupportedException {
		return super.clone();
	}
	
	}


