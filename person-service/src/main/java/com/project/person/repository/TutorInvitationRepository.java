package com.project.person.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.person.entity.TutorInvitation;

@Repository
public interface TutorInvitationRepository extends JpaRepository<TutorInvitation, String> {

}