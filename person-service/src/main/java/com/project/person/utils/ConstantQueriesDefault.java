package com.project.person.utils;

public class ConstantQueriesDefault {
	public static final String DEFAULT_QUERY_PREFIX = "SELECT t.id, t.birth_date, t.birth_year, t.emails, t.english_full_name, t.fbs, "
			+ " t.full_name, t.gender, t.id_card_issued_on, t.id_card_number, t.phones, t.registered_status, t.zaloes, t.place_of_birth, t.tutor_address, "
			+ " t.x_rel_coo, t.y_rel_coo, t.tutor_address_area_id, t.created_at, t.updated_at, t.exp_notices, t.avatar, t.created_by, t.updated_by "
			+ ", STRING_AGG(art.area_id, ', ') AS rel_area " + ", STRING_AGG(tpr.private_imgs, ', ') AS private_imgs "
			+ ", STRING_AGG(tp.public_imgs, ', ') AS public_imgs "
			+ ", STRING_AGG(tsgmb.subject_group_id, ', ') AS tutor_subject_group_maybe_ids "
			+ ", STRING_AGG(tsffs.subject_group_id, ', ') AS tutor_subject_group_for_sure_ids "
			+ ", STRING_AGG(tca.calendars, ', ') AS calendars, t.average_start_numbers, t.exp, t.success_jobs_numbers, "
			+ " STRING_AGG(tsfs.subject_group_id, ', ') AS tutor_subject_group_fails_ids " 
			+ "FROM tutor t "
			+ "LEFT JOIN area_tutor art ON t.id = art.tutor_id "
			+ "LEFT JOIN tutor_private_imgs tpr ON tpr.tutor_id = t.id "
			+ "LEFT JOIN tutor_public_imgs tp ON tp.tutor_id = t.id "
			+ "LEFT JOIN tutor_subject_group_maybe tsgmb ON tsgmb.tutor_id = t.id "
			+ "LEFT JOIN tutor_subject_group_for_sure tsffs ON tsffs.tutor_id = t.id "
			+ "LEFT JOIN tutor_subject_group_fails tsfs ON tsfs.tutor_id = t.id "
			+ "LEFT JOIN tutor_calendars tca ON tca.tutor_id = t.id "
			+ "WHERE ";
	public static final String DEFAULT_QUERY_SUBFIX = "GROUP BY t.id ORDER BY t.id ";
}
