package com.mvc.Final.model.dto;

public class RoomTotalDto {

	private RoomsDto room;	//숙소
	private Rooms_detailDto detail;	//숙소 세부사항
	private Rooms_facilityDto facility;	//숙소 편의시설
	private Rooms_introDto intro;	//슉소 소개
	private Rooms_ruleDto rule;	//숙소 규정
	private Rooms_safetyDto safety;	//숙소 안전시설
	private RoomReservationDto reservation; //숙소 예약
	private LoginDto member;//회원정보

	//생성자
	public RoomTotalDto() {}
	
	public RoomTotalDto(RoomsDto room, Rooms_detailDto detail, Rooms_facilityDto facility, Rooms_introDto intro,
			Rooms_ruleDto rule, Rooms_safetyDto safety, RoomReservationDto reservation, LoginDto member) {
		super();
		this.room = room;
		this.detail = detail;
		this.facility = facility;
		this.intro = intro;
		this.rule = rule;
		this.safety = safety;
		this.reservation = reservation;
		this.member = member;
	}

	public RoomTotalDto(RoomsDto room, Rooms_detailDto detail, Rooms_facilityDto facility, Rooms_introDto intro,
			Rooms_ruleDto rule, Rooms_safetyDto safety) {
		this.room = room;
		this.detail = detail;
		this.facility = facility;
		this.intro = intro;
		this.rule = rule;
		this.safety = safety;
	}

	public RoomTotalDto(RoomsDto room, Rooms_detailDto detail, Rooms_facilityDto facility, Rooms_ruleDto rule,
			Rooms_safetyDto safety) {
		super();
		this.room = room;
		this.detail = detail;
		this.facility = facility;
		this.rule = rule;
		this.safety = safety;
	}

	public RoomTotalDto(RoomsDto room, Rooms_ruleDto rule, RoomReservationDto reservation, LoginDto member) {
		super();
		this.room = room;
		this.rule = rule;
		this.reservation = reservation;
		this.member = member;
	}

	public RoomTotalDto(RoomsDto room, Rooms_introDto intro, Rooms_detailDto detail) {
		this.room = room;
		this.intro = intro;
		this.detail = detail;
	}
	
	public RoomTotalDto(RoomsDto room, Rooms_introDto intro) {
		this.room = room;
		this.intro = intro;
	}

	//getter&setter
	public RoomsDto getRoom() {
		return room;
	}

	public void setRoom(RoomsDto room) {
		this.room = room;
	}

	public Rooms_detailDto getDetail() {
		return detail;
	}

	public void setDetail(Rooms_detailDto detail) {
		this.detail = detail;
	}

	public Rooms_facilityDto getFacility() {
		return facility;
	}

	public void setFacility(Rooms_facilityDto facility) {
		this.facility = facility;
	}

	public Rooms_introDto getIntro() {
		return intro;
	}

	public void setIntro(Rooms_introDto intro) {
		this.intro = intro;
	}

	public Rooms_ruleDto getRule() {
		return rule;
	}

	public void setRule(Rooms_ruleDto rule) {
		this.rule = rule;
	}

	public Rooms_safetyDto getSafety() {
		return safety;
	}

	public void setSafety(Rooms_safetyDto safety) {
		this.safety = safety;
	}

	public RoomReservationDto getReservation() {
		return reservation;
	}
	
	public void setReservation(RoomReservationDto reservation) {
		this.reservation = reservation;
	}
	
	public LoginDto getMember() {
		return member;
	}
	
	public void setMember(LoginDto member) {
		this.member = member;
	}
	
	@Override
	public String toString() {
		return "RoomTotalDto [room=" + room + ", detail=" + detail + ", facility=" + facility + ", intro=" + intro
				+ ", rule=" + rule + ", safety=" + safety + "]";
	}
	
	
	

	
	
		
}
