package com.mvc.Final.model.dto;

import java.util.Date;

public class MainviewDto {

	//추천 숙소에 필요한 정보
	private int seq_rm;
    private String room_name;
    private String addr;
    private String intro;
    private int price;
    private	String hostid;
    
    //Travelmate 소개에 필요한 정보
    private int seq_mate;
    private String profile;
    private Date check_in;
    private Date check_out;
    
    public MainviewDto() {}

	public MainviewDto(int seq_rm, String room_name, String addr, String intro, int price, String hostid, int seq_mate,
			String profile, Date check_in, Date check_out) {
		super();
		this.seq_rm = seq_rm;
		this.room_name = room_name;
		this.addr = addr;
		this.intro = intro;
		this.price = price;
		this.hostid = hostid;
		this.seq_mate = seq_mate;
		this.profile = profile;
		this.check_in = check_in;
		this.check_out = check_out;
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

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getHostid() {
		return hostid;
	}

	public void setHostid(String hostid) {
		this.hostid = hostid;
	}

	public int getSeq_mate() {
		return seq_mate;
	}

	public void setSeq_mate(int seq_mate) {
		this.seq_mate = seq_mate;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public Date getCheck_in() {
		return check_in;
	}

	public void setCheck_in(Date check_in) {
		this.check_in = check_in;
	}

	public Date getCheck_out() {
		return check_out;
	}

	public void setCheck_out(Date check_out) {
		this.check_out = check_out;
	}

	
    
	
    
    
    
    
}
