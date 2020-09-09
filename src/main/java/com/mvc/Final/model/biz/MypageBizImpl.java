package com.mvc.Final.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.Final.model.dao.MypageDao;
import com.mvc.Final.model.dto.HostDto;
import com.mvc.Final.model.dto.RequireDto;

@Service
public class MypageBizImpl implements MypageBiz{

	@Autowired
	private MypageDao dao;
	
	@Override
	public List<RequireDto> selectRequire() {
		return dao.selectRequire();
	}
	
	@Override
	public List<HostDto> selectHostChk() {
		return dao.selectHostChk();
	}

	@Override
	public List<HostDto> selectHost() {
		
		return dao.selectHost();
	}
	
}
