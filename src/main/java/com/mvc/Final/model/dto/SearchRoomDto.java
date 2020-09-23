package com.mvc.Final.model.dto;

public class SearchRoomDto {

	private RoomsDto room;
	private Rooms_introDto intro;
	
	//생성자
	public SearchRoomDto() {}

	public SearchRoomDto(RoomsDto room, Rooms_introDto intro) {
		super();
		this.room = room;
		this.intro = intro;
	}

	//getter & setterroo
	public RoomsDto getRoom() {
		return room;
	}


	public void setRoom(RoomsDto room) {
		this.room = room;
	}


	public Rooms_introDto getIntro() {
		return intro;
	}


	public void setIntro(Rooms_introDto intro) {
		this.intro = intro;
	}
	
}
