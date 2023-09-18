package com.project.projectWs.validator;

import java.util.Optional;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.springframework.beans.factory.annotation.Autowired;

import com.project.projectWs.validation.UniqueEmailPhoneUsernameUser;
import com.project.user.management.dto.UserDto;
import com.project.user.management.service.UserService;

public class UniqueEmailPhoneUsernameUserValidator implements ConstraintValidator<UniqueEmailPhoneUsernameUser, String> {

	private String message;

	@Autowired
	private UserService userService;

	@Override
	public boolean isValid(String value, ConstraintValidatorContext context) {

		Optional<UserDto> userOpt = userService.findByPhonesOrEmailOrUsername(value);
		if (userOpt.isEmpty()) {
			return true;
		}

		context.buildConstraintViolationWithTemplate(message).addConstraintViolation()
				.disableDefaultConstraintViolation();

		return false;
	}

	@Override
	public void initialize(UniqueEmailPhoneUsernameUser constraintAnnotation) {
		this.message = constraintAnnotation.message();
	}

}
