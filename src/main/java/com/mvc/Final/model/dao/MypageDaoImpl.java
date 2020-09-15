package com.mvc.Final.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.Final.model.dto.HostDto;
import com.mvc.Final.model.dto.RequireDto;
import com.mvc.Final.model.dto.ReservationDto;

@Repository
public class MypageDaoImpl implements MypageDao{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<HostDto> selectHost() {
		
		List<HostDto> hdto = new ArrayList<HostDto>();
		try {
			hdto = sqlSession.selectList(NAMESPACE+"selectHost");
		} catch (Exception e) {
			System.out.println("[error] : selectHost");
			e.printStackTrace();
		}
		
		return hdto;
	}

	@Override
	public List<HostDto> selectHostChk() {
		List<HostDto> hdto = new ArrayList<HostDto>();
		try {
			hdto = sqlSession.selectList(NAMESPACE+"selectHostChk");
		} catch (Exception e) {
			System.out.println("[error] : selectHostChk");
			e.printStackTrace();
		}
		
		return hdto;
	}

	@Override
	public List<RequireDto> selectRequire() {
		List<RequireDto> rqdto = new ArrayList<RequireDto>();
		
		try {
			rqdto = sqlSession.selectList(NAMESPACE+"selectRequire");
		} catch (Exception e) {
			System.out.println("[error] : selectRequire");
			e.printStackTrace();
		}
		
		return rqdto;
	}

	@Override
	public List<ReservationDto> selectReservation(String login) {
		List<ReservationDto> redto = new ArrayList<ReservationDto>();
		
		redto = sqlSession.selectList(NAMESPACE+"selectReservation",login);
		
		return redto;
	}

	@Override
	public List<ReservationDto> selectReservation_host(String login) {

		List<ReservationDto> redto = new ArrayList<ReservationDto>();
		
		redto = sqlSession.selectList(NAMESPACE+"selectReservation_host",login);
		return redto;
	}

	@Override
	public String host(String login) {
		String host = "";
		host = sqlSession.selectOne(NAMESPACE+"hostcheck",login);
		return host;
	}

	@Override
	public int approve(int seq_h) {
		int res = 0;
		res = sqlSession.update(NAMESPACE+"approve",seq_h);
		return res;
	}

	@Override
	public String email(int seq_m) {
		String email ="";
		try {
			email = sqlSession.selectOne(NAMESPACE+"emailinfo",seq_m);
		} catch (Exception e) {
			System.out.println("[error] : email");
			e.printStackTrace();
		}
		return email;
	}
	
	
	
	
	
	
}
