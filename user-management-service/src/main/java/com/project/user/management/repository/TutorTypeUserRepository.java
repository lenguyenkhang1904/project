package com.project.user.management.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.user.management.entity.TutorTypeUser;

@Repository
public interface TutorTypeUserRepository extends JpaRepository<TutorTypeUser, String> {

}
