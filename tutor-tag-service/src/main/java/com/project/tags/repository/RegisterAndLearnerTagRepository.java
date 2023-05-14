package com.project.tags.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.tags.entity.RegisterAndLearnerTag;

@Repository
public interface RegisterAndLearnerTagRepository extends JpaRepository<RegisterAndLearnerTag, String>  {
	int countById(String id);
}
