package com.mvc.Final.model.dao;

import java.util.List;

import com.mvc.Final.model.dto.HostDto;
import com.mvc.Final.model.dto.RequireDto;

public interface MypageDao {

	String NAMESPACE = "mypage.";
	
	public List<HostDto> selectHost();
	public List<HostDto> selectHostChk();
	public List<RequireDto> selectRequire();
	
}
