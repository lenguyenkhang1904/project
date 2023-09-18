package com.project.review.service.impl;

import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import com.project.common.utils.DateConverter;
import com.project.common.utils.ObjectMapperUtils;
import com.project.review.dto.TutorReviewDto;
import com.project.review.entity.TutorReview;
import com.project.review.repository.TutorReviewRepository;
import com.project.review.service.TutorReviewService;

@Service
public class TutorReviewServiceImpl implements TutorReviewService {

	@Autowired
	private TutorReviewRepository tutorReviewRepository;

	@Override
	public List<TutorReviewDto> findAll() {

		List<TutorReview> entites = tutorReviewRepository.findAll();

		if (!CollectionUtils.isEmpty(entites)) {
			return entites.stream().map(item -> {
				TutorReviewDto dto = new TutorReviewDto();
				dto = convertToDto(item, dto);
				return dto;
			}).collect(Collectors.toList());
		}

		return new LinkedList<>();
	}

	@Override
	public String createTutorReview(TutorReviewDto dto) {
		TutorReview entity = new TutorReview();
		entity = ObjectMapperUtils.map(dto, TutorReview.class);
		entity.setCreatedBy(dto.getCreatedBy());
		entity.setCreatedAt(DateConverter.convertDateToLocalDateTime(new Date()));
		return tutorReviewRepository.save(entity).getId();
	}

	@Override
	public List<TutorReviewDto> getAllByTutorId(Long tutorId) {
		return ObjectMapperUtils.mapAll(tutorReviewRepository.findAllByIdTutor(tutorId), TutorReviewDto.class);

	}

	@Override
	public TutorReviewDto findById(String id) {
		Optional<TutorReview> entityOpt = tutorReviewRepository.findById(id);
		if (!entityOpt.isEmpty()) {
			TutorReview entity = entityOpt.get();
			TutorReviewDto dto = new TutorReviewDto();
			dto = convertToDto(entity, dto);
			return dto;
		}
		return null;
	}

	private TutorReviewDto convertToDto(TutorReview entity, TutorReviewDto dto) {

		dto = ObjectMapperUtils.map(entity, TutorReviewDto.class);

		List<String> feedbackPrivates = Arrays
				.asList((!StringUtils.isEmpty(entity.getPrivateFeedbackImgs()) ? entity.getPrivateFeedbackImgs() : "")
						.split(", "));

		if (!CollectionUtils.isEmpty(feedbackPrivates)) {
			dto.setPrivateFeedbackImgs(feedbackPrivates);
		}

		List<String> feedbackPublics = Arrays
				.asList((!StringUtils.isEmpty(entity.getPublicFeedbackImgs()) ? entity.getPublicFeedbackImgs() : "")
						.split(", "));

		if (!CollectionUtils.isEmpty(feedbackPublics)) {
			dto.setPublicFeedbackImgs(feedbackPublics);
		}

		return dto;
	}

	@Override
	public String update(TutorReviewDto tutorDto) {
		Optional<TutorReview> entityOpt = tutorReviewRepository.findById(tutorDto.getId());
		if (!entityOpt.isEmpty()) {
			TutorReview entity = entityOpt.get();
			LocalDateTime createdDate = entity.getCreatedAt();
			entity = ObjectMapperUtils.map(tutorDto, TutorReview.class);
			entity.setUpdatedBy(tutorDto.getCreatedBy());
			entity.setUpdatedAt(DateConverter.convertDateToLocalDateTime(new Date()));
			entity.setCreatedAt(createdDate);
			List<String> feedbackPrivates = tutorDto.getPrivateFeedbackImgs();

			if (!CollectionUtils.isEmpty(feedbackPrivates)) {
				entity.setPrivateFeedbackImgs(feedbackPrivates.toString().replace("[", "").replace("]", ""));
			}

			List<String> feedbackPublics = tutorDto.getPublicFeedbackImgs();
			if (!CollectionUtils.isEmpty(feedbackPublics)) {
				entity.setPublicFeedbackImgs(feedbackPublics.toString().replace("[", "").replace("]", ""));
			}

			return tutorReviewRepository.save(entity).getId();
		}
		return StringUtils.EMPTY;
	}

	@Override
	public List<TutorReview> findBeforeSynchronize() {
		return tutorReviewRepository.findAllBefore();
	}

	@Override
	public void saveAll(List<TutorReview> reviews) {
		tutorReviewRepository.saveAll(reviews);

	}

}
