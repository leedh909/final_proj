package com.mvc.Final;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mvc.Final.model.biz.LoginBiz;
import com.mvc.Final.model.biz.MypageBiz;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private LoginBiz lbiz;
	
	@Autowired
	private MypageBiz mbiz;
	
	
	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("START MAIN", locale);
		return "mainview";
	}
	
	@RequestMapping("/againlogin.do")
	public String againlogin() {
		logger.info("AgainLogin");
		return "againlogin";
	}
	
	@RequestMapping("/mypage.do")
	public String mypage(Model model) {
		logger.info("MyPage");
		
		model.addAttribute("hclist",mbiz.selectHostChk());
		model.addAttribute("hlist",mbiz.selectHost());
		model.addAttribute("rqlist",mbiz.selectRequire());
		return "mypage";
	}
	
	@RequestMapping("/hostpage.do")
	public String hostpage() {
		logger.info("HostPage");
		return "hostpage";
	}
	
	@RequestMapping("/travelmate.do")
	public String travelmate() {
		logger.info("TravelMate");
		return "travelmate";
	}
}
