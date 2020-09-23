package com.mvc.Final.model.dto;

public class Rooms_safetyDto {
	private int seq_safety;
	private String fire_sensor;
	private String co_sensor;
	private String e_kit;
	private String fire_off;
	private int seq_rm;
	
	public Rooms_safetyDto() {
		super();
	}

	public Rooms_safetyDto(int seq_safety, String fire_sensor, String co_sensor, String e_kit, String fire_off, int seq_rm) {
		super();
		this.seq_safety = seq_safety;
		this.fire_sensor = fire_sensor;
		this.co_sensor = co_sensor;
		this.e_kit = e_kit;
		this.fire_off = fire_off;
		this.seq_rm = seq_rm;
	}

	public int getSeq_safety() {
		return seq_safety;
	}

	public void setSeq_safety(int seq_safety) {
		this.seq_safety = seq_safety;
	}

	public String getFire_sensor() {
		return fire_sensor;
	}

	public void setFire_sensor(String fire_sensor) {
		this.fire_sensor = fire_sensor;
	}

	public String getCo_sensor() {
		return co_sensor;
	}

	public void setCo_sensor(String co_sensor) {
		this.co_sensor = co_sensor;
	}

	public String getE_kit() {
		return e_kit;
	}

	public void setE_kit(String e_kit) {
		this.e_kit = e_kit;
	}

	public String getFire_off() {
		return fire_off;
	}

	public void setFire_off(String fire_off) {
		this.fire_off = fire_off;
	}

	public int getSeq_rm() {
		return seq_rm;
	}

	public void setSeq_rm(int seq_rm) {
		this.seq_rm = seq_rm;
	}
	
	
	
	
}
