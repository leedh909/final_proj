package com.mvc.Final.model.biz;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.Final.model.dao.LoginDao;
import com.mvc.Final.model.dto.HostDto;
import com.mvc.Final.model.dto.LoginDto;
import com.mvc.Final.model.dto.RequireDto;

@Service
public class LoginBizImpl implements LoginBiz{

	@Autowired
	private LoginDao dao;
	
	
	@Override
	public LoginDto login(String id, String pw, HttpSession session) {

		
		LoginDto ldto = new LoginDto();
		ldto = dao.login(id, pw);
		if(ldto != null) {
			session.setAttribute("login", ldto.getId());
		}
		
		return ldto;
	}

	@Override
	public int registUser(LoginDto ldto) {
		
		return dao.registUser(ldto);
	}

	@Override
	public String idchk(String id) {
		return dao.idchk(id);
	}

	@Override
	public List<LoginDto> selectAll() {
		return null;
	}

	

	@Override
	public int deleteMem(String deleteid) {
		return 0;
	}

	

}
