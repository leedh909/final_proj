package com.mvc.Final.model.dto;

import java.util.Date;

public class TravelmateDto {

	private String profile;
	private String addr;
	private Date check_in;
	private Date check_out;
	private int people;
	private String kid;
	private String baby;
	private String pet;
	private String smoke;
	private String party;
	
	
	public TravelmateDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
//	public TravelmateDto(String profile, String addr, Date check_in, Date check_out, int people) {
//		super();
//		this.profile = profile;
//		this.addr = addr;
//		this.check_in = check_in;
//		this.check_out = check_out;
//		this.people = people;
//	}
	
	public TravelmateDto(String profile, String addr, Date check_in, Date check_out, int people, String kid,
			String baby, String pet, String smoke, String party) {
		super();
		this.profile = profile;
		this.addr = addr;
		this.check_in = check_in;
		this.check_out = check_out;
		this.people = people;
		this.kid = kid;
		this.baby = baby;
		this.pet = pet;
		this.smoke = smoke;
		this.party = party;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
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
	public int getPeople() {
		return people;
	}
	public void setPeople(int people) {
		this.people = people;
	}
	
	public String getKid() {
		return kid;
	}
	public void setKid(String kid) {
		this.kid = kid;
	}
	public String getBaby() {
		return baby;
	}
	public void setBaby(String baby) {
		this.baby = baby;
	}
	public String getPet() {
		return pet;
	}
	public void setPet(String pet) {
		this.pet = pet;
	}
	public String getSmoke() {
		return smoke;
	}
	public void setSmoke(String smoke) {
		this.smoke = smoke;
	}
	public String getParty() {
		return party;
	}
	public void setParty(String party) {
		this.party = party;
	}
	
	
	
}
