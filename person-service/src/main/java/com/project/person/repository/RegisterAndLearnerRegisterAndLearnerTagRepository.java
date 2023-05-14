package com.project.person.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.person.entity.RegisterAndLearnerRegisterAndLearnerTag;

@Repository
public interface RegisterAndLearnerRegisterAndLearnerTagRepository extends JpaRepository<RegisterAndLearnerRegisterAndLearnerTag, String> {

}
