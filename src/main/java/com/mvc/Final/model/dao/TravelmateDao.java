package com.mvc.Final.model.dao;

import java.util.List;

import com.mvc.Final.model.dto.ReservationDto;
import com.mvc.Final.model.dto.TravelmateDto;


public interface TravelmateDao {
	
	String NAMESPACE="travelmate.";
	
	/* public List<TravelmateDto> selectList(); */

	public List<TravelmateDto> travelmatelist();
	
		
	
}
