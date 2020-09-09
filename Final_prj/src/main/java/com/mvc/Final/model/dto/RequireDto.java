package com.mvc.Final.model.dto;

import java.util.Date;

public class RequireDto {

	private int seq_rq;
	private String rq_id;
	private String rq_name;
	private String rq_title;
	private String rq_context;
	private Date rq_date;
	
	public RequireDto() {
		// TODO Auto-generated constructor stub
	}

	public RequireDto(int seq_rq, String rq_id, String rq_name, String rq_title, String rq_context, Date rq_date) {
		super();
		this.seq_rq = seq_rq;
		this.rq_id = rq_id;
		this.rq_name = rq_name;
		this.rq_title = rq_title;
		this.rq_context = rq_context;
		this.rq_date = rq_date;
	}

	public int getSeq_rq() {
		return seq_rq;
	}

	public void setSeq_rq(int seq_rq) {
		this.seq_rq = seq_rq;
	}

	public String getRq_id() {
		return rq_id;
	}

	public void setRq_id(String rq_id) {
		this.rq_id = rq_id;
	}

	public String getRq_name() {
		return rq_name;
	}

	public void setRq_name(String rq_name) {
		this.rq_name = rq_name;
	}

	public String getRq_title() {
		return rq_title;
	}

	public void setRq_title(String rq_title) {
		this.rq_title = rq_title;
	}

	public String getRq_context() {
		return rq_context;
	}

	public void setRq_context(String rq_context) {
		this.rq_context = rq_context;
	}

	public Date getRq_date() {
		return rq_date;
	}

	public void setRq_date(Date rq_date) {
		this.rq_date = rq_date;
	}
	
	
	
}
