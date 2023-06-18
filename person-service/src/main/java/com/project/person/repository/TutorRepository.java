package com.project.person.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.project.person.entity.Tutor;

@Repository
public interface TutorRepository extends JpaRepository<Tutor, Long> {
	
	@Query("SELECT t FROM Tutor t WHERE  t.createdAt=(SELECT MAX(tu.createdAt) FROM Tutor tu)")  //AND length(p.id)=8
	Tutor getLastTutor();
	
	@Query(value = "SELECT t.id, t.birth_date, t.birth_year, t.emails, t.english_full_name, t.fbs, "
			+ " t.full_name, t.gender, t.id_card_issued_on, t.id_card_number, t.phones, t.registered_status, t.zaloes, t.place_of_birth, t.tutor_address, "
			+ " t.x_rel_coo, t.y_rel_coo, t.tutor_address_area_id, t.created_at, t.update_at, t.exp_notices, t.avatar, t.created_by, t.updated_by "
			+ ", STRING_AGG(art.area_id, ', ') AS rel_area "
			+ ", STRING_AGG(tpr.private_imgs, ', ') AS private_imgs "
			+ ", STRING_AGG(tp.public_imgs, ', ') AS public_imgs "
			+ ", STRING_AGG(tsgmb.subject_group_id, ', ') AS tutor_subject_group_maybe_ids "
			+ ", STRING_AGG(tsffs.subject_group_id, ', ') AS tutor_subject_group_for_sure_ids "
			+ ", STRING_AGG(tca.calendars, ', ') AS calendars "
			+ "FROM tutor t "
			+ "LEFT JOIN area_tutor art ON t.id = art.tutor_id "
			+ "LEFT JOIN tutor_private_imgs tpr ON tpr.tutor_id = t.id "
			+ "LEFT JOIN tutor_public_imgs tp ON tp.tutor_id = t.id "
			+ "LEFT JOIN tutor_subject_group_maybe tsgmb ON tsgmb.tutor_id = t.id "
			+ "LEFT JOIN tutor_subject_group_for_sure tsffs ON tsffs.tutor_id = t.id "
			+ "LEFT JOIN tutor_calendars tca ON tca.tutor_id = t.id "
			+ "GROUP BY t.id ORDER BY t.id; ", nativeQuery = true)
	List<Object> findAllTutor();

	@Query("SELECT MAX(id) FROM Tutor")
	Long getMaxId();	
	
	@Query("SELECT t FROM Tutor t WHERE t.id=:id")
	Tutor findByIdOrTutorCode(Long id);

	int countById(Long id);

	List<Tutor> findByPhonesContaining(String phones);

	int countByPhonesContaining(String phones);
	
	List<Tutor> findByFullNameContaining(String fullName);
	
	@Query("SELECT t.fullName FROM Tutor t WHERE t.englishFullName LIKE CONCAT('%',:englishFullName,'%')")
	List<String> findByEnglishNameAndShowFullName(@Param("englishFullName") String englishFullName); 
	
	@Query("SELECT t.fullName FROM Tutor t WHERE t.fullName LIKE CONCAT('%',:fullName,'%')")
	List<String>  showFullname(@Param("fullName") String fullName);
	
	int countByFullNameContaining(String fullName);
		
	List<Tutor> findByEnglishFullNameContaining(String englishFullName);
	
	@Query("SELECT t FROM Tutor t WHERE t.averageStarNumbers >= 4.5")
	List<Tutor> findByAverageStarNumbersGreaterThanEquals();

	Tutor findByCreatedBy(String createdBy);

	@Query("SELECT t FROM Tutor t WHERE t.avatar IS NOT NULL ")
	List<Tutor> findTutorBeforeSynchronize(); 
}
