package com.mvc.Final.model.dto;

import java.util.Date;

public class ReservationDto {

	private int seq_re;
	private String room_name;
	private Date check_in;
	private int people;
	private int price;
	//예약자 현황에 추가될 데이터
	private String name; //예약자성명
	private Date check_out;
	private String phone;
	
	
	public ReservationDto() {
		// TODO Auto-generated constructor stub
	}


	public ReservationDto(int seq_re, String room_name, Date check_in, int people, int price, String name,
			Date check_out, String phone) {
		super();
		this.seq_re = seq_re;
		this.room_name = room_name;
		this.check_in = check_in;
		this.people = people;
		this.price = price;
		this.name = name;
		this.check_out = check_out;
		this.phone = phone;
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


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public Date getCheck_out() {
		return check_out;
	}


	public void setCheck_out(Date check_out) {
		this.check_out = check_out;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	@Override
	public String toString() {
		return "ReservationDto [seq_re=" + seq_re + ", room_name=" + room_name + ", check_in=" + check_in + ", people="
				+ people + ", price=" + price + ", name=" + name + ", check_out=" + check_out + ", phone=" + phone
				+ "]";
	}

	
	
	
	
	
	
}
