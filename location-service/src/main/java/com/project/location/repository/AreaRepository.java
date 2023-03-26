package com.project.location.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.location.entity.Area;

@Repository
public interface AreaRepository extends JpaRepository<Area, String> {

}
