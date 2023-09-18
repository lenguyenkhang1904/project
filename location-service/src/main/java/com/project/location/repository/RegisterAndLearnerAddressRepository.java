package com.project.location.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.project.location.entity.RegisterAndLearnerAddress;

@Repository
public interface RegisterAndLearnerAddressRepository extends JpaRepository<RegisterAndLearnerAddress, String> {

	@Modifying
	@Query("DELETE FROM RegisterAndLearnerAddress ra WHERE ra.registerAndLearnerId=:registerAndLearnerId")
	void deleteByRegisterAndLearnerId(@Param("registerAndLearnerId") String registerAndLearnerId);

}
