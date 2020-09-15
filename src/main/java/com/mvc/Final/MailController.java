package com.mvc.Final;

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

import com.mvc.Final.model.biz.MypageBiz;

@Controller
public class MailController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	private MypageBiz mbiz;
	
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
}
