package com.project.storage.service.impl;

import java.io.File;
import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.ObjectListing;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.S3ObjectSummary;
import com.project.storage.service.BillImageAwsService;

import come.project.storage.utils.ConstantInformationStorage;
import come.project.storage.utils.FileUtils;
@Service
public class BillImageAwsServiceImpl extends AwsClientS3Impl implements BillImageAwsService {
	
	private static final String billImgURL = ConstantInformationStorage.BILL_IMAGE_URL;

	private static final String bucketBillImg = ConstantInformationStorage.BUCKET_NAME_BILL_IMAGE;
	
	private void uploadPublicFile(String filename, File file, String bucketName) {
		client.putObject(
				new PutObjectRequest(bucketBillImg, filename, file).withCannedAcl(CannedAccessControlList.PublicRead));
	}

	@Override
	public String uploadImageToAmazon(MultipartFile multipartFile, String filename) {
		String url = uploadMultipartFile(multipartFile, filename, bucketBillImg, billImgURL);
		return url;
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
	public List<String> findAll() {
		List<String> listObject = new LinkedList<>();
		ObjectListing iterables = client.listObjects(bucketBillImg);
		for (S3ObjectSummary os : iterables.getObjectSummaries()) {
			listObject.add(billImgURL + os.getKey());
		}
		return listObject;
	}

	@Override
	public void deleteByFileNameAndID(String urlFile) {
		client.deleteObject(bucketBillImg, urlFile.substring(urlFile.lastIndexOf('/') + 1));
		
	}

	@Override
	public boolean checkExistObjectinS3(String name) {
		return this.client.doesObjectExist(bucketBillImg, name);
	}

}
