package com.project.person.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.person.entity.TutorIntivation;

@Repository
public interface TutorIntivationRepository extends JpaRepository<TutorIntivation, String> {

}
