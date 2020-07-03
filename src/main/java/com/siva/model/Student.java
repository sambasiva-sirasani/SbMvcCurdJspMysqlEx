package com.siva.model;

import java.util.List;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity
public class Student {
	@Id
	@GeneratedValue
	private Integer stdId;
	private String stdName;
	private String stdPwd;
	private String stdGen;
	private String stdCourse;
	private String stdAddr;
	@ElementCollection
	private List<String> stdLang;

}
