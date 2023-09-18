package com.project.projectWs.dto;

import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;

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
public class RequestSaveUserDto implements Serializable {

	private static final long serialVersionUID = 1L;

	@UniqueEmailPhoneUsernameUser
	@NotBlank(message = "username is not blank")
	private String username;

	@NotBlank(message = "password is not blank")
	private String password;
	
	@NotBlank(message = "confirmPassword is not blank")
	private String confirmPassword;

	@Email
	@NotBlank(message = "email is not blank")
	@UniqueEmailPhoneUsernameUser
	private String email;

	@NotBlank(message = "phone is not blank")
	@Size(min = 1, max = 10, message = "phone must contain in ${min} between ${max}")
	@UniqueEmailPhoneUsernameUser
	private String phone;

	private List<String> roleIds = new LinkedList<>();

}
