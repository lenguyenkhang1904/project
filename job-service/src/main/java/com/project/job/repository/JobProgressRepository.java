package com.project.job.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.job.entity.JobProgress;

@Repository
public interface JobProgressRepository extends JpaRepository<JobProgress, String> {

}
