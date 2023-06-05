package com.project.location.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.location.entity.RegisterAndLearnerAddress;

@Repository
public interface RegisterAndLearnerAddressRepository extends JpaRepository<RegisterAndLearnerAddress, String> {

}
