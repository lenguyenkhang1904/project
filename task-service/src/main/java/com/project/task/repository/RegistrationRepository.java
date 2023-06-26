package com.project.task.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.task.entity.Registration;

@Repository
public interface RegistrationRepository extends JpaRepository<Registration, String> {

}
