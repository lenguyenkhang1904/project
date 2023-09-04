package com.project.person.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.utils.DateConverter;
import com.project.common.utils.ObjectMapperUtils;
import com.project.person.dto.TutorInvitationDto;
import com.project.person.entity.RegisterAndLearner;
import com.project.person.entity.Tutor;
import com.project.person.entity.TutorInvitation;
import com.project.person.repository.RegisterAndLearnerRepository;
import com.project.person.repository.TutorInvitationRepository;
import com.project.person.repository.TutorRepository;
import com.project.person.service.TutorInvitationService;

@Service
public class TutorInvitationServiceImpl implements TutorInvitationService {

	@Autowired
	private TutorInvitationRepository tutorInvitationRepository;

	@Autowired
	private TutorRepository tutorRepository;
	
	@Autowired
	private RegisterAndLearnerRepository registerAndLearnerRepository;

	@Override
	public String saveTutorInvitation(TutorInvitationDto dto) {
		TutorInvitation tutorInvitation = new TutorInvitation();
		tutorInvitation = ObjectMapperUtils.map(dto, TutorInvitation.class);
		tutorInvitation.setCreatedAt(DateConverter.convertDateToLocalDateTime(new Date()));
		tutorInvitation.setCreatedBy(dto.getCreateBy());
		Optional<Tutor> tutorOpt = tutorRepository.findById(dto.getTutorId());
		if (!tutorOpt.isEmpty()) {
			Tutor tutor = tutorOpt.get();
			tutorInvitation.setTutor(tutor);
		}
		Optional<RegisterAndLearner> registerAndLearnerOpt = registerAndLearnerRepository.findById(dto.getRegisterAndLearnerId());
		if (!tutorOpt.isEmpty()) {
			RegisterAndLearner registerAndLearner = registerAndLearnerOpt.get();
			tutorInvitation.setRegisterAndLearner(registerAndLearner);
		}
		
		return tutorInvitationRepository.save(tutorInvitation).getId();
	}

	@Override
	public String updateTutorInvitation(TutorInvitationDto dto) {
		Optional<TutorInvitation> tutorInvitationOpt = tutorInvitationRepository.findById(dto.getId());
		if (!tutorInvitationOpt.isEmpty()) {
			TutorInvitation tutorInvitation = tutorInvitationOpt.get();
			tutorInvitation = ObjectMapperUtils.map(dto, TutorInvitation.class);
			tutorInvitation.setUpdatedAt(DateConverter.convertDateToLocalDateTime(new Date()));
			tutorInvitation.setUpdatedBy(dto.getCreateBy());
			Optional<Tutor> tutorOpt = tutorRepository.findById(dto.getTutorId());
			if (!tutorOpt.isEmpty()) {
				Tutor tutor = tutorOpt.get();
				tutorInvitation.setTutor(tutor);
			}
			Optional<RegisterAndLearner> registerAndLearnerOpt = registerAndLearnerRepository.findById(dto.getRegisterAndLearnerId());
			if (!tutorOpt.isEmpty()) {
				RegisterAndLearner registerAndLearner = registerAndLearnerOpt.get();
				tutorInvitation.setRegisterAndLearner(registerAndLearner);
			}
			
			return tutorInvitationRepository.save(tutorInvitation).getId();
		}
		return StringUtils.EMPTY;
	}

	@Override
	public void deleteById(String id) {
		tutorInvitationRepository.deleteById(id);
	}

	@Override
	public List<TutorInvitation> findAll() {
		return tutorInvitationRepository.findAll();
	}

	@Override
	public Optional<TutorInvitation> findById(String id) {
		return tutorInvitationRepository.findById(id);
	}

	@Override
	public Optional<TutorInvitation> findTutorIdAndRegisterId(Long tutorId, String reId) {
		return  tutorInvitationRepository.findByRegisterAndTutor(reId, tutorId);
	}

}
