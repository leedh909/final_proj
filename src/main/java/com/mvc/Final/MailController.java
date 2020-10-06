package com.mvc.Final;

import java.util.HashMap;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mvc.Final.model.biz.LoginBiz;
import com.mvc.Final.model.biz.MypageBiz;
import com.mvc.Final.model.dto.LoginDto;

@Controller
public class MailController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	private MypageBiz mbiz;
	
	@Autowired
	private LoginBiz lbiz;
	
	
	@RequestMapping("/mailform.do")
	public String mailForm(Model model, int seq_m) {
		logger.info("MailForm");
		model.addAttribute("email",mbiz.email(seq_m));
		return "mailform";
	}
	
	@RequestMapping("/mailSending.do")
	public String mailSending(HttpServletRequest request) {
		
		logger.info("MailSending");
		
		String setfrom = "leedh7539@gmail.com";
		String tomail = request.getParameter("tomail"); 	//받는 사람 이메일
		String title = request.getParameter("title"); 		//제목
		String content = request.getParameter("content");	//내용
		
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message,true,"UTF-8");
			
			messageHelper.setFrom(setfrom);		//보내는 사람
			messageHelper.setTo(tomail);		//받는사람 이메일
			messageHelper.setSubject(title);	//메일 제목
			messageHelper.setText(content);		//메일 내용
			
			mailSender.send(message);
			
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
		return "redirect:mypage.do";
	}
	
	
	@ResponseBody
	@RequestMapping("/find_pw.do")
	public Map<String,Object> find_pw(HttpServletRequest request, String id, String email) {
		
		logger.info("Find PW");
		
		String setfrom = "leedh7539@gmail.com";
		String tomail = email; 	//받는 사람 이메일
		String title = "Azanda. 회원님의 변경된 비밀번호를 알려드립니다."; 		//제목
		String content = "";	//내용
		
		Map<String,Object> rmap = new HashMap<String,Object>();
		
		LoginDto ldto = new LoginDto();
		String pw = "";
		for(int i =0; i<12; i++) {
			pw +=(char)((Math.random()*26)+97);
		}
		System.out.println("임시 비밀번호: "+pw);
		ldto.setId(id);
		ldto.setPw(pw);
		
		int res = lbiz.find_pw(ldto);
		if(res>0) {
			content= id+"회원님의 변경된 임시 비밀번호는 ("+pw+") 입니다.";
			
			try {
				MimeMessage message = mailSender.createMimeMessage();
				MimeMessageHelper messageHelper = new MimeMessageHelper(message,true,"UTF-8");
				
				messageHelper.setFrom(setfrom);		//보내는 사람
				messageHelper.setTo(tomail);		//받는사람 이메일
				messageHelper.setSubject(title);	//메일 제목
				messageHelper.setText(content);		//메일 내용
				
				mailSender.send(message);
				
			} catch (MessagingException e) {
				e.printStackTrace();
			}
			
			String result="성공";
			rmap.put("result", result);
			return rmap;
			
		}else {
			return null;
		}
		
		
	}
}
