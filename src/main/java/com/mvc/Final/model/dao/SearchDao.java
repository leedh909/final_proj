package com.mvc.Final.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.Final.model.dto.SearchOption;

@Repository
public class SearchDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int countRoom(SearchOption searchO) {
		
		int count = 0;
		
		
		return count;
	}
}
