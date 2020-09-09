package com.mvc.Final.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.Final.model.dto.HostDto;
import com.mvc.Final.model.dto.LoginDto;
import com.mvc.Final.model.dto.RequireDto;

@Repository
public class LoginDaoImpl implements LoginDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public LoginDto login(String id, String pw) {
		
		Map<String, String> map = new HashMap<String,String>();
		map.put("id", id);
		map.put("pw", pw);
		
		LoginDto ldto = new LoginDto();
		try {
			ldto=sqlSession.selectOne(NAMESPACE+"login",map);
		} catch (Exception e) {
			System.out.println("[error] : Login");
			e.printStackTrace();
		}
		return ldto;
	}
	
	@Override
	public int registUser(LoginDto ldto) {
		
		int res = 0;
		try {
			res=sqlSession.insert(NAMESPACE+"registUser",ldto);
			System.out.println("res: "+res);
		} catch (Exception e) {
			System.out.println("[error] : RegistUser");
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public String idchk(String id) {
		
		String res = null;
		try {
			res = sqlSession.selectOne(NAMESPACE+"idchk",id);
		} catch (Exception e) {
			System.out.println("[error] : IDcheck");
			e.printStackTrace();
		}
		return res;
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
