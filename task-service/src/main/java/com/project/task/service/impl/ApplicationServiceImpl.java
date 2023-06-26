package com.project.task.service.impl;

import java.util.Date;
import java.util.Optional;
import java.util.Set;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import com.project.common.utils.ApplicationSign;
import com.project.common.utils.DateConverter;
import com.project.common.utils.ObjectMapperUtils;
import com.project.task.dto.ApplicationDto;
import com.project.task.entity.Application;
import com.project.task.entity.Task;
import com.project.task.repository.ApplicationRepository;
import com.project.task.repository.TaskRepository;
import com.project.task.service.ApplicationService;
import com.project.task.utils.ConstantApplication;

@Service
public class ApplicationServiceImpl implements ApplicationService {
	
	@Autowired
	private ApplicationRepository applicationRepository;
	
	@Autowired
	private TaskRepository taskRepository;

	@Override
	public String createApplication(ApplicationDto dto) {
        Application application = new Application();
        application.setId(dto.getTaskId().concat("-").concat(String.valueOf(dto.getTutorId()).concat(ConstantApplication.APPLICATION_SUFFIX_ID)));
        application = ObjectMapperUtils.map(dto, Application.class);
        application.setCreatedAt(DateConverter.convertDateToLocalDateTime(new Date()));
        application.setCreatedBy(dto.getCreatedBy());
        
        Optional<Task> taskOpt = taskRepository.findById(dto.getTaskId());
        if(!taskOpt.isEmpty()) {
        	Task task = taskOpt.get();
        	application.setTask(task);
        }
        
		Set<ApplicationSign> applicationSigns = dto.getApplicationSigns();
		if (!CollectionUtils.isEmpty(applicationSigns)) {
			String taskSigns = applicationSigns.toString().replace("[", "").replace("]", "");
			application.setApplicationSigns(taskSigns);
		}
		
		application = applicationRepository.save(application);
        
        
		return application.getId();
	}

	@Override
	public String updateApllication(ApplicationDto dto) {
		
		Optional<Application> applicationOpt = applicationRepository.findById(dto.getId());
		if(!applicationOpt.isEmpty()) {
			Application application = applicationOpt.get();
	        application = ObjectMapperUtils.map(dto, Application.class);
	        application.setUpdatedAt(DateConverter.convertDateToLocalDateTime(new Date()));
	        application.setUpdatedBy(dto.getCreatedBy());
	        
	        Optional<Task> taskOpt = taskRepository.findById(dto.getTaskId());
	        if(!taskOpt.isEmpty()) {
	        	Task task = taskOpt.get();
	        	application.setTask(task);
	        }
	        
			Set<ApplicationSign> applicationSigns = dto.getApplicationSigns();
			if (!CollectionUtils.isEmpty(applicationSigns)) {
				String taskSigns = applicationSigns.toString().replace("[", "").replace("]", "");
				application.setApplicationSigns(taskSigns);
			}
			
			application = applicationRepository.save(application);
	        
	        
			return application.getId();
		}
		return StringUtils.EMPTY;
		
	}

	@Override
	public boolean checkExistTaskInApplication(Long tutorId, String taskId) {
		return applicationRepository.countByTaskIdAndTutorId(taskId, tutorId) == 1;
	}

}
