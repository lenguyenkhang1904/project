package com.project.job.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.job.entity.Job;

@Repository
public interface JobRepository extends JpaRepository<Job, String> {

}
