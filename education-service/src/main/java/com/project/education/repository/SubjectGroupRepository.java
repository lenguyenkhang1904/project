package com.project.education.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.education.entity.SubjectGroup;

@Repository
public interface SubjectGroupRepository extends JpaRepository<SubjectGroup, String> {

}
