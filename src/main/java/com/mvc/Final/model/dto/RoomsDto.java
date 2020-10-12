package com.mvc.Final.model.dto;

public class RoomsDto {
    private int seq_rm;
    private String room_name;
    private String addr;
    private int person;
    private int price;
    private String intro;
    private String r_type;
    private int bed_room;
    private int bed;
    private int bath_room;
    private String checkin;
    private int seq_h;
    private String checkin_time;
    private String checkout_time;
    
	public RoomsDto() {
		super();
	}

	public RoomsDto(int seq_rm, String room_name, String addr, int person, int price, String intro, String r_type,
			int bed_room, int bed, int bath_room, String checkin, int seq_h, String checkin_time,
			String checkout_time) {
		super();
		this.seq_rm = seq_rm;
		this.room_name = room_name;
		this.addr = addr;
		this.person = person;
		this.price = price;
		this.intro = intro;
		this.r_type = r_type;
		this.bed_room = bed_room;
		this.bed = bed;
		this.bath_room = bath_room;
		this.checkin = checkin;
		this.seq_h = seq_h;
		this.checkin_time = checkin_time;
		this.checkout_time = checkout_time;
	}

	public int getSeq_rm() {
		return seq_rm;
	}

	public void setSeq_rm(int seq_rm) {
		this.seq_rm = seq_rm;
	}

	public String getRoom_name() {
		return room_name;
	}

	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public int getPerson() {
		return person;
	}

	public void setPerson(int person) {
		this.person = person;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public String getR_type() {
		return r_type;
	}

	public void setR_type(String r_type) {
		this.r_type = r_type;
	}

	public int getBed_room() {
		return bed_room;
	}

	public void setBed_room(int bed_room) {
		this.bed_room = bed_room;
	}

	public int getBed() {
		return bed;
	}

	public void setBed(int bed) {
		this.bed = bed;
	}

	public int getBath_room() {
		return bath_room;
	}

	public void setBath_room(int bath_room) {
		this.bath_room = bath_room;
	}

	public String getCheckin() {
		return checkin;
	}

	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}

	public int getSeq_h() {
		return seq_h;
	}

	public void setSeq_h(int seq_h) {
		this.seq_h = seq_h;
	}

	public String getCheckin_time() {
		return checkin_time;
	}

	public void setCheckin_time(String checkin_time) {
		this.checkin_time = checkin_time;
	}

	public String getCheckout_time() {
		return checkout_time;
	}

	public void setCheckout_time(String checkout_time) {
		this.checkout_time = checkout_time;
	}

	@Override
	public String toString() {
		return   seq_rm + ", " + room_name + ", " + addr + ", " + person
				+ ", " + price + ", " + intro + ", " + r_type + ", " + bed_room + ", "
				+ bed + ", " + bath_room + ", " + checkin + ", " + seq_h + ", "
				+ checkin_time + ", " + checkout_time;
	}
	
	
    
}
