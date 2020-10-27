package com.mvc.Final.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.Final.model.dto.LoginDto;
import com.mvc.Final.model.dto.RoomReservationDto;
import com.mvc.Final.model.dto.RoomTotalDto;
import com.mvc.Final.model.dto.RoomsDto;
import com.mvc.Final.model.dto.Rooms_photoDto;
import com.mvc.Final.model.dto.SearchOption;

@Repository
public class SearchDao {

	String NAMESPACE="room_search.";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//검색된 숙소 총 개수
	public int count(SearchOption searchO) {
		int res = 0;
		
		try {
			res = sqlSession.selectOne(NAMESPACE+"count",searchO);
		} catch (Exception e) {
			System.out.println("error: count");
			e.printStackTrace();
		}
		return res;
	}

	
	
	//검색리스트
	public List<RoomTotalDto> search(SearchOption searchO) {

		List<RoomTotalDto> searchList = new ArrayList<RoomTotalDto>();

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
	
	//회원 정보
	public LoginDto memberInfo(int memberNum) {
		LoginDto memberInfo = new LoginDto();
		
		try {
			memberInfo = sqlSession.selectOne(NAMESPACE+"memberInfo",memberNum);
		} catch (Exception e) {
			System.out.println("error:memberInfo");
			e.printStackTrace();
		}
		
		return memberInfo;
	}

	//로그인 한 회원 정보 
	public LoginDto idLogin(String loginId) {
		LoginDto login = new LoginDto();
		
		try {
			login = sqlSession.selectOne(NAMESPACE+"loginInfo",loginId);
		} catch (Exception e) {
			System.out.println("error: sessionInfo");
			e.printStackTrace();
		}
		
		return login;
	}
	
	//payment 페이지에 들어가는 숙소 정보
	public RoomsDto room(int seq_rm) {
		RoomsDto room = new RoomsDto();;
		
		try {
			room = sqlSession.selectOne(NAMESPACE+"room",seq_rm);
		} catch (Exception e) {
			System.out.println("error:room");
			e.printStackTrace();
		}
		
		return room;
	}

	//예약시 reservation 테이블 insert
	public int reservationInsert(RoomReservationDto reservDto) {
		int res = 0;
		
		try {
			res = sqlSession.insert(NAMESPACE+"reservation",reservDto);
		} catch (Exception e) {
			System.out.println("error:reservation");
			e.printStackTrace();
		}
		
		return res;
	}

	//search 사진 가져오기
	public Map<Integer,Object> picture(int[] seq_intro) {
		
		List<String> resmapper = new ArrayList<String>();
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("seq_intro", seq_intro);

		Map<Integer,Object> res = new HashMap<Integer,Object>();
		try {
			for(int i =0 ; i<seq_intro.length;i++) {
				resmapper = sqlSession.selectList(NAMESPACE+"picture",seq_intro[i]);
				
				res.put(seq_intro[i], resmapper);
			}
		} catch (Exception e) {
			System.out.println("error: picture");
			e.printStackTrace();
		}
		
		return res;
	}


	//detail 사진 가져오기
	public List<String> onePicture(int seq_intro) {

		List<String> res = new ArrayList<String>();
		
		try {
			res = sqlSession.selectList(NAMESPACE+"picture",seq_intro);
		} catch (Exception e) {
			System.out.println("error: onePicture");
			e.printStackTrace();
		}
		
		return res;
	}





	
}
