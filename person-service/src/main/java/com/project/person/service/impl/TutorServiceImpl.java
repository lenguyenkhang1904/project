package com.project.person.service.impl;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.Arrays;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.utils.Calendar;
import com.project.common.utils.DateConverter;
import com.project.common.utils.HandleCharacter;
import com.project.common.utils.ObjectMapperUtils;
import com.project.common.utils.TypeOfSubjectGroup;
import com.project.person.dto.TutorForFindAllDto;
import com.project.person.dto.TutorDto;
import com.project.person.entity.AreaTutor;
import com.project.person.entity.Tutor;
import com.project.person.entity.TutorSubjectGroupForSure;
import com.project.person.entity.TutorSubjectGroupMaybe;
import com.project.person.repository.AreaTutorRepository;
import com.project.person.repository.TutorRepository;
import com.project.person.repository.TutorSubjectGroupForSureRepository;
import com.project.person.repository.TutorSubjectGroupMaybeRepository;
import com.project.person.service.TutorService;
import com.project.person.utils.GenerateTutorId;

@Service
public class TutorServiceImpl implements TutorService {

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

			tutorDtos.add(dto);
		});

		return tutorDtos;
	}

	@Override
	public TutorDto findByTutorCode(final Long tutorCode) {
		return ObjectMapperUtils.map(tutorRepository.findByIdOrTutorCode(tutorCode), TutorDto.class);
	}

	@Override
	public List<TutorDto> findByPhoneNumber(final String phoneNumber) {
		return ObjectMapperUtils.mapAll(tutorRepository.findByPhonesContaining(phoneNumber), TutorDto.class);
	}

	@Override
	public List<TutorDto> findByEndPhoneNumber(final String endPhoneNumber) {
		return ObjectMapperUtils.mapAll(tutorRepository.findByPhonesContaining(endPhoneNumber.concat("#")),
				TutorDto.class);
	}

	@Override
	public List<TutorDto> findByFullNameContain(final String fullName) {
		return ObjectMapperUtils.mapAll(tutorRepository.findByFullNameContaining(fullName), TutorDto.class);
	}

	@Override
	public List<TutorDto> findByEnglishFullName(final String fullname) {
		return ObjectMapperUtils.mapAll(tutorRepository.findByEnglishFullNameContaining(fullname), TutorDto.class);
	}

	@Override
	public List<String> findByEngfullnameAndShowFullName(final String fullname) {
		return tutorRepository.findByEnglishNameAndShowFullName(fullname);
	}

	@Override
	public List<String> findByfullnameAndShowFullName(final String fullname) {
		return tutorRepository.showFullname(fullname);
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

	@Override
	@Transactional
	public Long updateSubjetGroupMaybe(TutorDto dto) {
		Optional<Tutor> tutorOpt = findByIdTutor(dto.getId());
		if (!tutorOpt.isEmpty()) {
			Tutor tutor = tutorOpt.get();
			tutor.setUpdatedBy(dto.getCreatedBy());
			tutor.setUpdatedAt(DateConverter.convertDateToLocalDateTime(new java.util.Date()));
			tutorSubjectGroupMaybeRepository.deleteByTutorId(dto.getId());
			// Subject Group Maybe
			List<String> tutorSubjectGroupMaybeIds = dto.getTutorSubjectGroupMaybeIds();
			if (!tutorSubjectGroupMaybeIds.isEmpty()) {
				saveAllTutorSubjectGroup(tutorSubjectGroupMaybeIds, TypeOfSubjectGroup.MAYBE.name(), tutor);
				return tutor.getId();
			}
		}
		return null;
	}

	@Override
	@Transactional
	public Long updateSubjectGroupForSure(TutorDto dto) {
		Optional<Tutor> tutorOpt = findByIdTutor(dto.getId());
		if (!tutorOpt.isEmpty()) {
			Tutor tutor = tutorOpt.get();
			tutor.setUpdatedBy(dto.getCreatedBy());
			tutor.setUpdatedAt(DateConverter.convertDateToLocalDateTime(new java.util.Date()));
			tutorSubjectGroupForSureRepository.deleteByTutorId(dto.getId());
			// Subject Group ForSure
			List<String> tutorSubjectGroupForSureIds = dto.getTutorSubjectGroupForSureIds();
			if (!tutorSubjectGroupForSureIds.isEmpty()) {
				saveAllTutorSubjectGroup(tutorSubjectGroupForSureIds, TypeOfSubjectGroup.FORSURE.name(), tutor);
				return tutor.getId();
			}
		}
		return null;
	}

	private Optional<Tutor> findByIdTutor(Long id) {
		return tutorRepository.findById(id);
	}

	@Override
	public Long updateNowLevelAndNowUpdateAt(TutorDto dto) {
		Optional<Tutor> tutorOpt = findByIdTutor(dto.getId());
		if (!tutorOpt.isEmpty()) {
			Tutor tutor = tutorOpt.get();
			tutor.setUpdatedBy(dto.getCreatedBy());
			tutor.setNowLevel(dto.getNowLevel());
			tutor.setUpdatedAt(DateConverter.convertDateToLocalDateTime(new java.util.Date()));
			tutor = tutorRepository.save(tutor);
			return tutor.getId();
		}
		return null;
	}

	@Override
	public Long updateCalendar(TutorDto dto) {
		Optional<Tutor> tutorOpt = findByIdTutor(dto.getId());
		if (!tutorOpt.isEmpty()) {
			Tutor tutor = tutorOpt.get();
			tutor.setUpdatedBy(dto.getCreatedBy());
			tutor.setUpdatedAt(DateConverter.convertDateToLocalDateTime(new java.util.Date()));
			List<Calendar> calendars = new LinkedList<>();
			for (Calendar calendar : dto.getCalendars()) {
				calendars.add(calendar);
			}
			tutor.setCalendars(calendars);
			tutor = tutorRepository.save(tutor);
			return tutor.getId();
		}
		return null;
	}

	@Override
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
			tutor = tutorRepository.save(tutor);
			// Area Tutor
			List<String> areaTutorIds = dto.getAreaTutorIds();
			if (!areaTutorIds.isEmpty()) {
				saveAllAreaTutor(areaTutorIds, tutor);
			}
			return tutor.getId();
		}
		return null;

	}

}
