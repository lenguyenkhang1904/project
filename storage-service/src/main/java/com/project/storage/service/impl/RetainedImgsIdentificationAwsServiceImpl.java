package com.project.storage.service.impl;

import java.io.File;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.ObjectListing;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.S3ObjectSummary;
import com.project.storage.service.RetainedImgsIdentificationAwsService;

import come.project.storage.utils.ConstantInformationStorage;
import come.project.storage.utils.FileUtils;

@Service
public class RetainedImgsIdentificationAwsServiceImpl extends AwsClientS3Impl
		implements RetainedImgsIdentificationAwsService {

	private static String urlRe = ConstantInformationStorage.RETAINED_IMGS_IDENTIFICATION_URL;
	private static String bucket = ConstantInformationStorage.BUCKET_RETAINED_IMGS_IDENTIFICATION;

	private void uploadPublicFile(String filename, File file, String bucketName) {
		client.putObject(
				new PutObjectRequest(bucketName, filename, file).withCannedAcl(CannedAccessControlList.PublicRead));
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
	public String uploadImageToAmazon(MultipartFile multipartFile, String tutorCode) {
		String url = uploadMultipartFile(multipartFile, tutorCode, bucket, urlRe);
		return url;
	}

	@Override
	public List<String> findAll() {
		List<String> listObject = new LinkedList<>();

		ObjectListing iterables = client.listObjects(bucket);
		for (S3ObjectSummary os : iterables.getObjectSummaries()) {
			listObject.add(urlRe + os.getKey());
		}

		return listObject;
	}

	@Override
	public void deleteByFileNameAndID(String urlFile) {
		client.deleteObject(bucket, urlFile.substring(urlFile.lastIndexOf('/') + 1));
	}

	@Override
	public boolean checkExistObjectinS3(String name) {
		return this.client.doesObjectExist(bucket, name);
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

}
