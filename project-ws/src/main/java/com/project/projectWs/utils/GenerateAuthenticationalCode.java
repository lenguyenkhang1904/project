package com.project.projectWs.utils;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.concurrent.TimeUnit;

import org.springframework.stereotype.Component;

import com.google.common.cache.CacheBuilder;
import com.google.common.cache.CacheLoader;


@Component
public class GenerateAuthenticationalCode {
	private static final Integer EXPIRE_MINS = 5;

	private com.google.common.cache.LoadingCache<String, String> otpCache;

	public GenerateAuthenticationalCode() {
		super();
		otpCache = CacheBuilder.newBuilder().expireAfterWrite(EXPIRE_MINS, TimeUnit.MINUTES)
				.build(new CacheLoader<String, String>() {
					public String load(String key) {
						return null;
					}
				});
	}

	public String getOtp(String key) {
		try {
			return otpCache.get(key); // get value via key
		} catch (Exception e) {
			return null;
		}
	}

	public String generateCode(String key) {
		Random rd = new Random();
		String token = "";
		List<String> randomNumber = new ArrayList<>();
		for (int i = 0; i < 7; i++) {
			randomNumber.add(String.valueOf(0 + rd.nextInt(9)));
		}

		for (int i = 0; i < 7; i++) {
			token += randomNumber.get(i);
		}
		otpCache.put(key, token); // save in cache with key
		return token;
	}

	// This method is used to clear the OTP catched already
	public void clearOTP(String key) {
		otpCache.invalidate(key); // delete all method catch
	}
}
