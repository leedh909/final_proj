
package com.mvc.Final;

import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mvc.Final.model.biz.MainviewBiz;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private MainviewBiz mvbiz;
	
	
	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("START MAIN", locale);
		
	
		//Guest의 데이터
		model.addAttribute("mateList",mvbiz.mateList());
		model.addAttribute("placeList",mvbiz.placeList());
		
		
		return "main";
	}
	
	@RequestMapping("/againlogin.do")
	public String againlogin() {
		logger.info("AgainLogin");
		return "againlogin";
	}
	
	
	@RequestMapping("/aboutAzanda.do")
	public String aboutAzanda() {
		logger.info("About Azanda");
		return "aboutAzanda";
	}
	@RequestMapping("/HowToHosting.do")
	public String howToHosting() {
		logger.info("How to Hosing");
		return"HowToHosting";
	}
	
	@RequestMapping("/becomeHost.do")
	public String becomeHost() {
		logger.info("becomeHost");
		return "becomeHost";	
	}
	@RequestMapping("/income.do")
	public String income() {
		logger.info("Income");
		return "income";
	}
	@RequestMapping("/refundPolicy.do")
	public String refundPolicy() {
		logger.info("Refund Policy");
		return "refundPolicy";
	}
	
	@RequestMapping("/contactus.do")
	public String contactUs() {
		logger.info("Contact Us");
		return "contactus";
	}
	@RequestMapping("/whatistravelmate.do")
	public String whatIsTravelMate() {
		logger.info("What is travel mate");
		return "whatIsTravelMate";
	}
	
}

	

	
	

