package com.mvc.Final.model.biz;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.mvc.Final.model.dto.HostDto;
import com.mvc.Final.model.dto.LoginDto;
import com.mvc.Final.model.dto.RequireDto;

public interface LoginBiz {
	
	public LoginDto login(String id, String pw, HttpSession session);
	public int registUser(LoginDto ldto);
	public String idchk(String id);
	public List<LoginDto> selectAll();
	public int deleteMem(String deleteid);
	public String find_id(LoginDto ldto);
	
	
}
