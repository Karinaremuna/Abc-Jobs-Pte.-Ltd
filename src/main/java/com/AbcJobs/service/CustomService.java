package com.AbcJobs.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.AbcJobs.dao.UserRepository;
import com.AbcJobs.security.ApplicationUserDetail;
import com.AbcJobs.beans.User;

@Service
public class CustomService implements UserDetailsService {
	@Autowired
	UserRepository userrepo;
    User user;
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		user=userrepo.findByUsername(username);
		if(user==null) {
			System.out.println("User name is Invalid");
		}
		return new ApplicationUserDetail(user);
	}
}
