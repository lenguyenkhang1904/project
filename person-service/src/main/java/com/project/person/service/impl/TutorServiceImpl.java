package com.project.person.service.impl;

import java.math.BigInteger;
import java.sql.Date;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.utils.DateConverter;
import com.project.common.utils.HandleCharacter;
import com.project.common.utils.ObjectMapperUtils;
import com.project.person.dto.AreaTutorDto;
import com.project.person.dto.TutorDto;
import com.project.person.entity.AreaTutor;
import com.project.person.entity.Tutor;
import com.project.person.repository.AreaTutorRepository;
import com.project.person.repository.TutorRepository;
import com.project.person.service.TutorService;
import com.project.person.utils.GenerateTutorId;

@Service
public class TutorServiceImpl implements TutorService{
	
	@Autowired
	private TutorRepository tutorRepository;
	
	@Autowired
	private AreaTutorRepository areaTutorRepository;

	@Override
	public Long saveTutor(TutorDto dto) {
		//tutor
		Tutor tutor = new Tutor();
		tutor = ObjectMapperUtils.map(dto, Tutor.class);
		Long id = Long.parseLong(generateTutorCode());
		tutor.setId(id);
		tutor.setFullName(dto.getFullName().toUpperCase());
		tutor.setEnglishFullName(HandleCharacter.removeAccent(dto.getFullName()).toUpperCase());
		tutor = tutorRepository.save(tutor);
		// areaTutor
		List<String> areaTutorIds = dto.getAreaTutorId();
		List<AreaTutor> areaTutors = new LinkedList<>();
		for(String areaId : areaTutorIds) {
			AreaTutor areaTutor = new AreaTutor();
			areaTutor.setTutor(tutor);
			areaTutor.setAreaId(areaId);
			areaTutors.add(areaTutor);
		}
		areaTutors = areaTutorRepository.saveAll(areaTutors);
		
		return tutor.getId();
	}
	
	
	private String generateTutorCode() {
		String ResponseTutorCode = null;
		// lấy những người có tutorcode à ko null
		Tutor personHasTutorCode = tutorRepository.getLastTutor();
		if (personHasTutorCode != null) {
			if (personHasTutorCode != null) {
				String tutorCodeWithIdMaxorPreviousId = String.valueOf(personHasTutorCode.getId());// lấy mã đó ra từ //
																									// Person
				// trước đó cuối
				int count = GenerateTutorId
						.generateResponsiveReserve(tutorCodeWithIdMaxorPreviousId.substring(6, 8));
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
	public List<AreaTutorDto> findAllTutor() {
		List<AreaTutorDto> tutorDtos = new LinkedList<>();
		
		tutorRepository.findAllTutor().stream().forEach(item -> {
			Object[] objectList = (Object[]) item;
			AreaTutorDto dto = new AreaTutorDto();			
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
			dto.setUpdatedAt(DateConverter.convertDateToLocalDateTime((Timestamp) objectList[19]));
			
			String relAreas = (String) objectList[26];
			List<String> realAreaIds = Arrays.asList(relAreas.split(","));
			dto.setRelArea(realAreaIds);
			tutorDtos.add(dto);
		});
		
		return tutorDtos;
	}

	
}
