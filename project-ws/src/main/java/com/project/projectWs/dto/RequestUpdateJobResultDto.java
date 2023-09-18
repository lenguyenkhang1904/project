package com.project.projectWs.dto;

import java.io.Serializable;

import com.project.common.utils.JobResult;

import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
public class RequestUpdateJobResultDto implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String id;
	
	private JobResult jobResult;
	
	private String failReason;
//(Tìm thêm gia sư nếu fail?) YES or NO
	private Boolean findAnotherTutorIfFail;
}
