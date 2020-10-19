package com.mvc.Final.model.biz;

import java.util.List;

import com.mvc.Final.model.dto.ReservationDto;
import com.mvc.Final.model.dto.TravelmateDto;


public interface TravelmateBiz {
	
	/* public List<TravelmateDto> selectList(); */
	
	// 게시물 총 갯수
	/* public int countBoard(); */
	
	public List<TravelmateDto> selectList();
	
}
