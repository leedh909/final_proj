package com.mvc.Final.model.dto;

import java.time.LocalDate;

public class RoomReservationDto {

	private int seq_re;	//예약번호
	private int people;	//인원수
	private LocalDate r_date;	//예약날짜
	private String check_in;	//체크인 날짜
	private String check_out;	//체크아웃날짜
	private int seq_m;	//예약자
	private int seq_rm;	//숙소
	private String mate;	//여행메이트여부
	private String totalPrice;	//총가격
	private String rangeDate; //여행날짜 범위
	


	public RoomReservationDto(int people, int seq_rm, String totalPrice, String rangeDate) {
		super();
		this.people = people;
		this.seq_rm = seq_rm;
		this.totalPrice = totalPrice;
		this.rangeDate = rangeDate;
	}

	public String getRangeDate() {
		return rangeDate;
	}

	public void setRangeDate(String rangeDate) {
		this.rangeDate = rangeDate;
	}

	//생성자
	public RoomReservationDto() {}

	public RoomReservationDto(int seq_re, int people, LocalDate r_date, String check_in, String check_out,
			int seq_m, int seq_rm, String mate, String totalPrice) {
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
	
	public RoomReservationDto(int people, String check_in, String check_out, int seq_m, int seq_rm, String mate,
			String totalPrice) {
		this.people = people;
		this.check_in = check_in;
		this.check_out = check_out;
		this.seq_m = seq_m;
		this.seq_rm = seq_rm;
		this.mate = mate;
		this.totalPrice = totalPrice;
	}

	public RoomReservationDto(String check_in, String check_out, String totalPrice) {
		this.check_in = check_in;
		this.check_out = check_out;
		this.totalPrice = totalPrice;
	}

	public RoomReservationDto(String check_in, String check_out) {
		this.check_in = check_in;
		this.check_out = check_out;
	}
	
	public RoomReservationDto(int people, String check_in, String check_out, int seq_rm) {
		super();
		this.people = people;
		this.check_in = check_in;
		this.check_out = check_out;
		this.seq_rm = seq_rm;
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

	public String getCheck_in() {
		return check_in;
	}

	public void setCheck_in(String check_in) {
		this.check_in = check_in;
	}

	public String getCheck_out() {
		return check_out;
	}

	public void setCheck_out(String check_out) {
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

	public String getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}
	

	
}
