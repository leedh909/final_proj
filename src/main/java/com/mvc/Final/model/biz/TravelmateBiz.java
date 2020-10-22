package com.mvc.Final.model.biz;

import java.util.List;

import com.mvc.Final.model.dto.ReservationDto;
import com.mvc.Final.model.dto.RoomReservationDto;
import com.mvc.Final.model.dto.RoomTotalDto;


public interface TravelmateBiz {
	
	/* public List<TravelmateDto> selectList(); */
	
	// 게시물 총 갯수
	/* public int countBoard(); */
	
	//travelmate 리스트 가져오기
	public List<RoomTotalDto> selectList();
	
	//travelmate detail
	public RoomTotalDto mateDetail(int seq_rm);
	
	//reservation 정보 
	public RoomReservationDto selectRe(int seq_rm);
	
}
