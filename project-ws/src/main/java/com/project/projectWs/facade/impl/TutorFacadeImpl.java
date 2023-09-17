package com.project.projectWs.facade.impl;

import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.web.multipart.MultipartFile;

import com.google.common.collect.Sets;
import com.project.common.utils.ObjectMapperUtils;
import com.project.education.dto.SubjectGroupDto;
import com.project.education.service.SubjectGroupService;
import com.project.job.dto.JobDto;
import com.project.job.service.JobService;
import com.project.location.dto.AreaDto;
import com.project.location.service.AreaService;
import com.project.person.dto.TutorDto;
import com.project.person.dto.TutorForFindAllDto;
import com.project.person.entity.Tutor;
import com.project.person.service.TutorService;
import com.project.projectWs.dto.RequestSaveTutor;
import com.project.projectWs.dto.RequestUpdateTutor;
import com.project.projectWs.dto.ResponseTutor;
import com.project.projectWs.dto.TutorForWebByIdDto;
import com.project.projectWs.dto.TutorForWebDto;
import com.project.projectWs.facade.TutorFacade;
import com.project.projectWs.facade.UserFacade;
import com.project.review.dto.TutorReviewDto;
import com.project.review.service.TutorReviewService;
import com.project.storage.service.AvatarAndPublicAndPrivateImgsTutorAwsService;

@Service
public class TutorFacadeImpl implements TutorFacade {

	@Autowired
	private TutorService tutorService;

	@Autowired
	private AreaService areaService;

	@Autowired
	private AvatarAndPublicAndPrivateImgsTutorAwsService avatarTutorAwsService;

	@Autowired
	private UserFacade userFacade;

	@Autowired
	private SubjectGroupService subjectGroupService;

	@Autowired
	private JobService jobService;

	@Autowired
	private TutorReviewService tutorReviewService;

	@Override
	public Long saveTutor(RequestSaveTutor request) {
		TutorDto dto = new TutorDto();
		dto = ObjectMapperUtils.map(request, TutorDto.class);
		dto.setCreatedBy(userFacade.getCurrentUser());
		dto.setAreaTutorIds(request.getRelAreaIds());
		dto.setCalendars(dto.getCalendars());
		dto.setNowLevel(dto.getNowLevel());
		dto.setNowLevelUpdatedAt(dto.getNowLevelUpdatedAt());
		dto.setTutorSubjectGroupMaybeIds(dto.getTutorSubjectGroupMaybeIds());
		dto.setTutorSubjectGroupForSureIds(dto.getTutorSubjectGroupForSureIds());
		Long id = tutorService.saveTutor(dto);
		return id;
	}

	@Override
	public List<ResponseTutor> findAllTutor() {
		List<TutorForFindAllDto> dtos = tutorService.findAllTutor();
		List<ResponseTutor> tutors = new LinkedList<>();
		List<AreaDto> areas = areaService.findAll();
		List<SubjectGroupDto> subjectGroups = subjectGroupService.findAll();
		List<JobDto> jobsByTutorIds = jobService.findAll();
		dtos.stream().forEach(item -> {
			ResponseTutor responseTutor = new ResponseTutor();
			responseTutor = convertObjectFrSerToObjectFacade(responseTutor, item, areas, subjectGroups, jobsByTutorIds);
			tutors.add(responseTutor);
		});
		return tutors;
	}

	@Override
	public ResponseTutor findByTutorCode(final Long tutorCode) {
		TutorForFindAllDto item = tutorService.findByTutorCode(tutorCode);
		List<JobDto> jobsByTutorIds = jobService.findAll();
		if (item != null) {
			List<AreaDto> areas = areaService.findAll();
			List<SubjectGroupDto> subjectGroups = subjectGroupService.findAll();

			ResponseTutor responseTutor = new ResponseTutor();
			responseTutor = convertObjectFrSerToObjectFacade(responseTutor, item, areas, subjectGroups, jobsByTutorIds);
			return Optional.of(responseTutor).get();
		}
		return null;

	}

	@Override
	public List<ResponseTutor> findByPhoneNumber(final String phoneNumber) {
		List<TutorForFindAllDto> dtos = tutorService.findByPhoneNumber(phoneNumber);
		List<JobDto> jobsByTutorIds = jobService.findAll();
		List<ResponseTutor> tutors = new LinkedList<>();
		List<AreaDto> areas = areaService.findAll();
		List<SubjectGroupDto> subjectGroups = subjectGroupService.findAll();

		dtos.stream().forEach(item -> {
			ResponseTutor responseTutor = new ResponseTutor();
			responseTutor = convertObjectFrSerToObjectFacade(responseTutor, item, areas, subjectGroups, jobsByTutorIds);
			tutors.add(responseTutor);
		});
		return tutors;
	}

	@Override
	public List<ResponseTutor> findByEndPhoneNumber(String endPhoneNumber) {
		List<TutorForFindAllDto> dtos = tutorService.findByEndPhoneNumber(endPhoneNumber);
		List<JobDto> jobsByTutorIds = jobService.findAll();
		List<ResponseTutor> tutors = new LinkedList<>();
		List<AreaDto> areas = areaService.findAll();
		List<SubjectGroupDto> subjectGroups = subjectGroupService.findAll();

		dtos.stream().forEach(item -> {
			ResponseTutor responseTutor = new ResponseTutor();
			responseTutor = convertObjectFrSerToObjectFacade(responseTutor, item, areas, subjectGroups, jobsByTutorIds);
			tutors.add(responseTutor);
		});
		return tutors;
	}

	@Override
	public List<ResponseTutor> findByFullNameContain(final String fullName) {
		List<TutorForFindAllDto> dtos = tutorService.findByFullNameContain(fullName);
		List<ResponseTutor> tutors = new LinkedList<>();
		List<JobDto> jobsByTutorIds = jobService.findAll();
		List<AreaDto> areas = areaService.findAll();
		List<SubjectGroupDto> subjectGroups = subjectGroupService.findAll();

		dtos.stream().forEach(item -> {
			ResponseTutor responseTutor = new ResponseTutor();
			responseTutor = convertObjectFrSerToObjectFacade(responseTutor, item, areas, subjectGroups, jobsByTutorIds);
			tutors.add(responseTutor);
		});
		return tutors;
	}

	@Override
	public List<ResponseTutor> findByEnglishFullName(final String fullname) {
		List<TutorForFindAllDto> dtos = tutorService.findByEnglishFullName(fullname);
		List<JobDto> jobsByTutorIds = jobService.findAll();
		List<ResponseTutor> tutors = new LinkedList<>();
		List<AreaDto> areas = areaService.findAll();
		List<SubjectGroupDto> subjectGroups = subjectGroupService.findAll();

		dtos.stream().forEach(item -> {
			ResponseTutor responseTutor = new ResponseTutor();
			responseTutor = convertObjectFrSerToObjectFacade(responseTutor, item, areas, subjectGroups, jobsByTutorIds);
			tutors.add(responseTutor);
		});
		return tutors;
	}

	@Override
	public List<String> findByEngfullnameAndShowFullName(final String fullname) {
		return tutorService.findByEngfullnameAndShowFullName(fullname);
	}

	@Override
	public List<String> findByfullnameAndShowFullName(final String fullname) {
		return tutorService.findByfullnameAndShowFullName(fullname);
	}

	@Override
	public String createOrUpdateTutorAvatar(final MultipartFile file, final String tutorCode) {
		String url = avatarTutorAwsService.uploadImageToAmazon(file, tutorCode);
		Long tutorUpdatedId = handleAvatarOfTutor(tutorCode, url);
		return tutorUpdatedId != null ? "Insert Avatar successfully" : "";
	}

	@Override
	public void deleteAvatarOfTutor(final String urlFile) {
		avatarTutorAwsService.deleteByFileNameAndID(urlFile);
		String id = urlFile.substring(urlFile.lastIndexOf('/') + 1);
		handleAvatarOfTutor(id, null);
	}

	@Override
	public String uploadImageToAmazonPrivateImgs(final MultipartFile file, final String fileName) {
		String url = avatarTutorAwsService.uploadImageToAmazonPrivateImgs(file, fileName);
		TutorDto tutorDto = tutorService.findById(
				Long.parseLong(fileName.substring(fileName.lastIndexOf("/") + 1, fileName.lastIndexOf("Private"))));
		List<String> urlPrivateImgs = tutorDto.getPrivateImgs();
		urlPrivateImgs.add(url);
		urlPrivateImgs = new LinkedList<>(new HashSet<>(urlPrivateImgs));
		tutorDto.setPrivateImgs(urlPrivateImgs);
		Tutor tutor = ObjectMapperUtils.map(tutorDto, Tutor.class);
		tutor.setPrivateImgs(urlPrivateImgs);
		Long tutorUpdatedId = tutorService.updateTutor(tutor);
		return tutorUpdatedId != null ? "Insert PrivateImgs successfully" : "";
	}

	private Long handleAvatarOfTutor(final String tutorCode, final String urlParameter) {
		TutorDto tutorDto = tutorService.findById(Long.parseLong(tutorCode));
		tutorDto.setAvatar(urlParameter);
		Tutor tutor = ObjectMapperUtils.map(tutorDto, Tutor.class);
		Long tutorUpdatedId = tutorService.updateTutor(tutor);
		return tutorUpdatedId;
	}

	@Override
	public String uploadImageToAmazonPubclicImgs(MultipartFile file, String fileName) {
		String url = avatarTutorAwsService.uploadImageToAmazonPubclicImgs(file, fileName);
		TutorDto tutorDto = tutorService.findById(
				Long.parseLong(fileName.substring(fileName.lastIndexOf("/") + 1, fileName.lastIndexOf("Public"))));
		List<String> urlPublicImgs = tutorDto.getPublicImgs();
		urlPublicImgs.add(url);
		urlPublicImgs = new LinkedList<>(new HashSet<>(urlPublicImgs));
		tutorDto.setPublicImgs(urlPublicImgs);
		Tutor tutor = ObjectMapperUtils.map(tutorDto, Tutor.class);
		tutor.setPublicImgs(urlPublicImgs);
		Long tutorUpdatedId = tutorService.updateTutor(tutor);
		return tutorUpdatedId != null ? "Insert PublicImgs successfully" : "";
	}

	@Override
	public void deleteByFileNameAndIDPrivateImgs(String urlFile) {
		avatarTutorAwsService.deleteByFileNameAndIDPrivateImgs(urlFile);
		TutorDto tutorDto = tutorService.findById(
				Long.parseLong(urlFile.substring(urlFile.lastIndexOf("/") + 1, urlFile.lastIndexOf("Private"))));
		List<String> urlPrivateImgs = tutorDto.getPrivateImgs();
		urlPrivateImgs.remove(urlFile);
		tutorDto.setPrivateImgs(urlPrivateImgs);
		Tutor tutor = ObjectMapperUtils.map(tutorDto, Tutor.class);
		tutorService.updateTutor(tutor);
	}

	@Override
	public void deleteByFileNameAndIDPublicImgs(String urlFile) {
		avatarTutorAwsService.deleteByFileNameAndIDPublicImgs(urlFile);
		TutorDto tutorDto = tutorService.findById(
				Long.parseLong(urlFile.substring(urlFile.lastIndexOf("/") + 1, urlFile.lastIndexOf("Public"))));
		List<String> urlPublicImgs = tutorDto.getPublicImgs();
		urlPublicImgs.remove(urlFile);
		tutorDto.setPublicImgs(urlPublicImgs);
		Tutor tutor = ObjectMapperUtils.map(tutorDto, Tutor.class);
		tutorService.updateTutor(tutor);
	}

	@Override
	public String uploadOrUpdatePublicImg(final MultipartFile file, final String tutorCode) {
		List<String> listOject = avatarTutorAwsService.findAllPublicImgs();
		String awsAvatarURL = "";
		if (listOject.isEmpty()) {
			awsAvatarURL = uploadImageToAmazonPubclicImgs(file, tutorCode + "Public" + String.valueOf(1));
			return awsAvatarURL;
		} else {
			String lastURL = avatarTutorAwsService.findAllByNameContainer(tutorCode + "Public", listOject);
			if (lastURL == null) {
				awsAvatarURL = uploadImageToAmazonPubclicImgs(file, tutorCode + "Public" + String.valueOf(1));
				return awsAvatarURL;
			} else {
				int count = Integer.parseInt(lastURL.substring(lastURL.lastIndexOf("c") + 1));
				awsAvatarURL = uploadImageToAmazonPubclicImgs(file, tutorCode + "Public" + String.valueOf(count + 1));
				return awsAvatarURL;
			}
		}
	}

	@Override
	public String uploadOrUpdatePrivateImg(final MultipartFile file, final String tutorCode) {
		List<String> listOject = avatarTutorAwsService.findAllPrivateImgs();
		String awsAvatarURL = "";
		if (listOject.isEmpty()) {
			awsAvatarURL = uploadImageToAmazonPrivateImgs(file, tutorCode + "Private" + String.valueOf(1));
			return awsAvatarURL;
		} else {
			String lastURL = avatarTutorAwsService.findAllByNameContainer(tutorCode + "Private", listOject);
			if (lastURL == null) {
				awsAvatarURL = uploadImageToAmazonPrivateImgs(file, tutorCode + "Private" + String.valueOf(1));
				return awsAvatarURL;
			} else {
				int count = Integer.parseInt(lastURL.substring(lastURL.lastIndexOf("e") + 1));
				awsAvatarURL = uploadImageToAmazonPrivateImgs(file, tutorCode + "Private" + String.valueOf(count + 1));
				return awsAvatarURL;
			}
		}
	}

	@Override
	public String updatePrivateImageToAmazon(final MultipartFile file, final String tutorCode) {
		return avatarTutorAwsService.updatePrivateImageToAmazon(file, tutorCode);
	}

	@Override
	public String updatePublicImageToAmazon(final MultipartFile file, final String tutorCode) {
		return avatarTutorAwsService.updatePublicImageToAmazon(file, tutorCode);
	}

	@Override
	public TutorDto findById(Long id) {
		return tutorService.findById(id);
	}

	@Override
	public Long updateTutor(RequestUpdateTutor request) {
		TutorDto dto = new TutorDto();
		dto = ObjectMapperUtils.map(request, TutorDto.class);
		dto.setCreatedBy(userFacade.getCurrentUser());
		dto.setAreaTutorIds(request.getRelAreaIds());
		dto.setCalendars(dto.getCalendars());
		dto.setNowLevel(dto.getNowLevel());
		dto.setNowLevelUpdatedAt(dto.getNowLevelUpdatedAt());
		dto.setTutorSubjectGroupMaybeIds(dto.getTutorSubjectGroupMaybeIds());
		dto.setTutorSubjectGroupForSureIds(dto.getTutorSubjectGroupForSureIds());
		Long id = tutorService.update(dto);
		return id;
	}

	private ResponseTutor convertObjectFrSerToObjectFacade(ResponseTutor responseTutor, TutorForFindAllDto item,
			List<AreaDto> areas, List<SubjectGroupDto> subjectGroups, List<JobDto> jobsByTutorIds) {

		responseTutor = ObjectMapperUtils.map(item, ResponseTutor.class);

		AreaDto areaDto = areas.stream().filter(area -> area.getId().equals(item.getTutorAddressAreaId()))
				.collect(Collectors.toList()).get(0);

		responseTutor.setTutorAddressAreaId(areaDto);

		responseTutor.setAreaTutorId(
				areas.stream().filter(area -> item.getRelArea().stream().anyMatch(it -> it.equals(area.getId())))
						.collect(Collectors.toList()));

		responseTutor.setSubjectGroupForsures(subjectGroups.stream()
				.filter(sub -> item.getSubjectGroupForsureIds().stream().anyMatch(it -> it.equals(sub.getId())))
				.collect(Collectors.toList()));

		responseTutor.setSubjectGroupMaybes(subjectGroups.stream()
				.filter(sub -> item.getSubjectGroupMaybeIds().stream().anyMatch(it -> it.equals(sub.getId())))
				.collect(Collectors.toList()));

		responseTutor.setSubjectGroupfails(subjectGroups.stream()
				.filter(sub -> item.getSubjectGroupFails().stream().anyMatch(it -> it.equals(sub.getId())))
				.collect(Collectors.toList()));

		responseTutor.setJobDtos(
				jobsByTutorIds.stream().filter(it -> it.getTutorId().equals(item.getId())).collect(Collectors.toSet()));

		return responseTutor;
	}

	@Override
	public List<TutorForWebDto> findAllTutorForWeb() {
		List<TutorForFindAllDto> dtos = tutorService.findAllTutor().stream()
				.filter(item -> item.getAverageStarNumbers() >= 4.5).collect(Collectors.toList());
		List<TutorForWebDto> tutors = new LinkedList<>();
		List<AreaDto> areas = areaService.findAll();
		List<SubjectGroupDto> subjectGroups = subjectGroupService.findAll();
		List<JobDto> jobsByTutorIds = jobService.findAll();
		List<TutorReviewDto> tutorReviewDtos = tutorReviewService.findAll();
		dtos.stream().forEach(item -> {

			long countJob = jobsByTutorIds.stream().filter(it -> it.getTutorId().equals(item.getId())).count();
			long countReview = tutorReviewDtos.stream().filter(it -> it.getTutorId().equals(item.getId())).count();
			TutorForWebDto responseTutor = new TutorForWebDto();
			responseTutor = ObjectMapperUtils.map(item, TutorForWebDto.class);
			responseTutor.setJobNumbers(countJob);
			responseTutor.setTutorReviewNumbers(countReview);

			responseTutor.setSubjectGroupMaybes(subjectGroups.stream()
					.filter(sub -> item.getSubjectGroupMaybeIds().stream().anyMatch(it -> it.equals(sub.getId())))
					.collect(Collectors.toList()));

			responseTutor.setRelAreas(
					areas.stream().filter(area -> item.getRelArea().stream().anyMatch(it -> it.equals(area.getId())))
							.collect(Collectors.toList()));

			tutors.add(responseTutor);
		});
		return tutors;
	}

	@Override
	public TutorForWebByIdDto findAllTutorForWebById(Long id) {
		TutorForFindAllDto entity = tutorService.findByTutorCode(id);
		List<AreaDto> areas = areaService.findAll();
		List<SubjectGroupDto> subjectGroups = subjectGroupService.findAll();
		List<JobDto> jobsByTutorIds = jobService.findAll();
		List<TutorReviewDto> tutorReviewDtos = tutorReviewService.findAll();

		long countJob = jobsByTutorIds.stream().filter(it -> it.getTutorId().equals(entity.getId())).count();
		long countReview = tutorReviewDtos.stream().filter(it -> it.getTutorId().equals(entity.getId())).count();
		TutorForWebByIdDto responseTutor = new TutorForWebByIdDto();
		responseTutor = ObjectMapperUtils.map(entity, TutorForWebByIdDto.class);
		responseTutor.setJobNumbers(countJob);
		responseTutor.setTutorReviewNumbers(countReview);

		responseTutor.setSubjectGroupMaybes(subjectGroups.stream()
				.filter(sub -> entity.getSubjectGroupMaybeIds().stream().anyMatch(it -> it.equals(sub.getId())))
				.collect(Collectors.toList()));

		responseTutor.setRelArea(
				areas.stream().filter(area -> entity.getRelArea().stream().anyMatch(it -> it.equals(area.getId())))
						.collect(Collectors.toList()));

		responseTutor.setTutorReviews(tutorReviewDtos.stream().filter(it -> it.getTutorId().equals(entity.getId()))
				.collect(Collectors.toList()));

		return responseTutor;
	}

	@Override
	public boolean findAllTutorSynchronizedAvatarAndPublicAndPrivateImg() {
		Set<String> urlAvatarTutors = Sets.newHashSet(avatarTutorAwsService.findAll());

		Set<String> urlTutorPrivateImgs = Sets.newHashSet(avatarTutorAwsService.findAllPrivateImgs());

		Set<String> urlTutorPublicImgs = Sets.newHashSet(avatarTutorAwsService.findAllPublicImgs());

		List<Tutor> tutors = tutorService.findTutorBeforeSynchronize();

		for (Tutor tutor : tutors) {
			// avatar

			List<String> urlAvatars = urlAvatarTutors.stream()
					.filter(item -> item.contains(String.valueOf(tutor.getId()))).collect(Collectors.toList());

			if (!CollectionUtils.isEmpty(urlAvatars)) {
				tutor.setAvatar(urlAvatars.get(0));
			}

			// privateImgs

			List<String> urlPrivateImgs = urlTutorPrivateImgs.stream()
					.filter(item -> item.contains(String.valueOf(tutor.getId()))).collect(Collectors.toList());

			if (!CollectionUtils.isEmpty(urlPrivateImgs)) {
				tutor.setPrivateImgs(urlPrivateImgs);
			}

			List<String> urlPublicImgs = urlTutorPublicImgs.stream()
					.filter(item -> item.contains(String.valueOf(tutor.getId()))).collect(Collectors.toList());

			if (!CollectionUtils.isEmpty(urlPublicImgs)) {
				tutor.setPublicImgs(urlPublicImgs);
			}

		}

		tutorService.saveAll(tutors);

		return true;
	}

}
