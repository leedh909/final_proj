package com.mvc.Final.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.Final.model.dao.SearchDao;
import com.mvc.Final.model.dto.LoginDto;
import com.mvc.Final.model.dto.RoomTotalDto;
import com.mvc.Final.model.dto.SearchOption;

@Service
public class SearchBiz {
	
	@Autowired
	private SearchDao dao;
	
	public int countRoom(SearchOption searchO) {
		return dao.countRoom(searchO) ;
	}
	//검색 조건에 맞는 숙소정보
	public List<RoomTotalDto> search(SearchOption searchO) {
		return dao.search(searchO);
	}
	//숙소정보 가지고오기
	public RoomTotalDto roomInfo(int seq_rm) {
		return dao.roomInfo(seq_rm);
	}
	//호스트 정보
	public LoginDto hostInfo(int hostNum) {
		return dao.hostInfo(hostNum);
	}
	
}
