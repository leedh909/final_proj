package com.mvc.Final.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.Final.model.dao.MypageDao;
import com.mvc.Final.model.dao.RequireDao;
import com.mvc.Final.model.dto.HostDto;
import com.mvc.Final.model.dto.LoginDto;
import com.mvc.Final.model.dto.RequireDto;
import com.mvc.Final.model.dto.ReservationDto;

@Service
public class RequreBizImpl implements RequireBiz{

	@Autowired
	private RequireDao dao;

	@Override
	public int insertrequire(RequireDto rdto) {
		return dao.insertrequire(rdto);
	}
	
	
	
	
}
