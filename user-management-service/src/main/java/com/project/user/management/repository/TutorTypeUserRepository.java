package com.project.user.management.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.project.user.management.entity.TutorTypeUser;

@Repository
public interface TutorTypeUserRepository extends JpaRepository<TutorTypeUser, String> {
	
	@Modifying
	@Query(value = "DELETE FROM tutor_type_user ttur WHERE ttur.user_id =:userId", nativeQuery = true)
	void deleteByUserId(final String userId);
}
