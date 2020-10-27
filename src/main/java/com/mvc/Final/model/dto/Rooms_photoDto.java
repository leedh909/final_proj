package com.mvc.Final.model.dto;

public class Rooms_photoDto {
	private int seq_pr;
	private String p_path;
	private int seq_intro;
	
	public Rooms_photoDto() {}
	
	public Rooms_photoDto(String p_path) {
		this.p_path = p_path;
	}
	public int getSeq_pr() {
		return seq_pr;
	}
	public void setSeq_pr(int seq_pr) {
		this.seq_pr = seq_pr;
	}
	public String getP_path() {
		return p_path;
	}
	public void setP_path(String p_path) {
		this.p_path = p_path;
	}
	public int getSeq_intro() {
		return seq_intro;
	}
	public void setSeq_intro(int seq_intro) {
		this.seq_intro = seq_intro;
	}
   
	
	
}
