package com.mvc.Final.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.Final.model.dao.MypageDao;
import com.mvc.Final.model.dto.HostDto;
import com.mvc.Final.model.dto.RequireDto;
import com.mvc.Final.model.dto.ReservationDto;

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

	@Override
	public List<ReservationDto> selectReservation(String login) {
		return dao.selectReservation(login);
	}

	@Override
	public List<ReservationDto> selectReservation_host(String login) {
		return dao.selectReservation_host(login);
	}

	@Override
	public String host(String login) {
		return dao.host(login);
	}

	@Override
	public int approve(int seq_h) {
		return dao.approve(seq_h);
	}
	
	
	
}
