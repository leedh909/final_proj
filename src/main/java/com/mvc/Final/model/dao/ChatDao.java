package com.mvc.Final.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.Final.model.dto.ChatDto;

@Repository
public class ChatDao {
	
	String NAMESPACE = "chat.";

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	public List<ChatDto> getChatListByID(String fromID, String toID, String chatID) {

		List<ChatDto> chatList = new ArrayList<ChatDto>();
		
		ChatDto cdto = new ChatDto();
		cdto.setFromID(fromID);
		cdto.setToID(toID);
		cdto.setChatID(Integer.parseInt(chatID));

		try {
			chatList = sqlSession.selectList(NAMESPACE + "chatList",cdto);
			
			for(int i=0; i<chatList.size(); i++) {
				int chatTime = Integer.parseInt(chatList.get(i).getChatTime().substring(11,13));
				String timeType="오전";
				
				if(chatTime >= 12) {
					timeType ="오후";
					chatTime -= 12;
				}
				chatList.get(i).setChatTime(chatList.get(i).getChatTime().substring(0,11)+" "+timeType+" "+chatTime+":"+chatList.get(i).getChatTime().substring(14,16)+"");
			}
			
		} catch (Exception e) {
			System.out.println("error: chatlist");
			e.printStackTrace();
		} 
		return chatList;
	}
	
	public List<ChatDto> getChatListByRecent(String fromID, String toID, int number) {

		List<ChatDto> chatList = new ArrayList<ChatDto>();
		
		Map<Object, Object > map = new HashMap<Object,Object>();
		map.put("fromID", fromID);
		map.put("toID", toID);
		map.put("number", number);

		try {
			chatList = sqlSession.selectList(NAMESPACE + "chatList2",map);
			
			for(int i=0; i<chatList.size(); i++) {
				int chatTime = Integer.parseInt(chatList.get(i).getChatTime().substring(11,13));
				String timeType="오전";
				
				if(chatTime >= 12) {
					timeType ="오후";
					chatTime -= 12;
				}
				chatList.get(i).setChatTime(chatList.get(i).getChatTime().substring(0,11)+" "+timeType+" "+chatTime+":"+chatList.get(i).getChatTime().substring(14,16)+"");
			}
			
		} catch (Exception e) {
			System.out.println("error: chatlist2");
			e.printStackTrace();
		} 
		return chatList;
	}
	
	
	public int submit(String fromID, String toID, String chatContent) {
		
		int result = 0;
		
		Map<String, Object > map = new HashMap<String,Object>();
		map.put("fromID", fromID);
		map.put("toID", toID);
		chatContent = chatContent.replaceAll(" ", "&nbsp;").replaceAll("\n","<br>");
		map.put("chatContent", chatContent);

		try {
			result = sqlSession.insert(NAMESPACE + "chat_insert",map);
			
		} catch (Exception e) {
			System.out.println("error: chat_insert");
			e.printStackTrace();
		} 
		return result;
		
		
	}

	public int readChat(String fromID, String toID) {
		
		int result = 0;
		Map<String, Object > map = new HashMap<String,Object>();
		map.put("fromID", fromID);
		map.put("toID", toID);

		try {
			result = sqlSession.update(NAMESPACE+"chat_read",map);
		} catch (Exception e) {
			System.out.println("error: chat_insert");
			e.printStackTrace();
		} 
		return result;
	}
	
	public int getALLUnreadChat(String userID) {
		
		int result = 0;

		try {
			result = sqlSession.selectOne(NAMESPACE+"chat_unread_all", userID);
		} catch (Exception e) {
			System.out.println("error: chat_unread_all");
			e.printStackTrace();
		} 
		
		return result;
	}
	
	public List<ChatDto> getBox(String userID) {

		List<ChatDto> chatList = new ArrayList<ChatDto>();
		
		Map<Object, Object > map = new HashMap<Object,Object>();
		map.put("userID", userID);

		try {
			chatList = sqlSession.selectList(NAMESPACE + "chat_box",map);
			
			for(int i=0; i<chatList.size(); i++) {
				int chatTime = Integer.parseInt(chatList.get(i).getChatTime().substring(11,13));
				String timeType="오전";
				
				if(chatTime >= 12) {
					timeType ="오후";
					chatTime -= 12;
				}
				chatList.get(i).setChatTime(chatList.get(i).getChatTime().substring(0,11)+" "+timeType+" "+chatTime+":"+chatList.get(i).getChatTime().substring(14,16)+"");
			}
			
			for(int i=0; i<chatList.size();i++) {
				ChatDto cdto = chatList.get(i);
				for(int j=0; j<chatList.size();j++) {
					ChatDto cdto2 = chatList.get(j);
					if(cdto.getFromID().equals(cdto2.getToID()) && cdto.getToID().equals(cdto2.getFromID())) {
						if(cdto.getChatID() < cdto2.getChatID()) {
							chatList.remove(cdto);
							i--;
							break;
						}else {
							chatList.remove(cdto2);
							j--;
						}
					}
				}
			}
			
		} catch (Exception e) {
			System.out.println("error: chatlist2");
			e.printStackTrace();
		} 
		return chatList;
	}
	
	public int getUnreadChat(String fromID, String toID) {
		
		int result = 0;
		
		Map<Object,Object > map = new HashMap<Object,Object>();
		map.put("fromID", fromID);
		map.put("toID", toID);
		
		try {
			result = sqlSession.selectOne(NAMESPACE+"chat_unread", map);
		} catch (Exception e) {
			System.out.println("error: chat_unread");
			e.printStackTrace();
		} 
		
		return result;
	}
	
}
