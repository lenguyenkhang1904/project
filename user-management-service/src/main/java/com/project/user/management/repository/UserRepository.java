package com.project.user.management.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.project.user.management.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User, String> {

	Optional<User> findByUsername(String username);
	
	@Query("SELECT u FROM User u WHERE ( u.username=:parameter OR u.email=:parameter OR u.phone=:parameter OR u.id=:parameter ) AND u.status = 'Active' ")
	public Optional<User> findUsernameByParameter(@Param("parameter") String parameter);

	@Query(nativeQuery = true, value = "SELECT usr.id, usr.email, usr.username, usr.status, usr.phone, STRING_AGG(userole.role_id, ', ') "
			+ "AS user_role FROM user_application usr JOIN user_role userole ON usr.id = userole.user_id WHERE usr.status = 'Active' GROUP BY usr.id")
	List<Object> findAllUser();

}
