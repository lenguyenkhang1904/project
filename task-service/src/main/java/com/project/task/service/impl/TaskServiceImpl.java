package com.project.task.service.impl;

import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import com.project.common.utils.DateConverter;
import com.project.common.utils.ObjectMapperUtils;
import com.project.common.utils.TaskSign;
import com.project.task.dto.TaskDto;
import com.project.task.entity.SubjectGroupTask;
import com.project.task.entity.Task;
import com.project.task.repository.SubjecGroupTaskRepository;
import com.project.task.repository.TaskRepository;
import com.project.task.service.TaskService;
import com.project.task.utils.GenerateTaskId;

@Service
public class TaskServiceImpl implements TaskService {

	@Autowired
	private TaskRepository taskRepository;

	@Autowired
	private SubjecGroupTaskRepository subjecGroupTaskRepository;

	@Override
	public String createTask(TaskDto dto) {
		Task task = new Task();
		task = ObjectMapperUtils.map(dto, Task.class);
		task.setCreatedAt(DateConverter.convertDateToLocalDateTime(new Date()));
		task.setCreatedBy(dto.getCreatedBy());
		String responsCharactor = generateTaskCode();
		task.setId(GenerateTaskId.generatorCode().concat(responsCharactor));

		Set<TaskSign> taskSignDtos = dto.getTaskSigns();
		if (!CollectionUtils.isEmpty(taskSignDtos)) {
			String taskSigns = taskSignDtos.toString().replace("[", "").replace("]", "");
			task.setSigns(taskSigns);
		}

		Set<String> genderRequireds = dto.getGenderRequired();
		if (!CollectionUtils.isEmpty(genderRequireds)) {
			String genderRequired = genderRequireds.toString().replace("[", "").replace("]", "");
			task.setGenderRequired(genderRequired);
		}
		final Task taskSaved = taskRepository.save(task);

		Set<String> subjectGroupIds = dto.getSubjectGroupIds();
		if (!CollectionUtils.isEmpty(subjectGroupIds)) {
			List<SubjectGroupTask> groupTasks = subjectGroupIds.stream().map(item -> {
				SubjectGroupTask subjectGroupTask = new SubjectGroupTask();
				subjectGroupTask.setTask(taskSaved);
				subjectGroupTask.setSubjectGroupId(item);
				return subjectGroupTask;
			}).collect(Collectors.toList());
			subjecGroupTaskRepository.saveAll(groupTasks);
		}

		return taskSaved.getId();

	}

	private String generateTaskCode() {
		Task listTask = taskRepository.findByTaskLast();
		int count = 0;
		if (listTask != null) {
			String dayEnd = listTask.getId();
			if (dayEnd != null) {
				count = GenerateTaskId.generateResponsiveReserve(dayEnd.substring(4, 6));
				if (GenerateTaskId.AutoGennerate(dayEnd) == -1 || GenerateTaskId.AutoGennerate(dayEnd) == 2) {
					count = 1;
				} else if (GenerateTaskId.AutoGennerate(dayEnd) == 3) {
					count += 1;
				}
			} else {
				count = 1;
			}
		} else {
			count = 1;
		}

		String responsCharacter = GenerateTaskId.generateResponsive(count);
		return responsCharacter;
	}

	@Override
	public String updateTask(TaskDto dto) {
		Optional<Task> taskOpt = taskRepository.findById(dto.getId());
		if (!taskOpt.isEmpty()) {
			Task task = taskOpt.get();
			task = ObjectMapperUtils.map(dto, Task.class);
			task.setUpdatedAt(DateConverter.convertDateToLocalDateTime(new Date()));
			task.setUpdatedBy(dto.getCreatedBy());
			String responsCharactor = generateTaskCode();
			task.setId(GenerateTaskId.generatorCode().concat(responsCharactor));

			Set<TaskSign> taskSignDtos = dto.getTaskSigns();
			if (!CollectionUtils.isEmpty(taskSignDtos)) {
				String taskSigns = taskSignDtos.toString().replace("[", "").replace("]", "");
				task.setSigns(taskSigns);
			}

			Set<String> genderRequireds = dto.getGenderRequired();
			if (!CollectionUtils.isEmpty(genderRequireds)) {
				String genderRequired = genderRequireds.toString().replace("[", "").replace("]", "");
				task.setGenderRequired(genderRequired);
			}
			final Task taskSaved = taskRepository.save(task);

			Set<String> subjectGroupIds = dto.getSubjectGroupIds();
			if (!CollectionUtils.isEmpty(subjectGroupIds)) {
				subjecGroupTaskRepository.deleteByTaskId(task.getId());
				List<SubjectGroupTask> groupTasks = subjectGroupIds.stream().map(item -> {
					SubjectGroupTask subjectGroupTask = new SubjectGroupTask();
					subjectGroupTask.setTask(taskSaved);
					subjectGroupTask.setSubjectGroupId(item);
					return subjectGroupTask;
				}).collect(Collectors.toList());
				subjecGroupTaskRepository.saveAll(groupTasks);
			}

			return taskSaved.getId();
		}
		return StringUtils.EMPTY;
	}

	@Override
	public List<String> getSubjectGroupsByTaskId(String taskId) {
		List<String> subjectgroups = subjecGroupTaskRepository.getSubejectGroupIdByTaskId(taskId);
		return !CollectionUtils.isEmpty(subjectgroups)
				? subjectgroups
				: new LinkedList<String>();
	}

}
