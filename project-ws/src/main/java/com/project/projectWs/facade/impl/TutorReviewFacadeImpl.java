package com.project.projectWs.facade.impl;

import java.text.DecimalFormat;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.web.multipart.MultipartFile;

import com.project.common.utils.ObjectMapperUtils;
import com.project.job.dto.JobDto;
import com.project.job.service.JobService;
import com.project.person.dto.TutorDto;
import com.project.person.dto.TutorForFindAllDto;
import com.project.person.service.TutorService;
import com.project.projectWs.dto.RequestSaveTutorReviewDto;
import com.project.projectWs.dto.RequestUpdateTutorReviewDto;
import com.project.projectWs.dto.ResponseTutorBasicInfo;
import com.project.projectWs.dto.ResponseTutorReviewDto;
import com.project.projectWs.facade.TutorReviewFacade;
import com.project.projectWs.facade.UserFacade;
import com.project.review.dto.TutorReviewDto;
import com.project.review.service.TutorReviewService;
import com.project.storage.service.FeedbackImgService;

@Service
public class TutorReviewFacadeImpl implements TutorReviewFacade {

	@Autowired
	private JobService jobService;

	@Autowired
	private UserFacade userFacade;

	@Autowired
	private TutorService tutorService;

	@Autowired
	private TutorReviewService tutorReviewService;

	@Autowired
	private FeedbackImgService feedbackImgService;

	@Override
	public String createTutorReview(RequestSaveTutorReviewDto request) {

		TutorReviewDto dto = ObjectMapperUtils.map(request, TutorReviewDto.class);
		dto.setCreatedBy(userFacade.getCurrentUser());
		JobDto jobDto = jobService.findById(request.getJobId());

		if (jobDto != null) {
			dto.setJobId(jobDto.getId());
		}

		String id = tutorReviewService.createTutorReview(dto);

		TutorDto tutorDto = tutorService.findById(request.getTutorId());

		List<TutorReviewDto> starNumbersList = tutorReviewService.getAllByTutorId(tutorDto.getId());

		Double average = 0.0;

		if (!CollectionUtils.isEmpty(starNumbersList)) {
			average = starNumbersList.stream().map(item -> {
				return item.getStarNumber() == null ? 0.0 : item.getStarNumber();
			}).mapToDouble(Double::doubleValue).sum();

			Double resultAvarage = (average / starNumbersList.size());
			DecimalFormat decimalFormat = new DecimalFormat("#.#");
			resultAvarage = Double.parseDouble(decimalFormat.format(resultAvarage));
			tutorDto.setAverageStarNumbers(resultAvarage);
		}

		Long idTutor = tutorService.update(tutorDto);

		return idTutor != null ? id : "";
	}

	@Override
	public List<ResponseTutorReviewDto> findAll() {

		List<JobDto> jobs = jobService.findAll();
		List<TutorForFindAllDto> tutors = tutorService.findAllTutor();

		List<TutorReviewDto> entities = tutorReviewService.findAll();

		if (!CollectionUtils.isEmpty(entities)) {
			entities.stream().map(response -> {
				ResponseTutorReviewDto dto = new ResponseTutorReviewDto();
				dto = convertToResponse(dto, response, jobs, tutors);
				return dto;
			}).collect(Collectors.toList());
		}

		return new LinkedList<>();
	}

	@Override
	public ResponseTutorReviewDto findById(String id) {

		List<JobDto> jobs = jobService.findAll();
		List<TutorForFindAllDto> tutors = tutorService.findAllTutor();

		TutorReviewDto entity = tutorReviewService.findById(id);
		if (entity != null) {
			ResponseTutorReviewDto dto = new ResponseTutorReviewDto();
			dto = convertToResponse(dto, entity, jobs, tutors);
			return dto;
		}

		return null;
	}

	private ResponseTutorReviewDto convertToResponse(ResponseTutorReviewDto response, TutorReviewDto dto,
			List<JobDto> jobs, List<TutorForFindAllDto> tutors) {

		response = ObjectMapperUtils.map(dto, ResponseTutorReviewDto.class);

		Optional<JobDto> job = jobs.stream().filter(item -> item.getId().equals(dto.getJobId())).findFirst();
		if (!job.isEmpty()) {
			JobDto jobDto = job.get();
			response.setJob(jobDto);
		}

		Optional<TutorForFindAllDto> tutorFilterds = tutors.stream()
				.filter(item -> item.getId().equals(dto.getTutorId())).findFirst();

		if (!job.isEmpty()) {
			JobDto jobDto = job.get();
			response.setJob(jobDto);
		}

		if (!tutorFilterds.isEmpty()) {
			TutorForFindAllDto tutorDto = tutorFilterds.get();

			ResponseTutorBasicInfo tutorRe = new ResponseTutorBasicInfo();

			tutorRe = ObjectMapperUtils.map(tutorDto, ResponseTutorBasicInfo.class);

			response.setTutor(tutorRe);
		}

		return response;
	}

	@Override
	public String uploadImageToAmazonPrivateImgs(MultipartFile file, String fileName) {
		String url = feedbackImgService.uploadImageToAmazonPubclicImgs(file, fileName);
		TutorReviewDto tutorDto = tutorReviewService
				.findById(fileName.substring(fileName.lastIndexOf("/") + 1, fileName.lastIndexOf("Private")));
		List<String> urlPublicImgs = tutorDto.getPrivateFeedbackImgs();
		urlPublicImgs.add(url);
		urlPublicImgs = new LinkedList<>(new HashSet<>(urlPublicImgs));
		tutorDto.setPrivateFeedbackImgs(urlPublicImgs);
		TutorReviewDto tutor = ObjectMapperUtils.map(tutorDto, TutorReviewDto.class);
		String tutorReviewUpdatedId = tutorReviewService.update(tutor);
		return tutorReviewUpdatedId != null ? "Insert Privates successfully" : "";
	}

	@Override
	public String uploadImageToAmazonPubclicImgs(MultipartFile file, String fileName) {
		String url = feedbackImgService.uploadImageToAmazonPubclicImgs(file, fileName);
		TutorReviewDto tutorDto = tutorReviewService
				.findById(fileName.substring(fileName.lastIndexOf("/") + 1, fileName.lastIndexOf("Private")));
		List<String> urlPublicImgs = tutorDto.getPublicFeedbackImgs();
		urlPublicImgs.add(url);
		urlPublicImgs = new LinkedList<>(new HashSet<>(urlPublicImgs));
		tutorDto.setPublicFeedbackImgs(urlPublicImgs);
		String tutorReviewUpdatedId = tutorReviewService.update(tutorDto);
		return tutorReviewUpdatedId != null ? "Insert PublicImgs successfully" : "";
	}

	@Override
	public void deleteByFileNameAndIDPrivateImgs(String urlFile) {
		feedbackImgService.deleteByFileNameAndIDPrivateImgs(urlFile);
		TutorReviewDto tutorReviewDto = tutorReviewService
				.findById(urlFile.substring(urlFile.lastIndexOf("/") + 1, urlFile.lastIndexOf("Private")));
		List<String> urlPrivateImgs = tutorReviewDto.getPrivateFeedbackImgs();
		urlPrivateImgs.remove(urlFile);
		tutorReviewDto.setPrivateFeedbackImgs(urlPrivateImgs);
		tutorReviewService.update(tutorReviewDto);

	}

	@Override
	public void deleteByFileNameAndIDPublicImgs(String urlFile) {
		feedbackImgService.deleteByFileNameAndIDPublicImgs(urlFile);
		TutorReviewDto tutorReviewDto = tutorReviewService
				.findById(urlFile.substring(urlFile.lastIndexOf("/") + 1, urlFile.lastIndexOf("Private")));
		List<String> urlPrivateImgs = tutorReviewDto.getPublicFeedbackImgs();
		urlPrivateImgs.remove(urlFile);
		tutorReviewDto.setPublicFeedbackImgs(urlPrivateImgs);
		tutorReviewService.update(tutorReviewDto);
	}

	@Override
	public String uploadOrUpdatePublicImg(MultipartFile file, String tutorReviewId) {
		List<String> listOject = feedbackImgService.findAllPublicFeedBackImgs();
		String awsAvatarURL = "";
		if (listOject.isEmpty()) {
			awsAvatarURL = uploadImageToAmazonPubclicImgs(file, tutorReviewId + "Public" + String.valueOf(1));
			return awsAvatarURL;
		} else {
			String lastURL = feedbackImgService.findAllByNameContainer(tutorReviewId + "Public", listOject);
			if (lastURL == null) {
				awsAvatarURL = uploadImageToAmazonPubclicImgs(file, tutorReviewId + "Public" + String.valueOf(1));
				return awsAvatarURL;
			} else {
				int count = Integer.parseInt(lastURL.substring(lastURL.lastIndexOf("c") + 1));
				awsAvatarURL = uploadImageToAmazonPubclicImgs(file,
						tutorReviewId + "Public" + String.valueOf(count + 1));
				return awsAvatarURL;
			}
		}
	}

	@Override
	public String uploadOrUpdatePrivateImg(MultipartFile file, String tutorReviewId) {

		List<String> listOject = feedbackImgService.findAllPrivateFeedBackImgs();
		String awsAvatarURL = "";
		if (listOject.isEmpty()) {
			awsAvatarURL = uploadImageToAmazonPrivateImgs(file, tutorReviewId + "Private" + String.valueOf(1));
			return awsAvatarURL;
		} else {
			String lastURL = feedbackImgService.findAllByNameContainer(tutorReviewId + "Private", listOject);
			if (lastURL == null) {
				awsAvatarURL = uploadImageToAmazonPrivateImgs(file, tutorReviewId + "Private" + String.valueOf(1));
				return awsAvatarURL;
			} else {
				int count = Integer.parseInt(lastURL.substring(lastURL.lastIndexOf("e") + 1));
				awsAvatarURL = uploadImageToAmazonPrivateImgs(file,
						tutorReviewId + "Private" + String.valueOf(count + 1));
				return awsAvatarURL;
			}
		}

	}

	@Override
	public String updateTutorReview(RequestUpdateTutorReviewDto request) {
		TutorReviewDto dto = ObjectMapperUtils.map(request, TutorReviewDto.class);
		return tutorReviewService.update(dto);
	}

	@Override
	public String updatePrivateImageToAmazon(MultipartFile file, String nameFile) {
		return feedbackImgService.updatePrivateImageToAmazon(file, nameFile);
	}

	@Override
	public String updatePublicImageToAmazon(MultipartFile file, String nameFile) {
		return feedbackImgService.updatePublicImageToAmazon(file, nameFile);
	}

}
