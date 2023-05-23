package com.project.person.service.impl;

import java.util.LinkedList;
import java.util.List;
import java.util.Optional;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	public String saveRegisterAndLearner(final RegisterAndLearnerDto dto) {
		RegisterAndLearner registerAndLearner = new RegisterAndLearner();
		registerAndLearner = ObjectMapperUtils.map(dto, RegisterAndLearner.class);
		registerAndLearner.setFullName(dto.getFullName().toUpperCase());
		registerAndLearner.setEnglishFullName(HandleCharacter.removeAccent(dto.getFullName().toUpperCase()));
		registerAndLearner = registerAndLearnerRepository.save(registerAndLearner);

		// register and learner relationship
		List<RegisterAndLearnerRelationshipDto> registerAndLearnerRelationshipDtos = new LinkedList<>();
		List<RegisterAndLearnerRelationship> registerAndLearnerRelationships = new LinkedList<>();
		for (RegisterAndLearnerRelationshipDto registerAndLearnerRelationshipDto : registerAndLearnerRelationshipDtos) {
			if (StringUtils.isBlank(registerAndLearnerRelationshipDto.getIdPersonBy())) {
				RegisterAndLearnerRelationship registerAndLearnerRelationship = new RegisterAndLearnerRelationship();
				registerAndLearnerRelationship = ObjectMapperUtils.map(registerAndLearnerRelationshipDto,
						RegisterAndLearnerRelationship.class);
				registerAndLearnerRelationship.setRegisterAndLearnerBy(
						registerAndLearnerRepository.findById(registerAndLearnerRelationshipDto.getIdPersonBy()).get());
				registerAndLearnerRelationship.setRegisterAndLearnerWith(registerAndLearner);
				registerAndLearnerRelationships.add(registerAndLearnerRelationship);
			}
		}

		if (!registerAndLearnerRelationships.isEmpty()) {
			registerAndLearnerRelationshipRepository.saveAll(registerAndLearnerRelationships);
		}

		// Schooler
		List<SchoolerDto> schoolerDtos = dto.getSchoolerDtos();
		List<Schooler> schoolers = new LinkedList<>();
		for (SchoolerDto schoolerDto : schoolerDtos) {
			Schooler schooler = new Schooler();
			schooler = ObjectMapperUtils.map(schoolerDto, Schooler.class);
			schooler.setRegisterAndLearner(registerAndLearner);
			schoolers.add(schooler);
		}
		schoolerRepository.saveAll(schoolers);

		return registerAndLearner.getId();
	}

	@Override
	public List<RegisterAndLearnerDto> findAllRegisterAndLearner() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public TutorDto findByRegisterAndLearnerCode(String registerAndLearnerId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<RegisterAndLearnerDto> findByPhoneNumber(final String phoneNumber) {
		return ObjectMapperUtils.mapAll(registerAndLearnerRepository.findByPhonesContaining(phoneNumber),
				RegisterAndLearnerDto.class);
	}

	@Override
	public List<RegisterAndLearnerDto> findByEndPhoneNumber(String endPhoneNumber) {
		return ObjectMapperUtils.mapAll(registerAndLearnerRepository.findByPhonesContaining(endPhoneNumber.concat("#")),
				RegisterAndLearnerDto.class);
	}

	@Override
	public List<RegisterAndLearnerDto> findByFullNameContain(final String fullName) {
		return ObjectMapperUtils.mapAll(registerAndLearnerRepository.findByFullNameContaining(fullName),
				RegisterAndLearnerDto.class);
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
			registerAndLearnerDto.setPublicImgs(registerAndLearner.getPublicImgs());
			registerAndLearnerDto.setPrivateImgs(registerAndLearner.getPrivateImgs());
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

}
