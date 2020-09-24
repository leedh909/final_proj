package com.mvc.Final.model.dto;

public class RoomTotalDto {

	private RoomsDto room;	//숙소
	private Rooms_detailDto detail;	//숙소 세부사항
	private Rooms_facilityDto facility;	//숙소 편의시설
	private Rooms_introDto intro;	//슉소 소개
	private Rooms_ruleDto rule;	//숙소 규정
	private Rooms_safetyDto safety;	//숙소 안전시설
	
	//생성자
	public RoomTotalDto() {}

	public RoomTotalDto(RoomsDto room, Rooms_detailDto detail, Rooms_facilityDto facility, Rooms_introDto intro,
			Rooms_ruleDto rule, Rooms_safetyDto safety) {
		super();
		this.room = room;
		this.detail = detail;
		this.facility = facility;
		this.intro = intro;
		this.rule = rule;
		this.safety = safety;
	}
	
	public RoomTotalDto(RoomsDto room, Rooms_introDto intro) {
		super();
		this.room = room;
		this.intro = intro;
	}

	//getter/setter
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
}
