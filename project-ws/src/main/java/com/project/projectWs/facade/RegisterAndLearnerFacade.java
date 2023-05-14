package com.project.projectWs.facade;

import org.springframework.web.multipart.MultipartFile;

public interface RegisterAndLearnerFacade {

	String createOrUpdateRegisterAndLearnerAvatar(final MultipartFile file, final String registerAndLearnerId);

	void deleteAvatarOfRegisterAndLearner(final String urlFile);

	String uploadImageToAmazonPrivateImgs(final MultipartFile file, final String fileName);

	String uploadImageToAmazonPubclicImgs(final MultipartFile file, final String fileName);

	void deleteByFileNameAndIDPrivateImgs(String urlFile);

	void deleteByFileNameAndIDPublicImgs(String urlFile);

	String uploadOrUpdatePublicImg(final MultipartFile file, final String tutorCode);

	String uploadOrUpdatePrivateImg(final MultipartFile file, final String tutorCode);

	String updatePrivateImageToAmazon(final MultipartFile file, final String tutorCode);

	String updatePublicImageToAmazon(final MultipartFile file, final String tutorCode);

}
