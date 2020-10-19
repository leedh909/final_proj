package com.mvc.Final.model.biz;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.Final.model.dao.ChatDao;
import com.mvc.Final.model.dto.ChatDto;

@Service
public class ChatBiz {

	@Autowired
	private ChatDao dao;
	
	public List<ChatDto> getChatListByID(String fromID, String toID, String chatID) {
		return dao.getChatListByID(fromID, toID, chatID);
	}
	
	public List<ChatDto> getChatListByRecent(String fromID, String toID, String chatID, int number) {
		return dao.getChatListByRecent(fromID, toID, number);
	}
	
	public int submit(String fromID, String toID, String chatContent) {
		return dao.submit(fromID, toID, chatContent);
	}
	
	public String getTen(String fromID, String toID) {
		
		StringBuffer result = new StringBuffer("");
		result.append("{\"result\":[");
		List<ChatDto> chatList = dao.getChatListByRecent(fromID, toID,100);
		
		if(chatList.size() == 0) return "";
		
		for(int i=0;i<chatList.size();i++) {
			result.append("[{\"value\": \"" + chatList.get(i).getFromID()+"\"},");
			result.append("{\"value\": \"" + chatList.get(i).getToID()+"\"},");
			result.append("{\"value\": \"" + chatList.get(i).getChatContent()+"\"},");
			result.append("{\"value\": \"" + chatList.get(i).getChatTime()+"\"}]");
			if(i != chatList.size() -1) result.append(",");
		}
		result.append("], \"last\":\"" + chatList.get(chatList.size() - 1).getChatID() + "\"}");
		dao.readChat(fromID, toID);
		return result.toString();
	}
	
	public String getID(String fromID, String toID, String chatID) {
		
		StringBuffer result = new StringBuffer("");
		result.append("{\"result\":[");
		List<ChatDto> chatList = dao.getChatListByID(fromID, toID, chatID);
		
		if(chatList.size() == 0) return "";
		
		for(int i=0;i<chatList.size();i++) {
			result.append("[{\"value\": \"" + chatList.get(i).getFromID()+"\"},");
			result.append("{\"value\": \"" + chatList.get(i).getToID()+"\"},");
			result.append("{\"value\": \"" + chatList.get(i).getChatContent()+"\"},");
			result.append("{\"value\": \"" + chatList.get(i).getChatTime()+"\"}]");
			if(i != chatList.size() -1) result.append(",");
		}
		result.append("], \"last\":\"" + chatList.get(chatList.size() - 1).getChatID() + "\"}");
		dao.readChat(fromID, toID);
		return result.toString();
	}
	
	public int getAllUnreadChat(String userID) {
		
		return dao.getALLUnreadChat(userID);
	}
	
	public String getBox(String userID) {
		
		StringBuffer result = new StringBuffer("");
		result.append("{\"result\":[");
		List<ChatDto> chatList = dao.getBox(userID);
		
		if(chatList.size() == 0) return "";
		
		for(int i = chatList.size() -1 ; i >=0 ; i--) {
			String unread="";
			if(userID.equals(chatList.get(i).getToID())) {
				unread = dao.getUnreadChat(chatList.get(i).getFromID(), userID)+"";
				if(unread.equals("0")) unread = "";
			}
			result.append("[{\"value\": \"" + chatList.get(i).getFromID()+"\"},");
			result.append("{\"value\": \"" + chatList.get(i).getToID()+"\"},");
			result.append("{\"value\": \"" + chatList.get(i).getChatContent()+"\"},");
			result.append("{\"value\": \"" + chatList.get(i).getChatTime()+"\"},");
			result.append("{\"value\": \"" + unread+"\"}]");
			if(i != 0) result.append(",");
		}
		result.append("], \"last\":\"" + chatList.get(0).getChatID() + "\"}");
		return result.toString();
	}
	
	
	
}
