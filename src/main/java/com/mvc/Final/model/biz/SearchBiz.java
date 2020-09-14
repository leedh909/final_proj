package com.mvc.Final.model.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.Final.model.dao.SearchDao;
import com.mvc.Final.model.dto.SearchOption;

@Service
public class SearchBiz {
	
	@Autowired
	SearchDao dao;
	
	public int countRoom(SearchOption searchO) {
		return dao.countRoom(searchO) ;
	}
	
}
