package com.project.projectWs.mail;

import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;
@Component
public class EmailUtils {

	@Autowired
	private JavaMailSender mailSender;
	
	private static final String HOST = "khangle1904041@gmail.com";
	
	private static final String TITLE  = "System supporter";
 
	public void sendEmail(String email, String subject, String content)
			throws UnsupportedEncodingException, MessagingException {
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);
		helper.setFrom(HOST, TITLE);
		helper.setTo(email);
		helper.setSubject(subject);
		helper.setText(content, true);
		mailSender.send(message);

	}
}
