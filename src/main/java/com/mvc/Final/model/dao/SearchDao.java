package com.mvc.Final.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.Final.model.dto.RoomTotalDto;
import com.mvc.Final.model.dto.SearchOption;

@Repository
public class SearchDao {

	String NAMESPACE="room_search.";
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int countRoom(SearchOption searchO) {

		int count = 0;

		return count;
	}
	
	//검색리스트
	public List<RoomTotalDto> search(SearchOption searchO) {

		List<RoomTotalDto> searchList = null;

		try {
			searchList = sqlSession.selectList(NAMESPACE + "searchlist",searchO);
		} catch (Exception e) {
			System.out.println("error: searchlist");
			e.printStackTrace();
		} 
		return searchList;
	}

	//숙소 정보
	public RoomTotalDto roomInfo(int seq_rm) {
		
		RoomTotalDto roomInfo = new RoomTotalDto();
		
		try {
			roomInfo = sqlSession.selectOne(NAMESPACE+"roomInfo",seq_rm);
		} catch (Exception e) {
			System.out.println("error: roominfo");
			e.printStackTrace();
		}
		
		return roomInfo;
	}

}
