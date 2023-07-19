package com.project.projectWs.facade.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.common.utils.ObjectMapperUtils;
import com.project.job.dto.JobProgressDto;
import com.project.job.service.JobProgressService;
import com.project.projectWs.dto.RequestSaveJobProgress;
import com.project.projectWs.dto.RequestUpdateJobProgress;
import com.project.projectWs.facade.JobProgressFacade;
import com.project.projectWs.facade.UserFacade;

@Service
public class JobProgressFacadeImpl implements JobProgressFacade {
	
	@Autowired
	private JobProgressService jobProgressService;
	
	@Autowired
	private UserFacade userFacade;

	@Override
	public String createJobProgress(RequestSaveJobProgress request) {
		JobProgressDto jobProgressDto = ObjectMapperUtils.map(request, JobProgressDto.class);
		jobProgressDto.setCreatedBy(userFacade.getCurrentUser());
		return jobProgressService.createJobProgress(jobProgressDto);
	}

	@Override
	public String updateJobProgress(RequestUpdateJobProgress request) {
		JobProgressDto jobProgressDto = ObjectMapperUtils.map(request, JobProgressDto.class);
		jobProgressDto.setCreatedBy(userFacade.getCurrentUser());
		return jobProgressService.updateJobProgress(jobProgressDto);
	}

}
