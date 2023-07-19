package com.project.job.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.project.job.entity.TutorByTheTimeCreatingJob;

@Repository
public interface TutorByTheTimeCreatingJobRepository extends JpaRepository<TutorByTheTimeCreatingJob, String> {
	
	@Modifying
	@Query(value = "DELETE FROM TutorByTheTimeCreatingJob tbcj WHERE tbcj.job.id =:jobId")
	void deleteByJobId(@Param("jobId") String jobId);
}
