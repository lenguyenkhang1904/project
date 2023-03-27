package com.project.common.utils;

import java.util.LinkedList;
import java.util.List;

import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;

public class ErrorUtils {
	//Phương thức ở bên dưới là để chỉ lấy ra defaltMessage trong ObjectError "xấu xí" gồm nhiều yếu tố không muốn show ra (như code, defaultMessages, hay những thông tin khác...)
		//-> dùng ở Controller
		public static List<String> getErrorMessages(BindingResult bindingResult){ //ObjectError là thằng ObjectError xấu xí mà nó trả về (bao gồm code, defaultMessages, hay những thông tin khác...)
			List<ObjectError> errors = bindingResult.getAllErrors(); 
			List<String> messages = new LinkedList<>();		
			for(ObjectError error : errors) {
				messages.add(error.getDefaultMessage());
			}		
			return messages;
		}
		//Phương thức ở bên dưới là để parse từ String Message sang dạng List -> để có thể đưa vô ResponseObject để trả về
		public static List<String> errorOf(String message){
			List<String> messages = new LinkedList<String>();
			messages.add(message);
			return messages;
		}
}
