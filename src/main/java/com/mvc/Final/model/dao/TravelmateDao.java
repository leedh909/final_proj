package com.mvc.Final.model.dao;

import java.util.List;

import com.mvc.Final.model.dto.ReservationDto;
import com.mvc.Final.model.dto.RoomReservationDto;
import com.mvc.Final.model.dto.RoomTotalDto;


public interface TravelmateDao {
	
	String NAMESPACE="travelmate.";
	
	public List<RoomTotalDto> selectList();
	
	public RoomTotalDto mateDetail(int seq_rm);

	public RoomReservationDto reservation(int seq_rm);
	
}
