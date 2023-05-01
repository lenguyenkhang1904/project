package com.project.person.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.project.person.entity.Tutor;

@Repository
public interface TutorRepository extends JpaRepository<Tutor, Long> {
	
	@Query("SELECT t FROM Tutor t WHERE  t.createdAt=(SELECT MAX(tu.createdAt) FROM Tutor tu)")  //AND length(p.id)=8
	Tutor getLastTutor();
	
	@Query(value = "SELECT t.id, birth_date, birth_year, emails, english_full_name, fbs, "
			+ "full_name, gender, id_card_issued_on, id_card_number, phones, registered_status, zaloes, place_of_birth, tutor_address, "
			+ "x_rel_coo, y_rel_coo, tutor_address_area_id, created_at, updated_at, public_imgs, private_imgs, exp_notices, avatar, created_by, updated_by"
			+ ", STRING_AGG(art.area_id, ', ') AS rel_area "
			+ "FROM tutor t JOIN area_tutor art ON t.id = art.tutor_id GROUP BY t.id ORDER BY t.id ", nativeQuery = true)
	List<Object> findAllTutor();

}
