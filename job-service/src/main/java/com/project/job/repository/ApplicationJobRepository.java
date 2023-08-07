package com.project.job.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.project.job.entity.ApplicationJob;

@Repository
public interface ApplicationJobRepository extends JpaRepository<ApplicationJob, String> {
	
	@Modifying
	@Query("DELETE FROM ApplicationJob appJob WHERE appJob.job.id =:jobId")
	void deleteByJobId(@Param("jobId") String jobId);

}
