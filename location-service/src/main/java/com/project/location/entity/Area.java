package com.project.location.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "area")
public class Area {
	
	@Id
	private String id;
	
	@Column(name = "nation")
	private String nation;
	
	@Column(name = "state")
	private String state;	
	
	@Column(name = "provincial_level")
	private String provincialLevel;
	
	@Column(name = "district")
	private String district;
	
	@Column(name = "commune")
	private String commune;
	
	@Column(name = "x_rel_coo")
	private String xRelCoo;
	
	@Column(name = "y_rel_coo")
	private String yRelCoo;
	
	@OneToMany(mappedBy = "area")
	@JsonIgnore
	private List<RegisterAndLearnerAddress> registerAndLearnerAddresses;
	
	@OneToMany(mappedBy = "area")
	@JsonIgnore
	private List<TaskPlaceAddress> taskPlaceAddresses;

}

