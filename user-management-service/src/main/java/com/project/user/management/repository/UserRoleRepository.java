package com.project.user.management.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.project.user.management.entity.UserRole;

@Repository
public interface UserRoleRepository extends JpaRepository<UserRole, String> {
	
	@Modifying
	@Query(value = "DELETE FROM user_role usr WHERE usr.user_id =:userId", nativeQuery = true)
	void deleteByUserId(final String userId);

}
