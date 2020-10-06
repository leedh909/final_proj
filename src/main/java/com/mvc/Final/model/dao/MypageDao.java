package com.mvc.Final.model.dao;

import java.util.List;

import com.mvc.Final.model.dto.HostDto;
import com.mvc.Final.model.dto.LoginDto;
import com.mvc.Final.model.dto.RequireDto;
import com.mvc.Final.model.dto.ReservationDto;

public interface MypageDao {

	String NAMESPACE = "mypage.";
	
	public List<HostDto> selectHost();
	public List<HostDto> selectHostChk();
	public List<RequireDto> selectRequire();
	public List<ReservationDto> selectReservation(String login);
	public List<ReservationDto> selectReservation_host(String login);
	public String host(String login);
	public int approve(int seq_h);
	public String email(int seq_m);
	public int hdelete(int seq_h);
	public int profileupdate(LoginDto ldto);
	public int mp_profileupdate(LoginDto ldto);
	
}
