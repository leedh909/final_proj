package com.mvc.Final.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.Final.model.dto.HostDto;
import com.mvc.Final.model.dto.LoginDto;
import com.mvc.Final.model.dto.RequireDto;
import com.mvc.Final.model.dto.ReservationDto;

@Repository
public class RequireDaoImpl implements RequireDao{

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int insertrequire(RequireDto rdto) {
		int res = 0;
		  
		try {
			res = sqlSession.insert(NAMESPACE+"insertrq",rdto);
		} catch (Exception e) {
			System.out.println("[ERROR]: insertrq");
			e.printStackTrace();
		}
		return res;
	}
	

	
	
	
}
