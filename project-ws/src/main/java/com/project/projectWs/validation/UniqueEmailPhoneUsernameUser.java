package com.project.projectWs.validation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

import com.project.projectWs.validator.UniqueEmailPhoneUsernameUserValidator;

@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.FIELD)
@Constraint(validatedBy = UniqueEmailPhoneUsernameUserValidator.class)
public @interface UniqueEmailPhoneUsernameUser {
	
	public String message() default "dulicate data !!";

	public Class<?>[] groups() default {};

	public Class<? extends Payload>[] payload() default {};
}
