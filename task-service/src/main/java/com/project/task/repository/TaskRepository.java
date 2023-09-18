package com.project.task.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.project.task.entity.Task;

@Repository
public interface TaskRepository extends JpaRepository<Task, String> {
	
	@Query("SELECT t FROM Task t WHERE t.createdAt=(SELECT MAX(createdAt) FROM Task)")
	Task findByTaskLast();
	
	@Query("SELECT ta FROM Task ta")
	List<Task> findAllTask();

}
