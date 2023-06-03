package com.project.user.management.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.user.management.entity.UserRole;

@Repository
public interface UserRoleRepository extends JpaRepository<UserRole, String> {

}
