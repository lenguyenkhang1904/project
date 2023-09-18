package com.project.projectWs.utils;

import java.util.LinkedList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;

import com.project.projectWs.dto.ResponseTutorInvitationDto;

public class TemplateHTMLForEmail {

	public static List<String> templateGenearateTokenAuthentication(String username, String token) {
		List<String> result = new LinkedList<>();
		String subject = "Here's token to reset your password"; // title cu link
		result.add(subject);
		String content = "<p>Dear, " + username + "</p>" + "<p>You have requested to reset your password.</p>"
				+ "<p>Here is token and  the link below to authenticate your token: </p>" + "<p> <b>" + token + " </p>"
				+ "<br>" + "<p>Ignore this email if you do remember your password, "
				+ "or you have not made the request.</p>" + "<br>" + "<p>Best Regards</p>";
		result.add(content);
		return result;
	}

	public static List<String> templateGenearateSendIntivation(String fullName, ResponseTutorInvitationDto dto) {
		List<String> result = new LinkedList<>();
		String subject = "Invitation of teaching"; // title cu link
		result.add(subject);
		String note = StringUtils.isEmpty(dto.getNote()) ? "" : ("<p>Note: " + dto.getNote() + "</p>");
		String content = "<p>Dear tutor, " + fullName + "</p>" + "<p>You are invited to teach this class</p>"
				+ "<p> Here is fullName of register or learner and phone: </p>" + "<p> <b>"
				+ dto.getRegisterAndLearner().getFullName() + " " + dto.getLearnerAndReqisterPhone() + " </p>" + note
				+ "<br>" + "<p>Best Regards</p>";
		result.add(content);
		return result;
	}

}
