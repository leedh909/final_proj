package com.mvc.Final.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.mvc.Final.model.dao.RoomsDao;
import com.mvc.Final.model.dto.RoomsDto;
import com.mvc.Final.model.dto.Rooms_detailDto;

@Service
public class RoomsBizImpl implements RoomsBiz{
	
	@Autowired
	private RoomsDao dao;

	@Override
	public int insertdetail(Rooms_detailDto rdetail) {
		return dao.insertdetail(rdetail);
	}

	@Override
	public int insertrooms(RoomsDto rdto) {
		return dao.insertrooms(rdto);
	}

	
}
