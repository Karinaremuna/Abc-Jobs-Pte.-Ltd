
package com.AbcJobs.dao;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.AbcJobs.beans.Thread;

@Repository
public interface ThreadRepository extends JpaRepository<Thread, Integer> {

	Thread findByThreadMessage(String threadmessage);
	


}
