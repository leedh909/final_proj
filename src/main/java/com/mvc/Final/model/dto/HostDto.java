package com.mvc.Final.model.dto;

public class HostDto {

	private int seq_h;
	private int seq_m;
	private String id;
	private String name;
	private String phone;
	private String room_name;
	private String state;
	
	public HostDto() {
	}

	public HostDto(int seq_h, int seq_m, String id, String name, String phone, String room_name, String state) {
		super();
		this.seq_h = seq_h;
		this.seq_m = seq_m;
		this.id = id;
		this.name = name;
		this.phone = phone;
		this.room_name = room_name;
		this.state = state;
	}

	public int getSeq_h() {
		return seq_h;
	}

	public void setSeq_h(int seq_h) {
		this.seq_h = seq_h;
	}

	public int getSeq_m() {
		return seq_m;
	}

	public void setSeq_m(int seq_m) {
		this.seq_m = seq_m;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getRoom_name() {
		return room_name;
	}

	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}
	
	
	
	
	
	
}
