package com.project.person.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.person.entity.TutorInterest;

@Repository
public interface TutorInterestRepository extends JpaRepository<TutorInterest, String> {

}
