package com.mvc.Final.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.mvc.Final.model.dao.RoomsDao;
import com.mvc.Final.model.dto.HostDto;
import com.mvc.Final.model.dto.RoomsDto;
import com.mvc.Final.model.dto.Rooms_detailDto;
import com.mvc.Final.model.dto.Rooms_facilityDto;
import com.mvc.Final.model.dto.Rooms_introDto;
import com.mvc.Final.model.dto.Rooms_photoDto;
import com.mvc.Final.model.dto.Rooms_ruleDto;
import com.mvc.Final.model.dto.Rooms_safetyDto;

@Service
public class RoomsBizImpl implements RoomsBiz{
	
	@Autowired
	private RoomsDao dao;

	@Override
	public int insertrooms(RoomsDto rdto) {
		return dao.insertrooms(rdto);
	}

	@Override
	public int insertdetail(Rooms_detailDto rdetail) {
		return dao.insertdetail(rdetail);
	}

	@Override
	public int insertfacility(Rooms_facilityDto rfac) {
		return dao.insertfacility(rfac);
	}

	@Override
	public int insertsafety(Rooms_safetyDto rsafe) {
		return dao.insertsafety(rsafe);
	}

	@Override
	public int insertrule(Rooms_ruleDto rule) {
		return dao.insertrule(rule);
	}

	@Override
	public int insertintro(Rooms_introDto intro) {
		return dao.insertintro(intro);
	}

	@Override
	public int inserthost(HostDto hdto) {
		return dao.inserthost(hdto);
	}

	@Override
	public int selecthostseq(HostDto hdto) {
		return dao.selecthostseq(hdto);
	}

	@Override
	public int selectrooms(RoomsDto rdto) {
		return dao.selectrooms(rdto);
	}

	@Override
	public int insertphoto(Rooms_photoDto photo) {
		return dao.insertphoto(photo);
	}

	@Override
	public int selectintroseq(Rooms_introDto intro) {
		return dao.selectintroseq(intro);
	}
	

	
	
}
