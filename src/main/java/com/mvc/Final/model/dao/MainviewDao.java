package com.mvc.Final.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.Final.model.dto.HostDto;
import com.mvc.Final.model.dto.MainviewDto;

@Repository
public class MainviewDao {

	String NAMESPACE = "mainview.";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<MainviewDto> placeList() {
		
		List<MainviewDto> mvdto = new ArrayList<MainviewDto>();
		try {
			mvdto = sqlSession.selectList(NAMESPACE+"placeList");
		} catch (Exception e) {
			System.out.println("[error] : select PlaceList");
			e.printStackTrace();
		}
		
		return mvdto;
	}
	
	public List<MainviewDto> mateList() {
		
		List<MainviewDto> mvdto = new ArrayList<MainviewDto>();
		try {
			mvdto = sqlSession.selectList(NAMESPACE+"mateList");
		} catch (Exception e) {
			System.out.println("[error] : select MateList");
			e.printStackTrace();
		}
		
		return mvdto;
	}
	
	
}
