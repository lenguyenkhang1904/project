package com.project.finance.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.project.finance.entity.JobFinance;

@Repository
public interface JobFinanceRepository extends JpaRepository<JobFinance, String> {

	@Query("SELECT jf FROM JobFinance jf")
	List<JobFinance> findAllBeforeSync();

}
