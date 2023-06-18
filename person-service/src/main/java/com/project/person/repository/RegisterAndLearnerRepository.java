package com.project.person.repository;

import java.util.List;

import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.project.person.entity.RegisterAndLearner;

@Repository
public interface RegisterAndLearnerRepository extends JpaRepository<RegisterAndLearner, String> {
	
	List<RegisterAndLearner> findByPhonesContaining(String phones);

	List<RegisterAndLearner> findByFullNameContaining(String fullName);
	
	List<RegisterAndLearner> findByEnglishFullNameContaining(String englishFullName);
	
	@Query("SELECT r.fullName FROM RegisterAndLearner r WHERE r.englishFullName LIKE CONCAT('%',:englishFullName,'%')")
	List<String> findByEnglishNameAndShowFullName(@Param("englishFullName") String englishFullName);
	
	@Query("SELECT r.fullName FROM RegisterAndLearner r WHERE r.fullName LIKE CONCAT('%',:fullName,'%')")
	List<String> findByFullNameAndShowFullName(@Param("fullName") String fullName);
	
	List<RegisterAndLearner> findByVocativeAndFullNameContaining(String vocative,String fullName);
	
	@Query("SELECT r.fullName FROM RegisterAndLearner r WHERE r.vocative=:vocative AND r.fullName LIKE CONCAT('%',:fullName,'%')")
	List<String> findByVocativeAndFullNameAndShowFullName(@Param("vocative") String vocative,@Param("fullName") String fullName);
	
	List<RegisterAndLearner> findByVocativeAndEnglishFullNameContaining(String vocative,String englishFullName);
	
	@Query("SELECT r.fullName FROM RegisterAndLearner r WHERE r.vocative=:vocative AND r.englishFullName LIKE CONCAT('%',:englishFullName,'%')")
	List<String> findByVocativeAndEnglishNameAndShowFullName(@Param("vocative") String vocative,@Param("englishFullName") String englishFullName);
	
	@Query("SELECT r FROM RegisterAndLearner r WHERE r.avatar IS NOT NULL")
	List<RegisterAndLearner> findTutorBeforeSynchronize();
}
