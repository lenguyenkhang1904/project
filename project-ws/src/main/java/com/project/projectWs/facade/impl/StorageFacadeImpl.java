package com.project.projectWs.facade.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.projectWs.facade.StorageFacade;
import com.project.storage.service.AvatarAndPublicAndPrivateImgsTutorAwsService;
import com.project.storage.service.AvatarAndPublicAndPrivateRegisterAndLearnerAwsService;
import com.project.storage.service.BillImageAwsService;
import com.project.storage.service.RetainedImgsIdentificationAwsService;

@Service
public class StorageFacadeImpl implements StorageFacade {

	@Autowired
	private AvatarAndPublicAndPrivateImgsTutorAwsService avatarAndPublicAndPrivateImgsTutorAwsService;
	
	@Autowired
	private AvatarAndPublicAndPrivateRegisterAndLearnerAwsService avatarAndPublicAndPrivateRegisterAndLearnerAwsService;
	
	@Autowired
	private BillImageAwsService billImageAwsSecrvie;
	
	@Autowired
	private RetainedImgsIdentificationAwsService identificationAwsService;
	
	@Override
	public List<String> findAllTutor() {
		return avatarAndPublicAndPrivateImgsTutorAwsService.findAll();
	}

	@Override
	public List<String> findAllPublicImgsTutor() {
		return avatarAndPublicAndPrivateImgsTutorAwsService.findAllPublicImgs();
	}

	@Override
	public List<String> findAllPrivateImgsTutor() {
		return avatarAndPublicAndPrivateImgsTutorAwsService.findAllPrivateImgs();
	}

	@Override
	public boolean checkExistObjectinS3Tutor(final String nameFile) {
		return avatarAndPublicAndPrivateImgsTutorAwsService.checkExistObjectinS3(nameFile);
	}

	@Override
	public boolean checkExistObjectPrivateInS3Tutor(final String nameFile) {
		return avatarAndPublicAndPrivateImgsTutorAwsService.checkExistObjectPrivateInS3(nameFile);
	}

	@Override
	public boolean checkExistObjectPublicInS3Tutor(final String nameFile) {
		return avatarAndPublicAndPrivateImgsTutorAwsService.checkExistObjectPublicInS3(nameFile);
	}

	@Override
	public List<String> findAllRegisterAndLearner() {
		return avatarAndPublicAndPrivateRegisterAndLearnerAwsService.findAll();
	}

	@Override
	public List<String> findAllPublicImgsRegisterAndLearner() {
		return avatarAndPublicAndPrivateRegisterAndLearnerAwsService.findAllPublicImgs();
	}

	@Override
	public List<String> findAllPrivateImgsRegisterAndLearner() {
		return avatarAndPublicAndPrivateRegisterAndLearnerAwsService.findAllPrivateImgs();
	}

	@Override
	public boolean checkExistObjectinS3RegisterAndLearner(String nameFile) {
		return avatarAndPublicAndPrivateRegisterAndLearnerAwsService.checkExistObjectinS3(nameFile);
	}

	@Override
	public boolean checkExistObjectPrivateInS3RegisterAndLearner(String nameFile) {
		return avatarAndPublicAndPrivateRegisterAndLearnerAwsService.checkExistObjectPrivateInS3(nameFile);
	}

	@Override
	public boolean checkExistObjectPublicInS3RegisterAndLearner(String nameFile) {
		return avatarAndPublicAndPrivateRegisterAndLearnerAwsService.checkExistObjectPublicInS3(nameFile);
	}

	@Override
	public boolean checkExistObjectBillImage(String nameFile) {
		return billImageAwsSecrvie.checkExistObjectinS3(nameFile);
	}

	@Override
	public String findAllByNameContainerRetain(String string, List<String> listOject) {
		return identificationAwsService.findAllByNameContainer(string, listOject);
	}

	@Override
	public List<String> findAllRetainIdentifications() {
		return identificationAwsService.findAll();
	}

	@Override
	public boolean checkExistRetain(String nameFile) {
		return identificationAwsService.checkExistObjectinS3(nameFile);
	}

}
