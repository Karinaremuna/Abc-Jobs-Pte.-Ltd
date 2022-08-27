package com.AbcJobs.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.AbcJobs.beans.User;


@Repository
public interface UserRepository extends JpaRepository<User, Integer> {
	User findByUsername (String login);
	List<User> findByUsernameContaining (String search);

}


