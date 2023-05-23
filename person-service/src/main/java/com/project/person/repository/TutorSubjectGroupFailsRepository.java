package com.project.person.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.person.entity.TutorSubjectGroupFails;

@Repository
public interface TutorSubjectGroupFailsRepository extends JpaRepository<TutorSubjectGroupFails, String> {

}
