package com.project.storage.service.impl;

import javax.annotation.PostConstruct;

import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.S3ClientOptions;

import come.project.storage.utils.ConstantInformationStorage;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AwsClientS3Impl {	

	protected AmazonS3 client;
	
	@PostConstruct 
	public void init()
	{
		BasicAWSCredentials awsCredentials=new BasicAWSCredentials(ConstantInformationStorage.ACCESS_KEY, 
				ConstantInformationStorage.SECRET_KEY);
		 this.client = new AmazonS3Client(awsCredentials);
		 this.client.setS3ClientOptions(new S3ClientOptions().withPathStyleAccess(true));
		 this.client.setEndpoint("hn.ss.bfcplatform.vn");
		
				
	}
}
