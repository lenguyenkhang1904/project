package com.project.task.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.project.task.entity.Registration;

@Repository
public interface RegistrationRepository extends JpaRepository<Registration, String> {

	@Query("SELECT re FROM Registration re WHERE re.task.id =:taskId")
	List<Registration> findAllRegistration(@Param("taskId") String taskId);

	@Query(value = "SELECT COUNT(*) FROM registration reg WHERE reg.register_and_learner_id =:registerAndLearnerId AND reg.task_id=:taskId", nativeQuery = true)
	int countByTaskIdAndRegisterAndLearnerId(@Param("taskId") String taskId,
			@Param("registerAndLearnerId") String registerAndLearnerId);
}
