package com.project.projectWs.utils;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.CollectionUtils;

import com.project.common.utils.JobResult;
import com.project.job.dto.JobDto;
import com.project.projectWs.dto.ResponseTutor;
import com.project.review.dto.TutorReviewDto;
import com.project.review.service.TutorReviewService;

@Component
public class ExperienceForTutor {

	@Autowired
	private TutorReviewService tutorReviewService;

	public ResponseTutor updateExpForTutor(ResponseTutor tutorDto) {
		List<TutorReviewDto> tutorReviews = tutorReviewService.findAll();
		Double countExp = 0.0;
		Set<JobDto> allJobs = tutorDto.getJobDtos();
		for (JobDto allJob : allJobs) {
			if (allJob.getJobResult().equals(JobResult.SUCCESS)) {
				countExp += 1.0;
			}
			if (allJob.getFailReason().contains("PH/HV chê") || allJob.getFailReason().contains("do lỗi GS")) {
				countExp -= 1;
			}

			List<TutorReviewDto> tutorReviewsByJobId = tutorReviews.stream()
					.filter(item -> item.getJobId().equals(allJob.getId())).collect(Collectors.toList());
			if (!CollectionUtils.isEmpty(tutorReviewsByJobId)) {

				for (TutorReviewDto tutorReview : tutorReviewsByJobId) {
					if (tutorReview.getStarNumber() >= 4.0 && tutorReview.getStarNumber() < 5.0) {
						countExp += 1.0;
					} else if (tutorReview.getStarNumber() == 5.0) {
						countExp += 2.0;
					} else if (tutorReview.getStarNumber() <= 2 && tutorReview.getStarNumber() >= 0) {
						countExp -= 1;
					}
				}
			}
		}
		tutorDto.setExp(countExp);
		return tutorDto;
	}
}
