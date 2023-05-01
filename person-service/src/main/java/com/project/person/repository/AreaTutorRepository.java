package com.project.person.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.person.entity.AreaTutor;

@Repository
public interface AreaTutorRepository extends JpaRepository<AreaTutor, String> {

}
