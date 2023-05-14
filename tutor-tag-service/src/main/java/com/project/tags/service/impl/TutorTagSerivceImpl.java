package com.project.tags.service.impl;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.utils.HandleCharacter;
import com.project.common.utils.ObjectMapperUtils;
import com.project.tags.dto.*;
import com.project.tags.entity.TutorTag;
import com.project.tags.repository.TutorTagRepository;
import com.project.tags.service.TutorTagService;

@Service
public class TutorTagSerivceImpl implements TutorTagService {
	
	@Autowired
	private TutorTagRepository tutorTagRepository;

	@Override
	public String create(TutorTagDto dto) {
		TutorTag tutorTag = new TutorTag();
		tutorTag = ObjectMapperUtils.map(dto, TutorTag.class);
		tutorTag.setId(HandleCharacter.combineTagGroupAndTagName(dto.getTagGroup(), dto.getTagName()));
		tutorTag = tutorTagRepository.save(tutorTag);
		return tutorTag.getId();
	}

	@Override
	public  String update(TutorTagDto dto) {
		Optional<TutorTag> tutorTagOpt = tutorTagRepository.findById(dto.getId());
		if(!tutorTagOpt.isEmpty()) {
			TutorTag tutorTag = tutorTagOpt.get();
			tutorTag = ObjectMapperUtils.map(dto, TutorTag.class);
			tutorTag = tutorTagRepository.save(tutorTag);
			return tutorTag.getId();
		}
		return null;
	}

	@Override
	public boolean checkExistIdofTutorTag(String id) {
		return tutorTagRepository.countById(id) == 1;
	}

	@Override
	public void deleteById(String id) {
		tutorTagRepository.deleteById(id);
	}

}
