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
public class RoomsController {
	
	private static final Logger logger = LoggerFactory.getLogger(RoomsController.class);

	@RequestMapping("/rooms.do")
	public String rooms() {
		return "rooms";
	}
	
	@RequestMapping("/rooms2.do")
	public String rooms2() {
		return "rooms2";
	
	}
	@RequestMapping("/rooms3.do")
	public String rooms3() {
		return "rooms3";
	
	}
	@RequestMapping("/rooms4.do")
	public String rooms4() {
		return "rooms4";
	
	}
	@RequestMapping("/rooms5.do")
	public String rooms5() {
		return "rooms5";
	
	}
	@RequestMapping("/rooms6.do")
	public String rooms6() {
		return "rooms6";
	
	}
}

