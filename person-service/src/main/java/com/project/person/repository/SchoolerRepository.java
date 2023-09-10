package com.project.person.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.project.person.entity.Schooler;

@Repository
public interface SchoolerRepository extends JpaRepository<Schooler, String> {

	@Modifying
	@Query("DELETE FROM Schooler sc WHERE sc.registerAndLearner.id=:id")
	void deleteByregisterAndLearnerId(@Param("id") String id);

}
