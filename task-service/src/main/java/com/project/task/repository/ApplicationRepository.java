package com.project.task.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.project.task.entity.Application;

@Repository
public interface ApplicationRepository extends JpaRepository<Application, String> {
	
	@Query(value = "SELECT COUNT(*) FROM application app WHERE app.tutorId =:tutorId AND app.task_id=:taskId", nativeQuery = true)
	int countByTaskIdAndTutorId(@Param("taskId") String taskId, @Param("tutorId") Long tutorId);
	
	@Query("SELECT app FROM Application app")
	List<Application> findAllAppication();
	
}
