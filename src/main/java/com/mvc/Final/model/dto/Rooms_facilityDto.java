package com.mvc.Final.model.dto;

public class Rooms_facilityDto {
	private int seq_facility;
    private String washer;
    private String dryer;
    private String kitchen;
    private String pool;
	private String fitness;
    private String parking;
    private int seq_rm;
    
	public Rooms_facilityDto() {
		super();
	}

	public Rooms_facilityDto(int seq_facility, String washer, String dryer, String kitchen, String pool, String fitness,
			String parking, int seq_rm) {
		super();
		this.seq_facility = seq_facility;
		this.washer = washer;
		this.dryer = dryer;
		this.kitchen = kitchen;
		this.pool = pool;
		this.fitness = fitness;
		this.parking = parking;
		this.seq_rm = seq_rm;
	}

	public int getSeq_facility() {
		return seq_facility;
	}

	public void setSeq_facility(int seq_facility) {
		this.seq_facility = seq_facility;
	}

	public String getWasher() {
		return washer;
	}

	public void setWasher(String washer) {
		this.washer = washer;
	}

	public String getDryer() {
		return dryer;
	}

	public void setDryer(String dryer) {
		this.dryer = dryer;
	}

	public String getKitchen() {
		return kitchen;
	}

	public void setKitchen(String kitchen) {
		this.kitchen = kitchen;
	}

	public String getPool() {
		return pool;
	}

	public void setPool(String pool) {
		this.pool = pool;
	}

	public String getFitness() {
		return fitness;
	}

	public void setFitness(String fitness) {
		this.fitness = fitness;
	}

	public String getParking() {
		return parking;
	}

	public void setParking(String parking) {
		this.parking = parking;
	}

	public int getSeq_rm() {
		return seq_rm;
	}

	public void setSeq_rm(int seq_rm) {
		this.seq_rm = seq_rm;
	}
    
	@Override
	public String toString() {
		return  washer + "," + dryer + "," + kitchen + "," + pool
				+ "," + fitness + "," + parking;
	}

}
