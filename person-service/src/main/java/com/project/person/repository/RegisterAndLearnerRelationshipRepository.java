package com.project.person.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.project.person.entity.RegisterAndLearnerRelationship;

@Repository
public interface RegisterAndLearnerRelationshipRepository extends JpaRepository<RegisterAndLearnerRelationship, String> {

	@Modifying
	@Query("DELETE FROM RegisterAndLearnerRelationship resh WHERE resh.registerAndLearnerWith.id=:id")
	void deleteByRegisterAndLearnerWithId(@Param("id") String id);

}
