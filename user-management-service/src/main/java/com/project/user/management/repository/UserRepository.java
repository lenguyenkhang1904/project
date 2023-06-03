package com.project.user.management.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.project.user.management.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User, String> {

	Optional<User> findByUsername(String username);
	
	@Query("SELECT u FROM User u WHERE u.username=:parameter OR u.email=:parameter OR u.phone=:parameter ")
	public Optional<User> findUsernameByParameter(@Param("parameter") String parameter);

}
