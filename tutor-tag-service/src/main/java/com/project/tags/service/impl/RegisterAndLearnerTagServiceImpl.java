package com.project.tags.service.impl;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.utils.ObjectMapperUtils;
import com.project.tags.dto.RegisterAndLearnerTagDto;
import com.project.tags.entity.RegisterAndLearnerTag;
import com.project.tags.repository.RegisterAndLearnerTagRepository;
import com.project.tags.service.RegisterAndLearnerTagService;

@Service
public class RegisterAndLearnerTagServiceImpl implements RegisterAndLearnerTagService {

	@Autowired
	private RegisterAndLearnerTagRepository registerAndLearnerTagRepository;

	@Override
	public String create(RegisterAndLearnerTagDto dto) {
		RegisterAndLearnerTag registerAndLearnerTag = new RegisterAndLearnerTag();
		registerAndLearnerTag = ObjectMapperUtils.map(dto, RegisterAndLearnerTag.class);
		registerAndLearnerTag = registerAndLearnerTagRepository.save(registerAndLearnerTag);
		return registerAndLearnerTag.getId();
	}

	@Override
	public String update(RegisterAndLearnerTagDto dto) {
		Optional<RegisterAndLearnerTag> registerAndLearnerTagOpt = registerAndLearnerTagRepository.findById(dto.getId());
		if(!registerAndLearnerTagOpt.isEmpty()) {
			return create(dto);
		}
		return null;
	}

	@Override
	public boolean checkExistIdofRegisterAndLearnerTag(String id) {
		return registerAndLearnerTagRepository.countById(id) == 1;
	}

	@Override
	public void deleteById(String id) {
		registerAndLearnerTagRepository.deleteById(id);
	}

}
