package com.project.person.service.impl;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.Arrays;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import com.project.common.utils.Calendar;
import com.project.common.utils.DateConverter;
import com.project.common.utils.HandleCharacter;
import com.project.common.utils.ObjectMapperUtils;
import com.project.common.utils.TypeOfSubjectGroup;
import com.project.person.dto.TutorDto;
import com.project.person.dto.TutorForFindAllDto;
import com.project.person.entity.AreaTutor;
import com.project.person.entity.Tutor;
import com.project.person.entity.TutorSubjectGroupForSure;
import com.project.person.entity.TutorSubjectGroupMaybe;
import com.project.person.repository.AreaTutorRepository;
import com.project.person.repository.TutorRepository;
import com.project.person.repository.TutorSubjectGroupForSureRepository;
import com.project.person.repository.TutorSubjectGroupMaybeRepository;
import com.project.person.service.TutorService;
import com.project.person.utils.ConstantQueriesDefault;
import com.project.person.utils.GenerateTutorId;

@Service
@SuppressWarnings("unchecked")
public class TutorServiceImpl implements TutorService {

	@Autowired
	private EntityManager entityManager;

	@Autowired
	private TutorRepository tutorRepository;

	@Autowired
	private AreaTutorRepository areaTutorRepository;

	@Autowired
	private TutorSubjectGroupForSureRepository tutorSubjectGroupForSureRepository;

	@Autowired
	private TutorSubjectGroupMaybeRepository tutorSubjectGroupMaybeRepository;

	@Override
	public Long saveTutor(TutorDto dto) {
		// tutor
		Tutor tutor = new Tutor();
		tutor = ObjectMapperUtils.map(dto, Tutor.class);
		Long id = Long.parseLong(generateTutorCode());
		tutor.setId(id);
		tutor.setFullName(dto.getFullName().toUpperCase());
		tutor.setEnglishFullName(HandleCharacter.removeAccent(dto.getFullName()).toUpperCase());
		tutor.setCreatedBy(dto.getCreatedBy());
		tutor.setCreatedAt(DateConverter.convertDateToLocalDateTime(new java.util.Date()));
		tutor = tutorRepository.save(tutor);
		// Area Tutor
		List<String> areaTutorIds = dto.getAreaTutorIds();
		if (!areaTutorIds.isEmpty()) {
			saveAllAreaTutor(areaTutorIds, tutor);
		}
		return tutor.getId();
	}

	private void saveAllAreaTutor(List<String> areaTutorIds, Tutor tutor) {
		List<AreaTutor> areaTutors = new LinkedList<>();
		for (String areaId : areaTutorIds) {
			AreaTutor areaTutor = new AreaTutor();
			areaTutor.setTutor(tutor);
			areaTutor.setAreaId(areaId);
			areaTutors.add(areaTutor);
		}
		areaTutorRepository.saveAll(areaTutors);
	}

	private void saveAllTutorSubjectGroup(List<String> tutorSubjectGroupIds, String typeOfSubjectGroup, Tutor tutor) {
		List<TutorSubjectGroupMaybe> tutorSubjectGroupMaybes = new LinkedList<>();
		List<TutorSubjectGroupForSure> tutorSubjectGroupForSures = new LinkedList<>();

		if (typeOfSubjectGroup.equals("MAYBE")) {
			for (String tutorSubjectGroupId : tutorSubjectGroupIds) {
				TutorSubjectGroupMaybe tutorSubjectGroupMaybe = new TutorSubjectGroupMaybe();
				tutorSubjectGroupMaybe.setTutor(tutor);
				tutorSubjectGroupMaybe.setSubjectGroupId(tutorSubjectGroupId);
				tutorSubjectGroupMaybes.add(tutorSubjectGroupMaybe);
			}
			tutorSubjectGroupMaybeRepository.saveAll(tutorSubjectGroupMaybes);
		} else {
			for (String tutorSubjectGroupId : tutorSubjectGroupIds) {
				TutorSubjectGroupForSure tutorSubjectGroupForSure = new TutorSubjectGroupForSure();
				tutorSubjectGroupForSure.setTutor(tutor);
				tutorSubjectGroupForSure.setSubjectGroupId(tutorSubjectGroupId);
				tutorSubjectGroupForSures.add(tutorSubjectGroupForSure);
			}
			tutorSubjectGroupForSureRepository.saveAll(tutorSubjectGroupForSures);
		}

	}

	private String generateTutorCode() {
		String ResponseTutorCode = null;
		Tutor personHasTutorCode = tutorRepository.getLastTutor();
		if (personHasTutorCode != null) {
			if (personHasTutorCode != null) {
				String tutorCodeWithIdMaxorPreviousId = String.valueOf(personHasTutorCode.getId());
				int count = GenerateTutorId.generateResponsiveReserve(tutorCodeWithIdMaxorPreviousId.substring(6, 8));
				if (tutorCodeWithIdMaxorPreviousId == null
						|| GenerateTutorId.AutoGennerate(tutorCodeWithIdMaxorPreviousId) == -1
						|| GenerateTutorId.AutoGennerate(tutorCodeWithIdMaxorPreviousId) == 2) {
					count = 1;
				} else if (GenerateTutorId.AutoGennerate(tutorCodeWithIdMaxorPreviousId) == 3) {
					count += 1;
				}
				ResponseTutorCode = GenerateTutorId.generateResponsive((int) count);
			}
		} else {
			ResponseTutorCode = GenerateTutorId.generateResponsive((int) 1);
		}
		return GenerateTutorId.generatorCode().concat(ResponseTutorCode);
	}

	@Override
	public List<TutorForFindAllDto> findAllTutor() {
		List<TutorForFindAllDto> tutorDtos = new LinkedList<>();
		tutorRepository.findAllTutor().stream().forEach(item -> {
			Object[] objectList = (Object[]) item;
			TutorForFindAllDto dto = new TutorForFindAllDto();
			dto = convertObjectToTutorDto(objectList, dto);
			tutorDtos.add(dto);
		});

		return tutorDtos;
	}

	@Override
	public TutorForFindAllDto findByTutorCode(final Long tutorCode) {
		TutorForFindAllDto dto = new TutorForFindAllDto();
		try {
			Query query = entityManager.createNativeQuery(ConstantQueriesDefault.DEFAULT_QUERY_PREFIX
					+ "t.id =:tutorCode \n" + ConstantQueriesDefault.DEFAULT_QUERY_SUBFIX);
			query.setParameter("tutorCode", tutorCode);
			Object[] listObject = (Object[]) query.getSingleResult();
			dto = convertObjectToTutorDto(listObject, dto);
		} catch (NoResultException e) {
			return null;
		}
		return Optional.of(dto).get();
	}

	@Override
	public List<TutorForFindAllDto> findByPhoneNumber(final String phoneNumber) {
		List<TutorForFindAllDto> tutorDtos = new LinkedList<>();
		Query query = entityManager.createNativeQuery(ConstantQueriesDefault.DEFAULT_QUERY_PREFIX
				+ "t.phones like CONCAT('%', :phones, '%') \n" + ConstantQueriesDefault.DEFAULT_QUERY_SUBFIX);
		query.setParameter("phones", phoneNumber);
		if (query != null) {
			query.getResultList().stream().forEach(item -> {
				Object[] objectList = (Object[]) item;
				TutorForFindAllDto dto = new TutorForFindAllDto();
				convertObjectToTutorDto(objectList, dto);
				tutorDtos.add(dto);
			});
		}
		return tutorDtos;
	}

	@Override
	public List<TutorForFindAllDto> findByEndPhoneNumber(String endPhoneNumber) {
		List<TutorForFindAllDto> tutorDtos = new LinkedList<>();
		Query query = entityManager.createNativeQuery(ConstantQueriesDefault.DEFAULT_QUERY_PREFIX
				+ "t.phones like CONCAT('%', :phones, '%') \n" + ConstantQueriesDefault.DEFAULT_QUERY_SUBFIX);
		query.setParameter("phones", endPhoneNumber.concat("#"));
		query.getResultList().stream().forEach(item -> {
			Object[] objectList = (Object[]) item;
			TutorForFindAllDto dto = new TutorForFindAllDto();
			convertObjectToTutorDto(objectList, dto);
			tutorDtos.add(dto);
		});
		return tutorDtos;
	}

	@Override
	public List<TutorForFindAllDto> findByFullNameContain(final String fullName) {
		List<TutorForFindAllDto> tutorDtos = new LinkedList<>();
		Query query = entityManager.createNativeQuery(ConstantQueriesDefault.DEFAULT_QUERY_PREFIX
				+ "t.full_name like CONCAT('%', :fullName, '%') \n" + ConstantQueriesDefault.DEFAULT_QUERY_SUBFIX);
		query.setParameter("fullName", fullName);
		query.getResultList().stream().forEach(item -> {
			Object[] objectList = (Object[]) item;
			TutorForFindAllDto dto = new TutorForFindAllDto();
			dto = convertObjectToTutorDto(objectList, dto);
			tutorDtos.add(dto);
		});
		return tutorDtos;
	}

	@Override
	public List<TutorForFindAllDto> findByEnglishFullName(final String fullname) {
		List<TutorForFindAllDto> tutorDtos = new LinkedList<>();
		Query query = entityManager.createNativeQuery(ConstantQueriesDefault.DEFAULT_QUERY_PREFIX
				+ "t.english_full_name LIKE CONCAT('%', :englishFullName, '%') \n"
				+ ConstantQueriesDefault.DEFAULT_QUERY_SUBFIX);
		query.setParameter("englishFullName", fullname);
		query.getResultList().stream().forEach(item -> {
			Object[] objectList = (Object[]) item;
			TutorForFindAllDto dto = new TutorForFindAllDto();
			dto = convertObjectToTutorDto(objectList, dto);
			tutorDtos.add(dto);
		});
		return tutorDtos;
	}

	@Override
	public List<String> findByEngfullnameAndShowFullName(final String fullname) {
		List<String> tutorFullNames = new LinkedList<>();
		Query query = entityManager.createNativeQuery(ConstantQueriesDefault.DEFAULT_QUERY_PREFIX
				+ "t.english_full_name LIKE CONCAT('%', :englishFullName, '%') \n"
				+ ConstantQueriesDefault.DEFAULT_QUERY_SUBFIX);
		query.setParameter("englishFullName", fullname);
		query.getResultList().stream().forEach(item -> {
			Object[] objectList = (Object[]) item;
			TutorForFindAllDto dto = new TutorForFindAllDto();
			dto = convertObjectToTutorDto(objectList, dto);
			tutorFullNames.add(dto.getFullName());
		});
		return tutorFullNames;
	}

	@Override
	public List<String> findByfullnameAndShowFullName(final String fullname) {
		List<String> tutorFullNames = new LinkedList<>();
		Query query = entityManager.createNativeQuery(ConstantQueriesDefault.DEFAULT_QUERY_PREFIX
				+ "t.full_name LIKE CONCAT('%', :fullName, '%') \n" + ConstantQueriesDefault.DEFAULT_QUERY_SUBFIX);
		query.setParameter("fullName", fullname);
		query.getResultList().stream().forEach(item -> {
			Object[] objectList = (Object[]) item;
			TutorForFindAllDto dto = new TutorForFindAllDto();
			dto = convertObjectToTutorDto(objectList, dto);
			tutorFullNames.add(dto.getFullName());
		});
		return tutorFullNames;
	}

	@Override
	public TutorDto findById(final Long id) {
		Optional<Tutor> tutorOpt = tutorRepository.findById(id);
		if (!tutorOpt.isEmpty()) {
			Tutor tutor = tutorOpt.get();
			TutorDto tutorDto = new TutorDto();
			tutorDto = ObjectMapperUtils.map(tutor, TutorDto.class);
			tutorDto.setPublicImgs(tutor.getPublicImgs());
			tutorDto.setPrivateImgs(tutor.getPrivateImgs());
			tutorDto.setAvatar(tutor.getAvatar());
			return tutorDto;
		}
		return null;
	}

	@Override
	public Long updateTutor(Tutor tutor) {
		return tutorRepository.save(tutor).getId();
	}

	private Optional<Tutor> findByIdTutor(Long id) {
		return tutorRepository.findById(id);
	}

	@Override
	@Transactional
	public Long update(TutorDto dto) {
		// tutor
		Optional<Tutor> tutorOpt = tutorRepository.findById(dto.getId());
		if (!tutorOpt.isEmpty()) {
			Tutor tutor = tutorOpt.get();
			tutor = ObjectMapperUtils.map(dto, Tutor.class);
			Long id = Long.parseLong(generateTutorCode());
			tutor.setId(id);
			tutor.setFullName(dto.getFullName().toUpperCase());
			tutor.setEnglishFullName(HandleCharacter.removeAccent(dto.getFullName()).toUpperCase());
			tutor.setUpdatedBy(dto.getCreatedBy());
			tutor.setUpdatedAt(DateConverter.convertDateToLocalDateTime(new java.util.Date()));
			// calendar
			List<Calendar> calendars = new LinkedList<>();
			for (Calendar calendar : dto.getCalendars()) {
				calendars.add(calendar);
			}
			tutor.setCalendars(calendars);

			tutor = tutorRepository.save(tutor);
			// Area Tutor
			List<String> areaTutorIds = dto.getAreaTutorIds();
			if (!areaTutorIds.isEmpty()) {
				areaTutorRepository.deleteByTutorId(tutor.getId());
				saveAllAreaTutor(areaTutorIds, tutor);
			}

			// Subject Group ForSure
			List<String> tutorSubjectGroupForSureIds = dto.getTutorSubjectGroupForSureIds();
			if (!tutorSubjectGroupForSureIds.isEmpty()) {
				tutorSubjectGroupForSureRepository.deleteByTutorId(dto.getId());
				saveAllTutorSubjectGroup(tutorSubjectGroupForSureIds, TypeOfSubjectGroup.FORSURE.name(), tutor);
			}

			// Subject Group Maybe
			List<String> tutorSubjectGroupMaybeIds = dto.getTutorSubjectGroupMaybeIds();
			if (!tutorSubjectGroupMaybeIds.isEmpty()) {
				tutorSubjectGroupMaybeRepository.deleteByTutorId(dto.getId());
				saveAllTutorSubjectGroup(tutorSubjectGroupMaybeIds, TypeOfSubjectGroup.MAYBE.name(), tutor);
			}

			return tutor.getId();
		}
		return null;

	}

	private TutorForFindAllDto convertObjectToTutorDto(Object[] objectList, TutorForFindAllDto dto) {
		String convertToStringId = (String) objectList[0].toString();
		Long id = Long.parseLong(convertToStringId);
		dto.setId(id);
		dto.setBirthDate(DateConverter.convertDateToLocalDate((Date) objectList[1]));
		dto.setBirthYear((String) objectList[2]);
		dto.setEmails((String) objectList[3]);
		dto.setEnglishFullName((String) objectList[4]);
		dto.setFbs((String) objectList[5]);
		dto.setFullName((String) objectList[6]);
		dto.setGender((String) objectList[7]);
		dto.setIdCardIssuedOn((String) objectList[8]);
		dto.setIdCardNumber((String) objectList[9]);
		dto.setPhones((String) objectList[10]);
		dto.setRegisteredStatus((String) objectList[11]);
		dto.setZaloes((String) objectList[12]);
		dto.setPlaceOfBirth((String) objectList[13]);
		dto.setTutorAddress((String) objectList[14]);
		dto.setXRelCoo((String) objectList[15]);
		dto.setYRelCoo((String) objectList[16]);
		dto.setTutorAddressAreaId((String) objectList[17]);
		dto.setCreatedAt(DateConverter.convertDateToLocalDateTime((Timestamp) objectList[18]));

		dto.setAvatar(!StringUtils.isEmpty((String) objectList[21]) ? (String) objectList[21] : "");

		dto.setCreatedBy(!StringUtils.isEmpty((String) objectList[22]) ? (String) objectList[22] : "");

		dto.setUpdatedBy(!StringUtils.isEmpty((String) objectList[23]) ? (String) objectList[23] : "");

		String relAreas = !StringUtils.isEmpty((String) objectList[24]) ? (String) objectList[24] : "";
		dto.setRelArea(Arrays.asList(relAreas.split(", ")));

		String privateImgs = !StringUtils.isEmpty((String) objectList[25]) ? (String) objectList[25] : "";
		dto.setPrivateImgs(new LinkedList<>(new HashSet<>(Arrays.asList(privateImgs.split(", ")))));

		String publicImgs = !StringUtils.isEmpty((String) objectList[26]) ? (String) objectList[26] : "";
		dto.setPublicImgs(new LinkedList<>(new HashSet<>(Arrays.asList(publicImgs.split(", ")))));

		String subjectGroupMaybes = !StringUtils.isEmpty((String) objectList[27]) ? (String) objectList[27] : "";
		dto.setSubjectGroupMaybeIds(Arrays.asList(subjectGroupMaybes.split(", ")));

		String subjectGroupForsures = !StringUtils.isEmpty((String) objectList[28]) ? (String) objectList[28] : "";
		dto.setSubjectGroupForsureIds(Arrays.asList(subjectGroupForsures.split(", ")));

		String calendarStr = !StringUtils.isEmpty((String) objectList[29]) ? (String) objectList[29] : "";

		if (!StringUtils.isEmpty(calendarStr)) {
			List<String> calendarStrs = new LinkedList<>(new HashSet<>(Arrays.asList(calendarStr.split(", "))));
			List<Calendar> calendars = new LinkedList<>();
			calendarStrs.forEach(ca -> {
				calendars.add(Calendar.valueOf(ca));
			});
			dto.setCalendars(calendars);
		}

		// dto.setAverageStarNumbers(Double.valueOf((String) objectList[30]));

		return dto;
	}

	@Override
	public List<String> getSubjectGroupsByTutorId(Long tutorId) {
		List<String> subjectgroups = tutorSubjectGroupMaybeRepository.getSubjectGroupIdByTutorId(tutorId);
		return !CollectionUtils.isEmpty(subjectgroups) ? subjectgroups : new LinkedList<String>();
	}

	@Override
	public void saveAllSubjectGroup(List<String> subjectGroupOfTutor, Long tutorId) {
		Optional<Tutor> tutorOpt = tutorRepository.findById(tutorId);
		if(!tutorOpt.isEmpty()) {
			Tutor tutor = tutorOpt.get();  
			saveAllTutorSubjectGroup(subjectGroupOfTutor, TypeOfSubjectGroup.MAYBE.name(), tutor);
		}
	}

	@Override
	public void deleteSubjectGroupMaybeByTutorId(Long tutorId) {
		tutorSubjectGroupMaybeRepository.deleteByTutorId(tutorId);
	}

}
