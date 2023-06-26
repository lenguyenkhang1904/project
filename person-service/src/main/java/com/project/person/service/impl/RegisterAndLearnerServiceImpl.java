package com.project.person.service.impl;

import java.util.Arrays;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Optional;
import java.util.Set;import java.util.stream.Collector;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.utils.DateConverter;
import com.project.common.utils.HandleCharacter;
import com.project.common.utils.ObjectMapperUtils;
import com.project.person.dto.RegisterAndLearnerDto;
import com.project.person.dto.RegisterAndLearnerRelationshipDto;
import com.project.person.dto.SchoolerDto;
import com.project.person.dto.TutorDto;
import com.project.person.entity.RegisterAndLearner;
import com.project.person.entity.RegisterAndLearnerRelationship;
import com.project.person.entity.Schooler;
import com.project.person.repository.RegisterAndLearnerRelationshipRepository;
import com.project.person.repository.RegisterAndLearnerRepository;
import com.project.person.repository.SchoolerRepository;
import com.project.person.service.RegisterAndLearnerService;

@Service
public class RegisterAndLearnerServiceImpl implements RegisterAndLearnerService {

	@Autowired
	private RegisterAndLearnerRepository registerAndLearnerRepository;

	@Autowired
	private RegisterAndLearnerRelationshipRepository registerAndLearnerRelationshipRepository;

	@Autowired
	private SchoolerRepository schoolerRepository;

	@Override
	public String saveRegisterAndLearner(RegisterAndLearnerDto dto) {
		RegisterAndLearner registerAndLearner = new RegisterAndLearner();
		registerAndLearner = ObjectMapperUtils.map(dto, RegisterAndLearner.class);
		registerAndLearner.setFullName(dto.getFullName().toUpperCase());
		registerAndLearner.setEnglishFullName(HandleCharacter.removeAccent(dto.getFullName().toUpperCase()));
		registerAndLearner.setCreatedBy(dto.getCreatedBy());
		registerAndLearner.setCreatedAt(DateConverter.convertDateToLocalDateTime(new java.util.Date()));
		registerAndLearner.setPublicImgs(new HashSet<>(dto.getPublicImgs()));
		registerAndLearner.setPrivateImgs(new HashSet<>(dto.getPublicImgs()));
		registerAndLearner = registerAndLearnerRepository.save(registerAndLearner);

		// register and learner relationship
		List<RegisterAndLearnerRelationshipDto> registerAndLearnerRelationshipDtos = dto.getRegisterAndLearnerRelationships();
		List<RegisterAndLearnerRelationship> registerAndLearnerRelationships = new LinkedList<>();
		for (RegisterAndLearnerRelationshipDto registerAndLearnerRelationshipDto : registerAndLearnerRelationshipDtos) {
				RegisterAndLearnerRelationship registerAndLearnerRelationship = new RegisterAndLearnerRelationship();
				registerAndLearnerRelationship = ObjectMapperUtils.map(registerAndLearnerRelationshipDto,
						RegisterAndLearnerRelationship.class);
				registerAndLearnerRelationship.setRegisterAndLearnerBy(
						registerAndLearnerRepository.findById(registerAndLearnerRelationshipDto.getRegisterAndLearnerById()).get());
				registerAndLearnerRelationship.setRegisterAndLearnerWith(registerAndLearner);
				registerAndLearnerRelationships.add(registerAndLearnerRelationship);
		}
		registerAndLearnerRelationshipRepository.saveAll(registerAndLearnerRelationships);

		// Schooler
		List<SchoolerDto> schoolerDtos = dto.getSchoolerDtos();
		List<Schooler> schoolers = new LinkedList<>();
		for (SchoolerDto schoolerDto : schoolerDtos) {
			Schooler schooler = new Schooler();
			schooler = ObjectMapperUtils.map(schoolerDto, Schooler.class);
			schooler.setCreatedBy(dto.getCreatedBy());
			schooler.setCreatedAt(DateConverter.convertDateToLocalDateTime(new java.util.Date()));
			schooler.setRegisterAndLearner(registerAndLearner);
			schoolers.add(schooler);
		}
		schoolerRepository.saveAll(schoolers);

		return registerAndLearner.getId();
	}

	@Override
	public List<RegisterAndLearnerDto> findAllRegisterAndLearner() {
		List<RegisterAndLearnerDto> dtos = new LinkedList<>();
		List<RegisterAndLearner> registerAndLearners = registerAndLearnerRepository.findAllRe();
		registerAndLearners.forEach(item -> {
			RegisterAndLearnerDto dto = new RegisterAndLearnerDto();
			dto = convertEntityToModel(dto, item);
			dtos.add(dto);
		});
		return dtos;
	}

	@Override
	public RegisterAndLearnerDto findByRegisterAndLearnerCode(String registerAndLearnerId) {
		Optional<RegisterAndLearner> regísterOpt = registerAndLearnerRepository.findById(registerAndLearnerId);
		if(!regísterOpt.isEmpty()) {
			RegisterAndLearner registerAndLearner = regísterOpt.get();
			RegisterAndLearnerDto dto = new RegisterAndLearnerDto();
			dto = convertEntityToModel(dto, registerAndLearner);
			return dto;
		}
		return null;
	}

	@Override
	public List<RegisterAndLearnerDto> findByPhoneNumber(final String phoneNumber) {
		List<RegisterAndLearnerDto> dtos = new LinkedList<>();
		List<RegisterAndLearner> registerAndLearners = registerAndLearnerRepository.findByPhonesContaining(phoneNumber);
		registerAndLearners.forEach(item -> {
			RegisterAndLearnerDto dto = new RegisterAndLearnerDto();
			dto = convertEntityToModel(dto, item);
			dtos.add(dto);
		});
		return dtos;
	}

	@Override
	public List<RegisterAndLearnerDto> findByEndPhoneNumber(String endPhoneNumber) {
		List<RegisterAndLearnerDto> dtos = new LinkedList<>();
		List<RegisterAndLearner> registerAndLearners = registerAndLearnerRepository.findByPhonesContaining(endPhoneNumber.concat("#"));
		registerAndLearners.forEach(item -> {
			RegisterAndLearnerDto dto = new RegisterAndLearnerDto();
			dto = convertEntityToModel(dto, item);
			dtos.add(dto);
		});
		return dtos;
	}

	@Override
	public List<RegisterAndLearnerDto> findByFullNameContain(final String fullName) {
		List<RegisterAndLearnerDto> dtos = new LinkedList<>();
		List<RegisterAndLearner> registerAndLearners = registerAndLearnerRepository.findByFullNameContaining(fullName);
		registerAndLearners.forEach(item -> {
			RegisterAndLearnerDto dto = new RegisterAndLearnerDto();
			dto = convertEntityToModel(dto, item);
			dtos.add(dto);
		});
		return dtos;
	}

	@Override
	public List<String> findByEngfullnameAndShowFullName(final String fullname) {
		return registerAndLearnerRepository.findByEnglishNameAndShowFullName(fullname);
	}

	@Override
	public List<String> findByfullnameAndShowFullName(final String fullname) {
		return registerAndLearnerRepository.findByFullNameAndShowFullName(fullname);
	}

	@Override
	public RegisterAndLearnerDto findById(final String id) {
		Optional<RegisterAndLearner> registerAndLearnerOpt = registerAndLearnerRepository.findById(id);
		if (!registerAndLearnerOpt.isEmpty()) {
			RegisterAndLearner registerAndLearner = registerAndLearnerOpt.get();
			RegisterAndLearnerDto registerAndLearnerDto = new RegisterAndLearnerDto();
			registerAndLearnerDto = ObjectMapperUtils.map(registerAndLearner, RegisterAndLearnerDto.class);
			registerAndLearnerDto.setPublicImgs(registerAndLearner.getPublicImgs().stream().toList());
			registerAndLearnerDto.setPrivateImgs(registerAndLearner.getPublicImgs().stream().toList());
			return registerAndLearnerDto;
		}
		return null;
	}

	@Override
	public List<RegisterAndLearnerDto> findByEnglishFullNameContaining(final String englishFullName) {
		return ObjectMapperUtils.mapAll(registerAndLearnerRepository.findByEnglishFullNameContaining(englishFullName),
				RegisterAndLearnerDto.class);
	}

	@Override
	public List<String> findByEnglishNameAndShowEngLishFullName(final String englishFullName) {
		return registerAndLearnerRepository.findByEnglishNameAndShowFullName(englishFullName);
	}

	@Override
	public List<RegisterAndLearnerDto> findByVocativeAndFullName(String vocative, String fullName) {
		return ObjectMapperUtils.mapAll(
				registerAndLearnerRepository.findByVocativeAndFullNameContaining(vocative, fullName),
				RegisterAndLearnerDto.class);
	}

	@Override
	public List<String> findByVocativeAndFullNameAndShowFullName(String vocative, String fullName) {
		return registerAndLearnerRepository.findByVocativeAndFullNameAndShowFullName(vocative, fullName);
	}

	@Override
	public List<RegisterAndLearnerDto> findByVocativeAndEnglishFullNameContaining(String vocative, String englishName) {
		return ObjectMapperUtils.mapAll(
				registerAndLearnerRepository.findByVocativeAndEnglishFullNameContaining(vocative, englishName),
				RegisterAndLearnerDto.class);
	}

	@Override
	public List<String> findByVocativeAndEnglishFullNameAndShowFullName(String vocative, String englishName) {
		return registerAndLearnerRepository.findByVocativeAndEnglishNameAndShowFullName(vocative, englishName);
	}

	@Override
	public String updateRegisterAndLearner(RegisterAndLearnerDto registerAndLearnerDto) {
		RegisterAndLearner registerAndLearner = ObjectMapperUtils.map(registerAndLearnerDto, RegisterAndLearner.class);
		registerAndLearner = registerAndLearnerRepository.save(registerAndLearner);
		return registerAndLearner.getId();
	}
	
	private RegisterAndLearnerDto convertEntityToModel(RegisterAndLearnerDto dto, RegisterAndLearner item) {
		dto = ObjectMapperUtils.map(item, RegisterAndLearnerDto.class);
		Set<RegisterAndLearnerRelationship> relas = item.getRelationshipBy();
		
		List<RegisterAndLearnerRelationshipDto> relationshipDtos = 	relas.stream().map(re -> {
			RegisterAndLearnerRelationshipDto relationshipDto = new RegisterAndLearnerRelationshipDto();
			relationshipDto.setId(re.getId());
			relationshipDto.setRelationshipType(re.getRelationshipType());
			relationshipDto.setRegisterAndLearnerById(re.getRegisterAndLearnerBy().getId());
			return relationshipDto;
		}).collect(Collectors.toList());

		dto.setRegisterAndLearnerRelationships(relationshipDtos);
		dto.setSchoolerDtos(ObjectMapperUtils.mapAll(item.getSchoolers(), SchoolerDto.class));
		return dto;
	}

	@Override
	public String update(RegisterAndLearnerDto registerAndLearnerDto) {
		// TODO Auto-generated method stub
		return null;
	}

}
