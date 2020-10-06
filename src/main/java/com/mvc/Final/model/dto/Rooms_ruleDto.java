package com.mvc.Final.model.dto;

public class Rooms_ruleDto {
	private int seq_rule;
	private String kid;
	private String baby;
	private String pet;
	private String smoke;
	private String party;
	private int seq_rm;
	
	public Rooms_ruleDto() {
		super();
	}

	public Rooms_ruleDto(int seq_rule, String kid, String baby, String pet, String smoke, String party, int seq_rm) {
		super();
		this.seq_rule = seq_rule;
		this.kid = kid;
		this.baby = baby;
		this.pet = pet;
		this.smoke = smoke;
		this.party = party;
		this.seq_rm = seq_rm;
	}

	public int getSeq_rule() {
		return seq_rule;
	}

	public void setSeq_rule(int seq_rule) {
		this.seq_rule = seq_rule;
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

	public int getSeq_rm() {
		return seq_rm;
	}

	public void setSeq_rm(int seq_rm) {
		this.seq_rm = seq_rm;
	}

	@Override
	public String toString() {
		return  kid + "," + baby + "," + pet + "," + smoke + "," + party;
	}
	
	
}
