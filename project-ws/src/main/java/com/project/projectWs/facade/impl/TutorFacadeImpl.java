package com.project.projectWs.facade.impl;

import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.project.common.utils.ObjectMapperUtils;
import com.project.education.dto.SubjectGroupDto;
import com.project.education.service.SubjectGroupService;
import com.project.location.dto.AreaDto;
import com.project.location.service.AreaService;
import com.project.person.dto.TutorDto;
import com.project.person.dto.TutorForFindAllDto;
import com.project.person.entity.Tutor;
import com.project.person.service.TutorService;
import com.project.projectWs.dto.RequestSaveTutor;
import com.project.projectWs.dto.RequestUpdateTutor;
import com.project.projectWs.dto.RequestUpdateTutorCalendarDto;
import com.project.projectWs.dto.RequestUpdateTutorNowLevelAndUpdateAtDto;
import com.project.projectWs.dto.RequestUpdateTutorSubjectGroupForSureDto;
import com.project.projectWs.dto.RequestUpdateTutorSubjectGroupMaybeDto;
import com.project.projectWs.dto.ResponseTutor;
import com.project.projectWs.facade.TutorFacade;
import com.project.projectWs.facade.UserFacade;
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

	@Override
	public Long saveTutor(RequestSaveTutor request) {
		TutorDto dto = new TutorDto();
		dto = ObjectMapperUtils.map(request, TutorDto.class);
		dto.setCreatedBy(userFacade.getCurrentUser());
		dto.setAreaTutorIds(request.getAreaTutorId());
		Long id = tutorService.saveTutor(dto);
		return id;
	}

	@Override
	public List<ResponseTutor> findAllTutor() {
		List<TutorForFindAllDto> dtos = tutorService.findAllTutor();
		List<ResponseTutor> tutors = new LinkedList<>();
		List<AreaDto> areas = areaService.findAll();
		List<SubjectGroupDto> subjectGroups = subjectGroupService.findAll();

		dtos.stream().forEach(item -> {
			ResponseTutor responseTutor = new ResponseTutor();

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
			
			
			tutors.add(responseTutor);
		});
		return tutors;
	}

	@Override
	public TutorDto findByTutorCode(final Long tutorCode) {
		return tutorService.findByTutorCode(tutorCode);
	}

	@Override
	public List<TutorDto> findByPhoneNumber(final String phoneNumber) {
		return tutorService.findByPhoneNumber(phoneNumber);
	}

	@Override
	public List<TutorDto> findByEndPhoneNumber(final String endPhoneNumber) {
		return tutorService.findByEndPhoneNumber(endPhoneNumber);
	}

	@Override
	public List<TutorDto> findByFullNameContain(final String fullName) {
		return tutorService.findByFullNameContain(fullName);
	}

	@Override
	public List<TutorDto> findByEnglishFullName(final String fullname) {
		return tutorService.findByEnglishFullName(fullname);
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
				Long.parseLong(urlFile.substring(urlFile.lastIndexOf("/") + 1, urlFile.lastIndexOf("Private"))));
		List<String> urlPublicImgs = tutorDto.getPrivateImgs();
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
	public Long updateSubjetGroupMaybe(RequestUpdateTutorSubjectGroupMaybeDto dto) {
		TutorDto tutorDto = new TutorDto();
		tutorDto.setCreatedBy(userFacade.getCurrentUser());
		tutorDto.setId(dto.getId());
		tutorDto.setTutorSubjectGroupMaybeIds(dto.getTutorSubjectGroupMaybeIds());
		return tutorService.updateSubjetGroupMaybe(tutorDto);
	}

	@Override
	public Long updateSubjectGroupForSure(RequestUpdateTutorSubjectGroupForSureDto dto) {
		TutorDto tutorDto = new TutorDto();
		tutorDto.setCreatedBy(userFacade.getCurrentUser());
		tutorDto.setId(dto.getId());
		tutorDto.setTutorSubjectGroupForSureIds(dto.getTutorSubjectGroupForSureIds());
		return tutorService.updateSubjectGroupForSure(tutorDto);
	}

	@Override
	public Long updateNowLevelAndNowUpdateAt(RequestUpdateTutorNowLevelAndUpdateAtDto dto) {
		TutorDto tutorDto = new TutorDto();
		tutorDto.setCreatedBy(userFacade.getCurrentUser());
		tutorDto.setId(dto.getId());
		tutorDto.setNowLevel(dto.getNowLevel());
		tutorDto.setNowLevelUpdatedAt(dto.getNowLevelUpdatedAt());
		return tutorService.updateNowLevelAndNowUpdateAt(tutorDto);
	}

	@Override
	public Long updateCalendar(RequestUpdateTutorCalendarDto dto) {
		TutorDto tutorDto = new TutorDto();
		tutorDto.setCreatedBy(userFacade.getCurrentUser());
		tutorDto.setId(dto.getId());
		tutorDto.setCalendars(dto.getCalendars());
		return tutorService.updateCalendar(tutorDto);
	}

	@Override
	public Long updateTutor(RequestUpdateTutor request) {
		TutorDto dto = new TutorDto();
		dto = ObjectMapperUtils.map(request, TutorDto.class);
		dto.setCreatedBy(userFacade.getCurrentUser());
		dto.setAreaTutorIds(request.getAreaTutorId());
		Long id = tutorService.update(dto);
		return id;
	}

}
