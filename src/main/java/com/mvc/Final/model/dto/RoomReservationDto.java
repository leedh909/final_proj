package com.mvc.Final.model.dto;

import java.time.LocalDate;

public class RoomReservationDto {

	private int seq_re;	//예약번호
	private int people;	//인원수
	private LocalDate r_date;	//예약날짜
	private LocalDate check_in;	//체크인 날짜
	private LocalDate check_out;	//체크아웃날짜
	private int seq_m;	//예약자
	private int seq_rm;	//숙소
	private String mate;	//여행메이트여부
	private int totalPrice;	//총가격
	
	//생성자
	public RoomReservationDto() {}

	public RoomReservationDto(int seq_re, int people, LocalDate r_date, LocalDate check_in, LocalDate check_out,
			int seq_m, int seq_rm, String mate, int totalPrice) {
		super();
		this.seq_re = seq_re;
		this.people = people;
		this.r_date = r_date;
		this.check_in = check_in;
		this.check_out = check_out;
		this.seq_m = seq_m;
		this.seq_rm = seq_rm;
		this.mate = mate;
		this.totalPrice = totalPrice;
	}
	
	
	//getter&setter
	public int getSeq_re() {
		return seq_re;
	}

	public void setSeq_re(int seq_re) {
		this.seq_re = seq_re;
	}

	public int getPeople() {
		return people;
	}

	public void setPeople(int people) {
		this.people = people;
	}

	public LocalDate getR_date() {
		return r_date;
	}

	public void setR_date(LocalDate r_date) {
		this.r_date = r_date;
	}

	public LocalDate getCheck_in() {
		return check_in;
	}

	public void setCheck_in(LocalDate check_in) {
		this.check_in = check_in;
	}

	public LocalDate getCheck_out() {
		return check_out;
	}

	public void setCheck_out(LocalDate check_out) {
		this.check_out = check_out;
	}

	public int getSeq_m() {
		return seq_m;
	}

	public void setSeq_m(int seq_m) {
		this.seq_m = seq_m;
	}

	public int getSeq_rm() {
		return seq_rm;
	}

	public void setSeq_rm(int seq_rm) {
		this.seq_rm = seq_rm;
	}

	public String getMate() {
		return mate;
	}

	public void setMate(String mate) {
		this.mate = mate;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	

	
}
