package com.project.person.service.impl;

import java.util.List;
import java.util.Optional;

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
		// Relationship
		List<RegisterAndLearnerRelationshipDto> saveRegisterAndLearnerRelationshipDtoWiths = dto
				.getRegisterAndLearnerRelationships();
		for (RegisterAndLearnerRelationship registerAndLearnerRelationship : registerAndLearner.getRelationshipWith()) {
			Boolean deleteThis = true;
			for (RegisterAndLearnerRelationshipDto saveRegisterAndLearnerRelationshipDto : saveRegisterAndLearnerRelationshipDtoWiths) {
				if (registerAndLearnerRelationship.getId() == saveRegisterAndLearnerRelationshipDto.getId())
					deleteThis = false;
			}
			if (deleteThis) {
				registerAndLearner.removeRelationshipWith(registerAndLearnerRelationship);
			}
		}
		for (RegisterAndLearnerRelationshipDto saveRegisterAndLearnerRelationshipDtos : saveRegisterAndLearnerRelationshipDtoWiths) {
			RegisterAndLearnerRelationshipDto saveRegisterAndLearnerRelationshipDto = saveRegisterAndLearnerRelationshipDtos;
			if (saveRegisterAndLearnerRelationshipDto.getId() != null) {
				RegisterAndLearnerRelationship registerAndLearnerRelationship = registerAndLearnerRelationshipRepository
						.getOne(saveRegisterAndLearnerRelationshipDto.getId());
				registerAndLearnerRelationship = ObjectMapperUtils.map(saveRegisterAndLearnerRelationshipDto,
						RegisterAndLearnerRelationship.class);
				registerAndLearnerRelationship.setRegisterAndLearnerBy(
						registerAndLearnerRepository.getOne(saveRegisterAndLearnerRelationshipDto.getIdPersonBy()));
				registerAndLearner.addRelationshipWith(registerAndLearnerRelationship);
			} else { // Create
				RegisterAndLearnerRelationship registerAndLearnerRelationship = new RegisterAndLearnerRelationship();
				registerAndLearnerRelationship = ObjectMapperUtils.map(saveRegisterAndLearnerRelationshipDto,
						RegisterAndLearnerRelationship.class);
				registerAndLearnerRelationship.setRegisterAndLearnerBy(
						registerAndLearnerRepository.getOne(saveRegisterAndLearnerRelationshipDto.getIdPersonBy()));
				registerAndLearner.addRelationshipWith(registerAndLearnerRelationship);
			}
		}
       // Schooler
		List<SchoolerDto> saveSchoolerDtos = dto.getSchoolerDtos();
		for (int i = 0; i < registerAndLearner.getSchoolers().size(); i++) {
			Boolean deleteThis = true;
			for (int j = 0; j < saveSchoolerDtos.size(); j++) {
				if (registerAndLearner.getSchoolers().get(i).getId() == saveSchoolerDtos.get(j).getId())
					deleteThis = false;
			}
			if (deleteThis) {
				registerAndLearner.removeSchooler(registerAndLearner.getSchoolers().get(i));
				i--;
			}
		}
		for (int i = 0; i < saveSchoolerDtos.size(); i++) {
			SchoolerDto saveSchoolerDto = saveSchoolerDtos.get(i);
			if (saveSchoolerDto.getId() != null) {
				Schooler schooler = schoolerRepository.getOne(saveSchoolerDto.getId());
				schooler = ObjectMapperUtils.map(saveSchoolerDto, Schooler.class);
				registerAndLearner.addSchooler(schooler);
			} else {
				Schooler schooler = new Schooler();
				schooler = ObjectMapperUtils.map(saveSchoolerDto, Schooler.class);
				registerAndLearner.addSchooler(schooler);
			}
		}
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
