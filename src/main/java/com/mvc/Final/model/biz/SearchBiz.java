package com.mvc.Final.model.biz;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.Final.LoginController;
import com.mvc.Final.model.dao.SearchDao;
import com.mvc.Final.model.dto.LoginDto;
import com.mvc.Final.model.dto.RoomReservationDto;
import com.mvc.Final.model.dto.RoomTotalDto;
import com.mvc.Final.model.dto.SearchOption;

@Service
public class SearchBiz {
	
	@Autowired
	private SearchDao dao;
	
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
	//숙소 예약된 날짜
	public Map<String,Object> reservationDate(int seq_rm){
		
		Map<String,Object> booked = new HashMap<String,Object>();
		
		List<RoomReservationDto> date = new ArrayList<RoomReservationDto>();
		date = dao.reservationDate(seq_rm);
		
		List<String> indate = new ArrayList<String>();
		List<String> outdate = new ArrayList<String>();
		
		for(int i=0; i<date.size(); i++) {
			indate.add(date.get(i).getCheck_in());
			outdate.add(date.get(i).getCheck_out());
		}
	
		booked.put("indate", indate);
		booked.put("outdate", "outdate");
		
		return booked;
	}
}
