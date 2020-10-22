package com.mvc.Final.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.Final.model.dao.TravelmateDaoImpl;
import com.mvc.Final.model.dto.LoginDto;
import com.mvc.Final.model.dto.RoomReservationDto;
import com.mvc.Final.model.dto.RoomTotalDto;

@Service
public class TravelmateBizImpl {
	
	@Autowired
	private TravelmateDaoImpl tmdao;
	
	public List<RoomTotalDto> selectList() {
		return tmdao.selectList();
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


}
