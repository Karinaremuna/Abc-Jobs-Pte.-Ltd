package com.AbcJobs.AbcJobsCom;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.stereotype.Repository;

import com.AbcJobs.dao.UserRepository;
import com.AbcJobs.service.AbcService;
import com.AbcJobs.beans.User;

//@SpringBootTest
//class AbcJobsComApplicationTests {
//	@Autowired
//	UserRepository userrepo;
//	@Test
//	void contextLoads() {
//	}
//	
//	@Test
//	void isItExist() {	
//		User result = userrepo.findByUsername("karinaremuna");
//		assertThat(result).isNotNull();
//	}
//}


@SpringBootTest
class AbcJobsComApplicationTests {
	@Autowired
	AbcService abcservice;
	@Test
	void contextLoads() {
	}
	
	@Test
	void registration() {	
		User user = new User();
		user.setFirstname("Oaklyn");
		user.setLastname("Okra");
		user.setUsername("Oaklyn");
		user.setEmail("oaklyn@gmail.com");
		user.setCountry("Vienna, Austria");
		user.setContact("11125425");
		user.setPassword("12345678");
		abcservice.addUser(user);
		System.out.println(user);
		assertThat(user).isNotNull();
	}
}