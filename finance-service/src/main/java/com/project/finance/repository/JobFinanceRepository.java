package com.project.finance.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.finance.entity.JobFinance;

@Repository
public interface JobFinanceRepository extends JpaRepository<JobFinance, String> {

}
