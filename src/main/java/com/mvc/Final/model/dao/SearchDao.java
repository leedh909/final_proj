package com.mvc.Final.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.Final.model.dto.LoginDto;
import com.mvc.Final.model.dto.RoomReservationDto;
import com.mvc.Final.model.dto.RoomTotalDto;
import com.mvc.Final.model.dto.SearchOption;

@Repository
public class SearchDao {

	String NAMESPACE="room_search.";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
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
	
	//숙소 예약된 날짜 가져오기
	public List<RoomReservationDto> reservationDate(int seq_rm){
		
		List<RoomReservationDto> date = new ArrayList<RoomReservationDto>();
		
		try {
			date = sqlSession.selectList(NAMESPACE+"inoutdate",seq_rm);
			
		} catch (Exception e) {
			System.out.println("error:reservationdate");
			e.printStackTrace();
		}
		
		return date;
	}
	
	//호스트 정보
	public LoginDto hostInfo(int hostNum) {
		LoginDto hostInfo = new LoginDto();
		
		try {
			hostInfo = sqlSession.selectOne(NAMESPACE+"hostInfo",hostNum);
		} catch (Exception e) {
			System.out.println("error:hostInfo");
			e.printStackTrace();
		}
		
		return hostInfo;
	}

}
