package com.mvc.Final.model.dto;

import java.util.Date;

public class ReservationDto {

	private int seq_re;
	private String room_name;
	private Date check_in;
	private int people;
	private int price;
	
	public ReservationDto() {
		// TODO Auto-generated constructor stub
	}

	public ReservationDto(int seq_re, String room_name, Date check_in, int people, int price) {
		super();
		this.seq_re = seq_re;
		this.room_name = room_name;
		this.check_in = check_in;
		this.people = people;
		this.price = price;
	}

	public int getSeq_re() {
		return seq_re;
	}

	public void setSeq_re(int seq_re) {
		this.seq_re = seq_re;
	}

	public String getRoom_name() {
		return room_name;
	}

	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}

	public Date getCheck_in() {
		return check_in;
	}

	public void setCheck_in(Date check_in) {
		this.check_in = check_in;
	}

	public int getPeople() {
		return people;
	}

	public void setPeople(int people) {
		this.people = people;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
	
	
	
	
}
