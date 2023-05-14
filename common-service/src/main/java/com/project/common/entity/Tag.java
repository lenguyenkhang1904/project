package com.project.common.entity;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@MappedSuperclass
public class Tag extends AbstractEntity {

	@Column(name = "tag_type")
	protected String tagType;

	@Column(name = "tag_group")
	protected String tagGroup;

	@Column(name = "tag_name")
	protected String tagName;

}
