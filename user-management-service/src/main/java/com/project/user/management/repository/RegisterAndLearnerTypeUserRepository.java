package com.project.user.management.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.project.user.management.entity.RegisterAndLearnerTypeUser;

@Repository
public interface RegisterAndLearnerTypeUserRepository extends JpaRepository<RegisterAndLearnerTypeUser, String> {
	
	
	@Modifying
	@Query(value = "DELETE FROM register_and_learner_type_user rartu WHERE rartu.user_id =:userId", nativeQuery = true)
	void deleteByUserId(final String userId);

}
