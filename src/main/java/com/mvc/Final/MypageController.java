package com.mvc.Final;

import java.io.FileNotFoundException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.util.WebUtils;

import com.mvc.Final.model.biz.LoginBiz;
import com.mvc.Final.model.biz.MypageBiz;
import com.mvc.Final.model.dto.LoginDto;

@Controller
public class MypageController {
	
private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private LoginBiz lbiz;
	
	@Autowired
	private MypageBiz mbiz;
	
	@RequestMapping("/mypage.do")
	public String mypage(Model model, HttpSession session, HttpServletRequest request) {
		logger.info("MyPage");
		String login = ((LoginDto)session.getAttribute("login")).getId();
		System.out.println("login mypage:"+login);
		
		String path="\\storage\\profile";
	
		System.out.println("저장된 파일 경로: "+path);
		String filename = login+"image.jpg";

		//ADMIN의 데이터
		model.addAttribute("hclist",mbiz.selectHostChk());
		model.addAttribute("hlist",mbiz.selectHost());
		model.addAttribute("rqlist",mbiz.selectRequire());
		
		//Guest의 데이터
		model.addAttribute("relist",mbiz.selectReservation(login));
		model.addAttribute("profile",path+"\\"+filename);
		
		return "mypage";
	}
	
	@RequestMapping("/hostpage.do")
	public String hostpage(Model model,HttpSession session) {
		logger.info("HostPage");
		String login = ((LoginDto)session.getAttribute("login")).getId();
		Date today = new Date();
		
		//예약자현황
		model.addAttribute("relist",mbiz.selectReservation_host(login));
		model.addAttribute("today",today);
		model.addAttribute("host",mbiz.host(login));
		
		return "hostpage";
	}
	
	@RequestMapping("/approve.do")
	public String approve(int seq_h) {
		logger.info("Approve");
		int res = mbiz.approve(seq_h);
		if(res>0) {
			return "redirect:mypage.do";
		}else {
			return "redirect:mypage.do";
		}
	}
	
	@RequestMapping("/hdelete.do")
	public String hdelete(int seq_h) {
		logger.info("HOST Delete");
		System.out.println("seq_h: "+seq_h);
		int res = mbiz.hdelete(seq_h);
		System.out.println("res: "+res);
		if(res>0) {
			return "redirect:mypage.do";
		}else {
			return "redirect:mypage.do";
		}
		
	}
	
	@RequestMapping("/profileupdate.do")
	public String profileupdate(LoginDto ldto) {
		logger.info("ProfileUpdate");
		System.out.println("ldto결과: "+ldto.toString());
		int res = mbiz.profileupdate(ldto);
		
		if(res>0) {
			return "redirect:mypage.do";
		}else {
			return "redirect:mypage.do";
		}
	}
	
	
}
