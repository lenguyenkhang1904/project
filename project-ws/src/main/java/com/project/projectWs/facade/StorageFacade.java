package com.project.projectWs.facade;

import java.util.List;

public interface StorageFacade {

	List<String> findAllTutor();

	List<String> findAllPublicImgsTutor();

	List<String> findAllPrivateImgsTutor();

	boolean checkExistObjectinS3Tutor(final String nameFile);

	boolean checkExistObjectPrivateInS3Tutor(final String nameFile);

	boolean checkExistObjectPublicInS3Tutor(final String nameFile);
	
	
	List<String> findAllRegisterAndLearner();

	List<String> findAllPublicImgsRegisterAndLearner();

	List<String> findAllPrivateImgsRegisterAndLearner();

	boolean checkExistObjectinS3RegisterAndLearner(final String nameFile);

	boolean checkExistObjectPrivateInS3RegisterAndLearner(final String nameFile);

	boolean checkExistObjectPublicInS3RegisterAndLearner(final String nameFile);
	
	boolean checkExistObjectBillImage(final String nameFile);

	String findAllByNameContainerRetain(String string, List<String> listOject);

	List<String> findAllRetainIdentifications();

	boolean checkExistRetain(String nameFile);

}
