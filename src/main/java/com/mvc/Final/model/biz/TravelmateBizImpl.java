package com.mvc.Final.model.biz;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.Final.model.dao.TravelmateDaoImpl;
import com.mvc.Final.model.dto.LoginDto;
import com.mvc.Final.model.dto.RoomReservationDto;
import com.mvc.Final.model.dto.RoomTotalDto;
import com.mvc.Final.model.dto.Rooms_photoDto;

@Service
public class TravelmateBizImpl {
	
	@Autowired
	private TravelmateDaoImpl tmdao;
	
	public List<RoomTotalDto> selectList(Map<String, String> map) {
		return tmdao.selectList(map);
	}

	public RoomReservationDto reservation(int seq_re) {
		return tmdao.reservation(seq_re);
	}

	public RoomTotalDto mateDetail(int seq_rm) {
		return tmdao.mateDetail(seq_rm);
	}

	public LoginDto memberInfo(int seq_m) {
		return tmdao.memberInfo(seq_m);
	}

	public List<String> photo(int seq_intro) {
		return tmdao.photoinfo(seq_intro);
	}
	
	

	/*
	 * public Rooms_photoDto matePhoto(int seq_intro) { return
	 * tmdao.matePhoto(seq_intro); }
	 */


}
