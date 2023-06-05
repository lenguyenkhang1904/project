package com.project.person.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.person.entity.Schooler;

@Repository
public interface SchoolerRepository extends JpaRepository<Schooler, String> {

}
