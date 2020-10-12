package com.mvc.Final.model.dto;


public class SearchOption {

	private String local;	//지역
	private String checkin;	//체크인 날짜
	private String checkout;	//체크아웃 날짜
	private int guestNum;	//게스트 수
	

	//생성자
	public SearchOption() {}

	public SearchOption(String local) {
		this.local = local;
		this.checkin ="";
		this.checkout ="";
		this.guestNum = 1;
	}

	public SearchOption(String local, int guestNum) {
		this.local = local;
		this.checkin= "";
		this.checkout="";
		this.guestNum = guestNum;
	}

	public SearchOption(String local, String checkin, String checkout) {
		this.local = local;
		this.checkin = checkin;
		this.checkout = checkout;
		this.guestNum = 1;
	}

	public SearchOption(String local, String checkin, String checkout, int guestNum) {
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
	public String getCheckin() {
		return checkin;
	}
	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}
	public String getCheckout() {
		return checkout;
	}
	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}
	public int getGuestNum() {
		return guestNum;
	}
	public void setGuestNum(int guestNum) {
		this.guestNum = guestNum;
	}
	
	
	
}
