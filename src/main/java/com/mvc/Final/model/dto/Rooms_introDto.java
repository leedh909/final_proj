package com.mvc.Final.model.dto;

public class Rooms_introDto {
	private int seq_intro;
	private String title;
	private String context;
	private int seq_rm;
	
	public Rooms_introDto() {}

	public Rooms_introDto(int seq_intro, String title, String context, int seq_rm) {
		super();
		this.seq_intro = seq_intro;
		this.title = title;
		this.context = context;
		this.seq_rm = seq_rm;
	}


	public int getSeq_intro() {
		return seq_intro;
	}

	public void setSeq_intro(int seq_intro) {
		this.seq_intro = seq_intro;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContext() {
		return context;
	}

	public void setContext(String context) {
		this.context = context;
	}

	public int getSeq_rm() {
		return seq_rm;
	}

	public void setSeq_rm(int seq_rm) {
		this.seq_rm = seq_rm;
	}
	
	
}
