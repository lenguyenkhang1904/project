package com.project.request.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.request.entity.TutorRequest;

@Repository
public interface TutorRequestRepository extends JpaRepository<TutorRequest, String> {

}
