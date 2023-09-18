package com.project.projectWs.dto;

import java.io.Serializable;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import com.project.projectWs.validation.ConfirmPassword;
import com.project.projectWs.validation.UniqueEmailPhoneUsernameUser;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@ConfirmPassword
public class RequestUpdateUserDto implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@UniqueEmailPhoneUsernameUser
	private String id;

	@NotBlank(message = "password is not blank")
	private String password;
	
	@NotBlank(message = "confirmPassword is not blank")
	private String confirmPassword;

	@Email
	@NotBlank(message = "email is not blank")
	private String email;

	@NotBlank(message = "phone is not blank")
	@Size(min = 1, max = 10, message = "phone must contain in ${min} between ${max}")
	private String phone;

}
