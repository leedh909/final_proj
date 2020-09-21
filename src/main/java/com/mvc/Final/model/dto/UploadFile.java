package com.mvc.Final.model.dto;

import org.springframework.web.multipart.MultipartFile;

public class UploadFile {

	private String name;
	private MultipartFile mpfile;
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public MultipartFile getMpfile() {
		return mpfile;
	}
	public void setMpfile(MultipartFile mpfile) {
		this.mpfile = mpfile;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
