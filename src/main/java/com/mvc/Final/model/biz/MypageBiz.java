package com.mvc.Final.model.biz;

import java.util.List;

import com.mvc.Final.model.dto.HostDto;
import com.mvc.Final.model.dto.RequireDto;
import com.mvc.Final.model.dto.ReservationDto;

public interface MypageBiz {
	public List<HostDto> selectHost();
	public List<HostDto> selectHostChk();
	public List<RequireDto> selectRequire();
	public List<ReservationDto> selectReservation(String login);
}
