package com.project.storage.service.impl;

import java.io.File;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.ObjectListing;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.S3ObjectSummary;
import com.project.storage.service.FeedbackImgService;

import come.project.storage.utils.ConstantInformationStorage;
import come.project.storage.utils.FileUtils;

@Service
public class FeedbackImgServiceImpl extends AwsClientS3Impl implements FeedbackImgService {

	private static final String feedBackPrivateURL = ConstantInformationStorage.PRIVATE_FEEDBACK_TUTOR_REVIEW_URL;

	private static final String feedBackPublicURL = ConstantInformationStorage.PUBLIC_FEEDBACK_TUTOR_REVIEW_URL;

	private static final String bucketFeedBackImg = ConstantInformationStorage.BUCKET_NAME_PRIVATE_FEEDBACK_TUTOR_REVIEW;

	private void uploadPublicFile(String filename, File file, String bucketName) {
		client.putObject(new PutObjectRequest(bucketFeedBackImg, filename, file)
				.withCannedAcl(CannedAccessControlList.PublicRead));
	}

	@Override
	public String uploadMultipartFile(MultipartFile multipartFile, String nameFile, String bucketName, String url) {
		String imageURL = null;
		try {
			File file = FileUtils.convertMultiPathToFile(multipartFile);
			uploadPublicFile(nameFile, file, bucketName);
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
	public List<String> findAllPrivateFeedBackImgs() {
		List<String> listObject = listUrlsFeedbacks();
		return listObject.stream().filter(item -> item.contains("Private")).collect(Collectors.toList());
	}

	private List<String> listUrlsFeedbacks() {
		List<String> listObject = new LinkedList<>();
		ObjectListing iterables = client.listObjects(bucketFeedBackImg);
		for (S3ObjectSummary os : iterables.getObjectSummaries()) {
			if (os.getKey().contains("Private")) {
				listObject.add(feedBackPrivateURL + os.getKey());
			} else {
				listObject.add(feedBackPublicURL + os.getKey());
			}
		}
		return listObject;
	}

	@Override
	public List<String> findAllPublicFeedBackImgs() {
		List<String> listObject = listUrlsFeedbacks();
		return listObject.stream().filter(item -> item.contains("Public")).collect(Collectors.toList());
	}

	@Override
	public String updatePrivateImageToAmazon(MultipartFile multipartFile, String filename) {
		String url = uploadMultipartFile(multipartFile, filename, bucketFeedBackImg, feedBackPrivateURL);
		return url;
	}

	@Override
	public String updatePublicImageToAmazon(MultipartFile multipartFile, String filename) {
		String url = uploadMultipartFile(multipartFile, filename, bucketFeedBackImg, feedBackPublicURL);
		return url;

	}

	@Override
	public String uploadImageToAmazonPubclicImgs(MultipartFile multipartFile, String filename) {
		String url = uploadMultipartFile(multipartFile, filename, bucketFeedBackImg, feedBackPublicURL);
		return url;
	}

	@Override
	public boolean checkExistObjectPrivateInS3(String name) {
		return this.client.doesObjectExist(bucketFeedBackImg, name);
	}

	@Override
	public boolean checkExistObjectPublicInS3(String name) {
		return this.client.doesObjectExist(bucketFeedBackImg, name);
	}

	@Override
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
		client.deleteObject(bucketFeedBackImg, urlFile.substring(urlFile.lastIndexOf('/') + 1));

	}

	@Override
	public void deleteByFileNameAndIDPublicImgs(String urlFile) {
		client.deleteObject(bucketFeedBackImg, urlFile.substring(urlFile.lastIndexOf('/') + 1));
	}
}
