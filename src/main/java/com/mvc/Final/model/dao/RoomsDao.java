package com.mvc.Final.model.dao;


import java.util.List;

import org.springframework.stereotype.Repository;
import com.mvc.Final.model.dto.RoomsDto;
import com.mvc.Final.model.dto.Rooms_detailDto;
import com.mvc.Final.model.dto.SearchOption;

@Repository
public interface RoomsDao {

	String NAMESPACE = "rooms.";
	
	public int insertrooms(RoomsDto rdto);
    public int insertdetail(Rooms_detailDto rdetail);
   
	
}
