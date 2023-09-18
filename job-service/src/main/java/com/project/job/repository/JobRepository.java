package com.project.job.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.project.job.entity.Job;

@Repository
public interface JobRepository extends JpaRepository<Job, String> {
	
	@Query("SELECT j FROM Job j WHERE j.updatedAt = (SELECT MAX(updatedAt) FROM Job)")
	Optional<Job> getLastUpdatedJob();

	@Query("SELECT j FROM Job j ")
	List<Job> findAllSyncUp();
}
