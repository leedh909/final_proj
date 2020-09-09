package com.mvc.Final.model.dao;

import java.util.List;

import com.mvc.Final.model.dto.LoginDto;

public interface LoginDao {
	String NAMESPACE = "login.";
	
	public LoginDto login(String id, String pw);
	public int registUser(LoginDto ldto);
	public String idchk(String id);
	public List<LoginDto> selectAll();
	public int deleteMem(String deleteid);

	
}
