package com.mvc.Final.model.dao;


import java.util.List;

import org.springframework.stereotype.Repository;

import com.mvc.Final.model.dto.HostDto;
import com.mvc.Final.model.dto.RoomsDto;
import com.mvc.Final.model.dto.Rooms_detailDto;
import com.mvc.Final.model.dto.Rooms_facilityDto;
import com.mvc.Final.model.dto.Rooms_introDto;
import com.mvc.Final.model.dto.Rooms_photoDto;
import com.mvc.Final.model.dto.Rooms_ruleDto;
import com.mvc.Final.model.dto.Rooms_safetyDto;
import com.mvc.Final.model.dto.SearchOption;

@Repository
public interface RoomsDao {

	String NAMESPACE = "rooms.";
	
	public int insertrooms(RoomsDto rdto);
	public int selectrooms(RoomsDto rdto);
	public int insertdetail(Rooms_detailDto rdetail);
	public int insertfacility(Rooms_facilityDto rfac);
	public int insertsafety(Rooms_safetyDto rsafe);
	public int insertrule(Rooms_ruleDto rule);
	public int insertintro(Rooms_introDto intro);
	public int inserthost(HostDto hdto);
	public int selecthostseq(HostDto hdto);
	public int selectintroseq(Rooms_introDto intro);
	public int insertphoto(Rooms_photoDto photo);
	   
	
}
