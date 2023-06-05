package com.project.person.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.person.entity.RegisterAndLearnerRelationship;

@Repository
public interface RegisterAndLearnerRelationshipRepository extends JpaRepository<RegisterAndLearnerRelationship, String> {

}
