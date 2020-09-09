package com.mvc.Final;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mvc.Final.model.biz.LoginBiz;
import com.mvc.Final.model.dto.LoginDto;

@Controller
public class LoginController {
	
	private Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	private LoginBiz lbiz;
	
	
	@RequestMapping("/login.do")
	public String Login(String id, String pw, HttpSession session) {
		logger.info("Login");
		LoginDto ldto = lbiz.login(id, pw, session);
		
		if(ldto != null) {
			System.out.println("login success (" + ldto.getId() + ")");
			return "redirect:main.do";
		}else {
			return "redirect:againlogin.do";
		}
		
	}
	
	@RequestMapping("/logout.do")
	public String logOut(HttpSession session) {
		logger.info("LogOut");
		session.invalidate();
		return "redirect:main.do";
	}
	
	@RequestMapping("/registform.do")
	public String registForm() {
		logger.info("RegistForm");
		return "registform";
	}
	
	@RequestMapping("/registres.do")
	public String registRes(LoginDto ldto) {
		logger.info("RegistRes");
		System.out.println("ldto : " +ldto);
		int res = lbiz.registUser(ldto);
		System.out.println("res: "+res);
		if(res>0) {
			return "redirect:main.do";
		}else {
			return "redirect:registform.do";
		}
		
	}
	
	@RequestMapping("/idchk.do")
	public String idchk(String id,Model model) {
		
		logger.info("IDCheck");
		String res = lbiz.idchk(id);
		boolean idnotused = true;
		if(res != null) {
			idnotused = false;
		}
		model.addAttribute("idnotused", idnotused);
		return "idchk";
	}
	
	
	
	
	
	
}
