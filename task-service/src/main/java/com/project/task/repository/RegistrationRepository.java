package com.project.task.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.project.task.entity.Registration;

@Repository
public interface RegistrationRepository extends JpaRepository<Registration, String> {
	
	@Query("SELECT re FROM Registration re")
	List<Registration> findAllRegistration();
}
