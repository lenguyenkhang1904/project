package com.project.common.utils;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;

public class ResponseHandler {
	public static ResponseEntity<Object> getResponse(String content1Name, Object content1, String content2Name, Object content2, HttpStatus status) {
		Map<String, Object> map = new HashMap<>();
		map.put(content1Name, content1);
		map.put(content1Name, content2);
		map.put("message", ListUtils.emptyStringList);
		map.put("status", status.value());
		return new ResponseEntity<>(map, status);

	}

	public static ResponseEntity<Object> getResponse(Object content, HttpStatus status) {
		Map<String, Object> map = new HashMap<>(); // Map là dạng dữ liệu t.tự như List, nhưng nó có thêm Key.													// Map<String, Object> là dạng List có key là dạng String và giá trị													// là dạng Object
		map.put("content", content);
		map.put("message", ListUtils.emptyStringList); // TH này truyền vào content nên message là list rỗng.
		map.put("status", status.value()); // status.value() là trả về status dạng số (thường trả về số luôn để thuận											// tiện cho FrontEnd)
		return new ResponseEntity<>(map, status);
	}

	public static ResponseEntity<Object> getResponse(BindingResult bindingResult, HttpStatus status) { // Khi kiểm tra																										// Validation
																										// @Valid, có
																										// những
																										// messages lỗi
																										// gì, nó sẽ đẩy
																										// về biến
																										// BindingResult
																										// bindingResult
		Map<String, Object> map = new HashMap<>(); // Map là dạng dữ liệu t.tự như List, nhưng nó có thêm Key.
													// Map<String, Object> là dạng List có key là dạng String và giá trị
													// là dạng Object
		map.put("content", ListUtils.emptyStringList); // TH này có đưa vào bindingResult nên là có lỗi, nên content là
														// List rỗng
		map.put("message", ErrorUtils.getErrorMessages(bindingResult)); // ErrorUtils.getErrorMessages(errors) là để chỉ
																		// lấy đoạn messages - tức là defaultMessages
																		// trong ObjectError mặc định trong
																		// bindingResult.getAllErrors() [xem trong
																		// ErrorUtils]
		map.put("status", status.value()); // status.value() là trả về status dạng số (thường trả về số luôn để thuận
											// tiện cho FrontEnd)

		return new ResponseEntity<>(map, status);
	}

	public static ResponseEntity<Object> getResponse(String error, HttpStatus status) {
		Map<String, Object> map = new HashMap<>(); // Map là dạng dữ liệu t.tự như List, nhưng nó có thêm Key.
													// Map<String, Object> là dạng List có key là dạng String và giá trị
													// là dạng Object
		map.put("content", ListUtils.emptyStringList); // TH này có đưa vào errors nên là có lỗi, nên content là List
														// rỗng
		map.put("message", ErrorUtils.errorOf(error)); // errorOf là parse từ String Message sang dạng List -> để có thể
														// đưa vô ResponseObject để trả về [xem trong ErrorUtils]
		map.put("status", status.value()); // status.value() là trả về status dạng số (thường trả về số luôn để thuận
											// tiện cho FrontEnd)

		return new ResponseEntity<>(map, status);
	}

	public static ResponseEntity<Object> getResponse(HttpStatus status) {
		Map<String, Object> map = new HashMap<>(); // Map là dạng dữ liệu t.tự như List, nhưng nó có thêm Key.
													// Map<String, Object> là dạng List có key là dạng String và giá trị
													// là dạng Object
		map.put("content", ListUtils.emptyStringList); // TH này ko đưa vào content, nên content là List rỗng
		map.put("message", ListUtils.emptyStringList); // TH này ko đưa vào error, nên error là List rỗng
		map.put("status", status.value()); // status.value() là trả về status dạng số (thường trả về số luôn để thuận
											// tiện cho FrontEnd)

		return new ResponseEntity<>(map, status);
	}
}
