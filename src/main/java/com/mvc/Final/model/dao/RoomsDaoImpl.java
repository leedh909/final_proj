package com.mvc.Final.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.mail.Session;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.mvc.Final.model.dto.HostDto;
import com.mvc.Final.model.dto.RequireDto;
import com.mvc.Final.model.dto.ReservationDto;
import com.mvc.Final.model.dto.RoomsDto;
import com.mvc.Final.model.dto.Rooms_detailDto;

@Repository
public class RoomsDaoImpl implements RoomsDao{

	@Autowired
	private SqlSessionTemplate Sqlsession;


	@Override
	public int insertdetail(Rooms_detailDto rdetail) {
		int detail = 0;
		  
		try {
			detail = Sqlsession.insert(NAMESPACE+"insert",rdetail);
			System.out.println("res: "+detail);
		} catch (Exception e) {
			System.out.println("[ERROR]: insert");
			e.printStackTrace();
		}
		   
		return detail;
	}


	@Override
	public int insertrooms(RoomsDto rdto) {
		int room = 0;
		  
		try {
			room = Sqlsession.insert(NAMESPACE+"insert",rdto);
			System.out.println("res: "+room);
		} catch (Exception e) {
			System.out.println("[ERROR]: insert");
			e.printStackTrace();
		}
		
		return room;
	}


}
