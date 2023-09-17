package com.project.person.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.utils.DateConverter;
import com.project.common.utils.ObjectMapperUtils;
import com.project.person.dto.TutorInterestDto;
import com.project.person.entity.RegisterAndLearner;
import com.project.person.entity.Tutor;
import com.project.person.entity.TutorInterest;
import com.project.person.repository.RegisterAndLearnerRepository;
import com.project.person.repository.TutorInterestRepository;
import com.project.person.repository.TutorRepository;
import com.project.person.service.TutorInterestService;

@Service
public class TutorInterestServiceImpl implements TutorInterestService {

	@Autowired
	private TutorInterestRepository tutorInterestRepository;

	@Autowired
	private TutorRepository tutorRepository;

	@Autowired
	private RegisterAndLearnerRepository registerAndLearnerRepository;

	@Override
	public void deleteById(String id) {
		tutorInterestRepository.deleteById(id);
	}

	@Override
	public List<TutorInterest> findAll(Long tutorId) {
		return tutorInterestRepository.findAllByTutorId(tutorId);
	}

	@Override
	public String updateTutorInvitation(TutorInterestDto dto) {
		Optional<TutorInterest> tutorInterestOpt = tutorInterestRepository.findById(dto.getId());
		if (!tutorInterestOpt.isEmpty()) {
			TutorInterest tutorInterest = tutorInterestOpt.get();
			tutorInterest = ObjectMapperUtils.map(dto, TutorInterest.class);
			tutorInterest.setCreatedAt(DateConverter.convertDateToLocalDateTime(new Date()));
			tutorInterest.setCreatedBy(dto.getCreateBy());
			Optional<Tutor> tutorOpt = tutorRepository.findById(dto.getTutorId());
			if (!tutorOpt.isEmpty()) {
				Tutor tutor = tutorOpt.get();
				tutorInterest.setTutor(tutor);
			}
			Optional<RegisterAndLearner> registerAndLearnerOpt = registerAndLearnerRepository
					.findById(dto.getRegisterAndLearnerId());
			if (!registerAndLearnerOpt.isEmpty()) {
				RegisterAndLearner registerAndLearner = registerAndLearnerOpt.get();
				tutorInterest.setRegisterAndLearner(registerAndLearner);
			}

			return tutorInterestRepository.save(tutorInterest).getId();
		}
		return StringUtils.EMPTY;
	}

	@Override
	public String saveTutorInvitation(TutorInterestDto dto) {
		TutorInterest tutorInterest = new TutorInterest();
		tutorInterest = ObjectMapperUtils.map(dto, TutorInterest.class);
		tutorInterest.setCreatedAt(DateConverter.convertDateToLocalDateTime(new Date()));
		tutorInterest.setCreatedBy(dto.getCreateBy());
		Optional<Tutor> tutorOpt = tutorRepository.findById(dto.getTutorId());
		if (!tutorOpt.isEmpty()) {
			Tutor tutor = tutorOpt.get();
			tutorInterest.setTutor(tutor);
		}
		if (!StringUtils.isEmpty(dto.getRegisterAndLearnerId())) {
			Optional<RegisterAndLearner> registerAndLearnerOpt = registerAndLearnerRepository
					.findById(dto.getRegisterAndLearnerId());
			if (!tutorOpt.isEmpty()) {
				RegisterAndLearner registerAndLearner = registerAndLearnerOpt.get();
				tutorInterest.setRegisterAndLearner(registerAndLearner);
			}
		}

		return tutorInterestRepository.save(tutorInterest).getId();
	}

	@Override
	public Optional<TutorInterest> findById(String id) {
		return tutorInterestRepository.findById(id);
	}

}
