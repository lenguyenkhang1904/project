package com.project.person.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.person.entity.TutorTutorTag;

@Repository
public interface TutorTutorTagRepository extends JpaRepository<TutorTutorTag, String> {

}
