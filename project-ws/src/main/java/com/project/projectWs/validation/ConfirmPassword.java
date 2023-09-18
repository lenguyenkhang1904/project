package com.project.projectWs.validation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

import com.project.projectWs.validator.ConfirmPasswordValidator;

@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.TYPE)
@Constraint(validatedBy = ConfirmPasswordValidator.class)
public @interface ConfirmPassword {
	
	public String message() default "password and confirm password are not similar !";

	public Class<?>[] groups() default {};

	public Class<? extends Payload>[] payload() default {};
	
}	
