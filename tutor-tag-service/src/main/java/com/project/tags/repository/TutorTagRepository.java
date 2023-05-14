package com.project.tags.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.tags.entity.TutorTag;

@Repository
public interface TutorTagRepository extends JpaRepository<TutorTag, String> {
	int countById(String id);
}
