package com.mvc.Final.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.Final.model.dto.HostDto;
import com.mvc.Final.model.dto.RequireDto;

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
	
	
	
	
	
}
