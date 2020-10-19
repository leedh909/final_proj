package com.mvc.Final.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.Final.model.dto.TravelmateDto;

@Repository
public class TravelmateDaoImpl implements TravelmateDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<TravelmateDto> travelmatelist() {

		List<TravelmateDto> tmdto = new ArrayList<TravelmateDto>();
		
		tmdto = sqlSession.selectList(NAMESPACE+"travelmateList"); //mapper의 id와 일치시켜야함
		
		return tmdto;
	}

}
