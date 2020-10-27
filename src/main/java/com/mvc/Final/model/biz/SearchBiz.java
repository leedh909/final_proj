package com.mvc.Final.model.biz;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.Final.model.dao.SearchDao;
import com.mvc.Final.model.dto.LoginDto;
import com.mvc.Final.model.dto.RoomReservationDto;
import com.mvc.Final.model.dto.RoomTotalDto;
import com.mvc.Final.model.dto.RoomsDto;
import com.mvc.Final.model.dto.Rooms_photoDto;
import com.mvc.Final.model.dto.SearchOption;

@Service
public class SearchBiz {
	
	@Autowired
	private SearchDao dao;
	
	//
	public int count(SearchOption searchO) {
		return dao.count(searchO);
	}
	//검색 조건에 맞는 숙소정보
	public List<RoomTotalDto> search(SearchOption searchO) {
		return dao.search(searchO);
	}
	//숙소정보 가지고오기
	public RoomTotalDto roomInfo(int seq_rm) {
		
		return dao.roomInfo(seq_rm);
	}
	//회원 정보(회원 번호 받았을때)
	public LoginDto memberInfo(int memberNum) {
		return dao.memberInfo(memberNum);
	}
	
	//로그인 회원 정보(session에서 가져올때 )
	public LoginDto idLogin(String loginId) {
		return dao.idLogin(loginId);
	}
	//숙소 예약된 날짜
	public Map<String,Object> reservationDate(int seq_rm){
		
		Map<String,Object> booked = new HashMap<String,Object>();
		
		List<RoomReservationDto> date = new ArrayList<RoomReservationDto>();
		date = dao.reservationDate(seq_rm);
		
		List<String> indate = new ArrayList<String>();
		List<String> outdate = new ArrayList<String>();
		
		//outdate 하루전 날짜 구해서 string 변환 후 추가
		for(int i =0; i<date.size() ;i++) {
			String s = date.get(i).getCheck_out().split(" ")[0];
			LocalDate transDate = LocalDate.parse(s,DateTimeFormatter.ISO_DATE);
			LocalDate beforeOutDate = transDate.minusDays(1);
			String Stringbefore = beforeOutDate.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));

			outdate.add(Stringbefore);
			indate.add(date.get(i).getCheck_in());
		}
		
		
		booked.put("indate", indate);
		booked.put("outdate", outdate);
		
		return booked;
	}
	
	//payment 페이지에 들어가는 숙소 정보
	public RoomsDto room(int seq_rm) {
		return dao.room(seq_rm);
	}
	
	//예약테이블 insert
	public int reservation(RoomReservationDto reservDto) {
		return dao.reservationInsert(reservDto);
	}
	
	
	//search 사진 가져오기 
	public Map<Integer, Object> picture(int[] seq_intro) {
		return dao.picture(seq_intro); 
	}
	
	//detail 사진 리스트
	public List<String> onePicture(int seq_intro) {
		return dao.onePicture(seq_intro);
	}
	
	
	
	
}
