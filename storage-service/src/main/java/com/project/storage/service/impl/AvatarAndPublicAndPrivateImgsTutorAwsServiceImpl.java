package com.project.storage.service.impl;

import java.io.File;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.SdkClientException;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.ObjectListing;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.S3ObjectSummary;
import com.project.storage.service.AvatarAndPublicAndPrivateImgsTutorAwsService;

import come.project.storage.utils.ConstaintInformationStorage;
import come.project.storage.utils.FileUtils;

@Service
public class AvatarAndPublicAndPrivateImgsTutorAwsServiceImpl extends AwsClientS3Impl
		implements AvatarAndPublicAndPrivateImgsTutorAwsService {

	private static final String tutorAvatarURL = ConstaintInformationStorage.TUTOR_AVATAR_URL;

	private static final String bucketNameTutorAvatar = ConstaintInformationStorage.BUCKET_NAME_TUTOR_AVATAR;

	private static final String tutorPrivateimgsURL = ConstaintInformationStorage.TUTOR_PRIVATE_IMGS_URL;

	private static final String bucketnamePrivateimgs = ConstaintInformationStorage.BUCKET_NAME_PRIVATE_IMGS_TUTOR_AVATAR;

	private static final String tutorPublicimgsURL = ConstaintInformationStorage.TUTOR_PUBLIC_IMGS_URL;

	private static final String bucketnamePublicimgs = ConstaintInformationStorage.BUCKET_NAME_PUBLIC_IMGS_TUTOR_AVATAR;

	private void upploadPublicFile(String filename, File file, String bucketName) {
		client.putObject(
				new PutObjectRequest(bucketName, filename, file).withCannedAcl(CannedAccessControlList.PublicRead));
	}

	@Override
	public String uploadMultipartFile(MultipartFile multipartFile, String nameFile, String bucketName, String url) {
		String imageURL = null;
		try {
			File file = FileUtils.convertMultiPathToFile(multipartFile);
			upploadPublicFile(nameFile, file, bucketName);
			file.delete();
			// urlAvatar "http://meomeo/"tutorAvatarURL
			imageURL = url.concat(nameFile);
			return imageURL;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public String uploadImageToAmazon(MultipartFile multipartFile, String tutorCode) {
		String url = uploadMultipartFile(multipartFile, tutorCode, bucketNameTutorAvatar, tutorAvatarURL);
		return url;
	}

	@Override
	public List<String> findAll() {
		List<String> listObject = new LinkedList<>();
		ObjectListing iterables = client.listObjects(bucketNameTutorAvatar);
		for (S3ObjectSummary os : iterables.getObjectSummaries()) {
			listObject.add(tutorAvatarURL + os.getKey());
		}
		return listObject;
	}

	@Override
	public void deleteByFileNameAndID(String urlFile) {
		try {
			client.deleteObject(bucketNameTutorAvatar, urlFile.substring(urlFile.lastIndexOf('/') + 1));
		} catch (AmazonServiceException e) {
			e.printStackTrace();
		}

	}

	@Override
	public boolean checkExistObjectinS3(String name) {
		try {
			boolean flag = this.client.doesObjectExist(bucketNameTutorAvatar, name);
			if (flag)
				return true;
		} catch (SdkClientException e) {
			e.printStackTrace();
		}
		return false;
	}

// private Imgs
	@Override
	public String uploadImageToAmazonPrivateImgs(MultipartFile multipartFile, String filename) {
		String url = uploadMultipartFile(multipartFile, filename, bucketnamePrivateimgs, tutorPrivateimgsURL);
		return url;
	}

	@Override
	public List<String> findAllPrivateImgs() {
		List<String> listObject = new LinkedList<>();
		ObjectListing iterables = client.listObjects(bucketnamePrivateimgs);
		for (S3ObjectSummary os : iterables.getObjectSummaries()) {
			listObject.add(tutorPrivateimgsURL + os.getKey());
		}
		return listObject;
	}

//public Imgs

	@Override
	public String uploadImageToAmazonPubclicImgs(MultipartFile multipartFile, String filename) {
		String url = uploadMultipartFile(multipartFile, filename, bucketnamePublicimgs, tutorPublicimgsURL);
		return url;
	}

	@Override
	public List<String> findAllPublicImgs() {
		List<String> listObject = new LinkedList<>();
		ObjectListing iterables = client.listObjects(bucketnamePublicimgs);
		for (S3ObjectSummary os : iterables.getObjectSummaries()) {
			listObject.add(tutorPublicimgsURL + os.getKey());
		}

		return listObject;
	}

	public String findAllByNameContainer(String name, List<String> containURLs) {
		List<String> findAllListContain = new LinkedList<>();
		for (String object : containURLs) {
			if (object.contains(name))
				findAllListContain.add(object);
		}
		Collections.sort(findAllListContain);
		if (findAllListContain.isEmpty())
			return null;
		return findAllListContain.get(findAllListContain.size() - 1);

	}

	@Override
	public void deleteByFileNameAndIDPrivateImgs(String urlFile) {
			client.deleteObject(bucketnamePrivateimgs, urlFile.substring(urlFile.lastIndexOf('/') + 1));
	}

	@Override
	public void deleteByFileNameAndIDPublicImgs(String urlFile) {
			client.deleteObject(bucketnamePublicimgs, urlFile.substring(urlFile.lastIndexOf('/') + 1));
	}

	@Override
	public boolean checkExistObjectPrivateInS3(String name) {
		return this.client.doesObjectExist(bucketnamePrivateimgs, name);
	}

	@Override
	public boolean checkExistObjectPublicInS3(String name) {
		return this.client.doesObjectExist(bucketnamePublicimgs, name);
	}

	@Override
	public String updatePrivateImageToAmazon(MultipartFile multipartFile, String filename) {
		String url = uploadMultipartFile(multipartFile, filename, bucketnamePrivateimgs, tutorPrivateimgsURL);
		return url;
	}

	@Override
	public String updatePublicImageToAmazon(MultipartFile multipartFile, String filename) {
		String url = uploadMultipartFile(multipartFile, filename, bucketnamePublicimgs, tutorPublicimgsURL);
		return url;
	}

}
