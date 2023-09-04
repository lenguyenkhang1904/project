package com.project.projectWs.validator;

import java.lang.reflect.InvocationTargetException;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import com.project.projectWs.validation.ConfirmPassword;

import lombok.extern.log4j.Log4j2;

@Log4j2
public class ConfirmPasswordValidator implements ConstraintValidator<ConfirmPassword, Object> {

	private String message;

	public void initialize(ConfirmPassword constraintAnnotation) {
		this.message = constraintAnnotation.message();
	}

	@Override
	public boolean isValid(Object value, ConstraintValidatorContext context) {
		try {
			String password = String.valueOf(value.getClass().getMethod("getPassword").invoke(value));
			String confirmPassword = String.valueOf(value.getClass().getMethod("getConfirmPassword").invoke(value));
			if (password.equals(confirmPassword))
				return true;

			context.buildConstraintViolationWithTemplate(message).addConstraintViolation()
					.disableDefaultConstraintViolation();
		} catch (IllegalAccessException | InvocationTargetException | NoSuchMethodException | SecurityException e) {
			log.error("error");
		}
		return false;
	}

}
