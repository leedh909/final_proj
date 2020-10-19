package com.mvc.Final.model.biz;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mvc.Final.model.dto.RoomsDto;
import com.mvc.Final.model.dto.Rooms_detailDto;

@Service
public interface RoomsBiz {
	
	public int insertrooms(RoomsDto rdto);
    public int insertdetail(Rooms_detailDto rdetail);
}
