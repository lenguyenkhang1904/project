package com.project.task.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.project.task.entity.SubjectGroupTask;

@Repository
public interface SubjecGroupTaskRepository extends JpaRepository<SubjectGroupTask, String> {
	
	@Modifying
	@Query(value = "DELETE FROM subject_group_task sgt WHERE sgt.task_id =:taskId", nativeQuery = true)
	void deleteByTaskId(@Param("taskId") String taskId);
	
	@Query("SELECT sgt.subjectGroupId FROM SubjectGroupTask sgt WHERE sgt.task.id =:taskId")
	List<String> getSubejectGroupIdByTaskId(@Param("taskId") String taskId);

}
