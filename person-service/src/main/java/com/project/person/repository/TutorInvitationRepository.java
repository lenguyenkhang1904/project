package com.project.person.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.project.person.entity.TutorInvitation;

@Repository
public interface TutorInvitationRepository extends JpaRepository<TutorInvitation, String> {

	@Query("SELECT tutorIN FROM TutorInvitation tutorIN WHERE tutorIN.registerAndLearner.id =:reId "
			+ "AND tutorIN.tutor.id =:tutorId")
	Optional<TutorInvitation> findByRegisterAndTutor(@Param("reId") String reId, @Param("tutorId") Long tutorId);

}
