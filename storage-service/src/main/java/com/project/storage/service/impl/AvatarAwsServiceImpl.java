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
import com.project.storage.service.AvatarAwsService;

import come.project.storage.utils.ConstaintInformationStorage;
import come.project.storage.utils.FileUtils;

@Service
public class AvatarAwsServiceImpl extends AwsClientS3Impl implements AvatarAwsService {

	private final static String urlAvatar = ConstaintInformationStorage.AVATAR_URL;

	private final static String bucketName = ConstaintInformationStorage.BUCKET_NAME_AVATAR;

	
//	@Override
//	public String uploadImageToAmazon(MultipartFile multipartFile, String id) {
//
//		try {
//			String url = uploadMultipartFile(multipartFile, id);
////			Staff staff=iStaffRepository.getOne(Long.parseLong(id));
////			staff.setAvatar(url);
////			iStaffRepository.save(staff);
//			return url;
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//
//		return null;
//	}

	@Override
	public List<String> findAll() {
		List<String> listObject = new LinkedList<>();
		ObjectListing iterables = client.listObjects(bucketName);
		for (S3ObjectSummary os : iterables.getObjectSummaries()) {
			listObject.add(urlAvatar + os.getKey());
		}
		return listObject;
	}

	@Override
	public void deleteByFileNameAndID(String urlFile) {
		client.deleteObject(bucketName, urlFile.substring(urlFile.lastIndexOf('/') + 1));
	}

	@Override
	public boolean checkExistObjectinS3(String name) {
		boolean flag = this.client.doesObjectExist(bucketName, name);
		return flag;
	}
	
	private void upploadPublicFile(String filename, File file) {
		client.putObject(
				new PutObjectRequest(bucketName, filename, file).withCannedAcl(CannedAccessControlList.PublicRead));
	}

	@Override
	public String uploadMultipartFile(MultipartFile multipartFile, String nameFile) {
		String imageURL = null;
		try {
			File file = FileUtils.convertMultiPathToFile(multipartFile);
			upploadPublicFile(nameFile, file);
			file.delete();
			//urlAvatar "http://meomeo/"
			imageURL = urlAvatar.concat(nameFile);
			return imageURL;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
