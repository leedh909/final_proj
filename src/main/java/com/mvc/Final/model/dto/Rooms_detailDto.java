package com.mvc.Final.model.dto;

public class Rooms_detailDto {
    private int seq_detail;
    private String essential;
    private String heating;
    private String aircondition;
    private String iron;
    private String tv;
    private String shampoo;
    private String hairdry;
    private String desk;
    private String closet;
    private String wifi;
    private int seq_rm;
    
	public Rooms_detailDto() {
		super();
	}

	public Rooms_detailDto(int seq_detail, String essential, String heating, String aircondition, String iron, String tv,
			String shampoo, String hairdry, String desk, String closet, String wifi, int seq_rm) {
		super();
		this.seq_detail = seq_detail;
		this.essential = essential;
		this.heating = heating;
		this.aircondition = aircondition;
		this.iron = iron;
		this.tv = tv;
		this.shampoo = shampoo;
		this.hairdry = hairdry;
		this.desk = desk;
		this.closet = closet;
		this.wifi = wifi;
		this.seq_rm = seq_rm;
	}

	public int getSeq_detail() {
		return seq_detail;
	}

	public void setSeq_detail(int seq_detail) {
		this.seq_detail = seq_detail;
	}

	public String getEssential() {
		return essential;
	}

	public void setEssential(String essential) {
		this.essential = essential;
	}

	public String getHeating() {
		return heating;
	}

	public void setHeating(String heating) {
		this.heating = heating;
	}

	public String getAircondition() {
		return aircondition;
	}

	public void setAircondition(String aircondition) {
		this.aircondition = aircondition;
	}

	public String getIron() {
		return iron;
	}

	public void setIron(String iron) {
		this.iron = iron;
	}

	public String getTv() {
		return tv;
	}

	public void setTv(String tv) {
		this.tv = tv;
	}

	public String getShampoo() {
		return shampoo;
	}

	public void setShampoo(String shampoo) {
		this.shampoo = shampoo;
	}

	public String getHairdry() {
		return hairdry;
	}

	public void setHairdry(String hairdry) {
		this.hairdry = hairdry;
	}

	public String getDesk() {
		return desk;
	}

	public void setDesk(String desk) {
		this.desk = desk;
	}

	public String getCloset() {
		return closet;
	}

	public void setCloset(String closet) {
		this.closet = closet;
	}

	public String getWifi() {
		return wifi;
	}

	public void setWifi(String wifi) {
		this.wifi = wifi;
	}

	public int getSeq_rm() {
		return seq_rm;
	}

	public void setSeq_rm(int seq_rm) {
		this.seq_rm = seq_rm;
	}

	@Override
	public String toString() {
		return essential + "," + heating + "," + aircondition
				+ "," + iron + "," + tv + "," + shampoo + "," + hairdry + "," + desk
				+ "," + closet + "," + wifi;
	}
    
    

}
