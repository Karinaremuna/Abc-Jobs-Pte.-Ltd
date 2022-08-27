package com.AbcJobs.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import com.AbcJobs.beans.Job;

@Repository
public interface JobRepository extends JpaRepository<Job, Integer>{
	Job findByJobTitle (String viewjob);
	List<Job> findByJobTitleContaining(String searchs);

}
