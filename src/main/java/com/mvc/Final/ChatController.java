package com.mvc.Final;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mvc.Final.model.biz.ChatBiz;
import com.mvc.Final.model.biz.LoginBiz;
import com.mvc.Final.model.dto.ChatDto;

@Controller
public class ChatController {

private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private ChatBiz cbiz;
	
	@Autowired
	private LoginBiz lbiz;
	
	
	@RequestMapping("/chat.do")
	public String chat2(Model model, String toID) {
		logger.info("Chat");
		System.out.println("chat.do 의 toID: "+toID);
		model.addAttribute("toID",toID);
		return "chat";
	}
	
	@RequestMapping("/find.do")
	public String find() {
		logger.info("Find");
		return "find";
	}
	
	@RequestMapping("/box.do")
	public String box() {
		logger.info("Box");
		return "box";
	}
	
	@ResponseBody
	@RequestMapping(value="/chatsubmit.do", produces="application/text; charset=utf8")
	public int Chatsubmit(Model model,String fromID, String toID, String chatContent) {
		logger.info("ChatSubmit");
		List<ChatDto> chatList = null;
		int result =0;
		
		if(fromID== null||fromID.equals("")||toID==null||toID.equals("")||chatContent==null||chatContent.equals("")) {
			return 0;
		}else if(fromID.equals(toID)) {
			return -1;
		}
		else {
			try {
				fromID=URLDecoder.decode(fromID,"UTF-8");
				toID=URLDecoder.decode(toID,"UTF-8");
				chatContent=URLDecoder.decode(chatContent,"UTF-8");
				
				result = cbiz.submit(fromID, toID, chatContent);
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/chatlist.do", produces="application/text; charset=utf8")
	public String Chatlist(String fromID, String toID, String listType) {
		logger.info("ChatList");
		
		if(fromID== null||fromID.equals("")||toID==null||toID.equals("")||listType==null||listType.equals("")) {
			return "";
		}else if(listType.equals("ten")) {
			try {
				fromID = URLDecoder.decode(fromID,"UTF-8");
				toID = URLDecoder.decode(toID,"UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
			
			return cbiz.getTen(fromID, toID);
		}else {
			try {
				fromID = URLDecoder.decode(fromID,"UTF-8");
				toID = URLDecoder.decode(toID,"UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
			return cbiz.getID(fromID, toID, listType);
		}
		
	}
	
	
	@ResponseBody
	@RequestMapping("/UserRegisterCheck.do")
	public int UserRegisterCheck(String userID) {
		logger.info("UserRegister");
		
		String res = lbiz.idchk(userID);
		
		if(res== null||res.equals("")) {
			return -1;
		}
		
		return 0;
	}
	
	@ResponseBody
	@RequestMapping("/chatUnread.do")
	public int ChatUnread(String userID) {
		
		if(userID == null || userID.equals("")) {
			return 0;
		}else {
			try {
				userID = URLDecoder.decode(userID,"UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
			return cbiz.getAllUnreadChat(userID);
		}
		
	}
	
	@ResponseBody
	@RequestMapping(value="/chatbox.do", produces="application/text; charset=utf8")
	public String ChatBox(String userID) {
		if(userID == null || userID.equals("")) {
			return "";
		}else {
			try {
				userID = URLDecoder.decode(userID,"UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
			return cbiz.getBox(userID);
		}
		
	}
	
	
	
}
