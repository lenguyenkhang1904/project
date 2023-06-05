package com.project.user.management.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.project.user.management.entity.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role, String> {

	@Query(value = "SELECT r.id, r.name, description FROM public.role r "
			+ " JOIN public.user_role usr ON usr.role_id = r.id WHERE usr.user_id =:userId ", nativeQuery = true)
	List<Object> findAllRoleByUsername(final @Param("userId") String userId);
}
