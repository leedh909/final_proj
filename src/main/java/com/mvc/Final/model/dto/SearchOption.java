package com.mvc.Final.model.dto;

import java.time.LocalDate;

public class SearchOption {

	private String local;	//지역
	private LocalDate checkin;	//체크인 날짜
	private LocalDate checkout;	//체크아웃 날짜
	private int guestNum;	//게스트 수
	

	//생성자
	public SearchOption() {}
	
	public SearchOption(String local) {
		this.local = local;
		this.guestNum = 1;
	}
	
	public SearchOption(String local, LocalDate checkin) {
		this.local = local;
		this.checkin = checkin;
		this.guestNum = 1;
		this.checkout = checkin.plusDays(1);
	}
	

	public SearchOption(String local, LocalDate checkin, int guestNum) {
		this.local = local;
		this.checkin = checkin;
		this.checkout = checkin.plusDays(1);
		this.guestNum = guestNum;
	}

	public SearchOption(String local, LocalDate checkin, LocalDate checkout, int guestNum) {
		this.local = local;
		this.checkin = checkin;
		this.checkout = checkout;
		this.guestNum = guestNum;
	}
	

	//getter,setter
	public String getLocal() {
		return local;
	}
	public void setLocal(String local) {
		this.local = local;
	}
	public LocalDate getCheckin() {
		return checkin;
	}
	public void setCheckin(LocalDate checkin) {
		this.checkin = checkin;
	}
	public LocalDate getCheckout() {
		return checkout;
	}
	public void setCheckout(LocalDate checkout) {
		this.checkout = checkout;
	}
	public int getGuestNum() {
		return guestNum;
	}
	public void setGuestNum(int guestNum) {
		this.guestNum = guestNum;
	}
	
	
	
}
