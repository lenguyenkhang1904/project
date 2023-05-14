package com.project.tags.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.project.common.entity.Tag;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "tutor_tag")
public class TutorTag extends Tag {

	@Id
	private String id;

	@Override
	public String toString() {
		return tagType + "-" + tagGroup + "-" + tagName;
	}

}
