package com.mvc.Final;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mvc.Final.model.biz.SearchBiz;
import com.mvc.Final.model.dto.LoginDto;
import com.mvc.Final.model.dto.RoomReservationDto;
import com.mvc.Final.model.dto.RoomTotalDto;
import com.mvc.Final.model.dto.RoomsDto;
import com.mvc.Final.model.dto.SearchOption;

@Controller
public class SearchController {

	private static final Logger logger = LoggerFactory.getLogger(SearchController.class);
	
	@Autowired
	private SearchBiz biz;
	
	@RequestMapping("/search.do")
	public String search(SearchOption searchO,@RequestParam(defaultValue="1") int curPage, Model model) {
		//검색조건에 맞는 호스트 등록된 숙소정보, 세부사항 
		List<RoomTotalDto> searchList = biz.search(searchO);
		
		//검색 리스트 숙소사진 가져오기
		for(int i=0 ; i<searchList.size(); i++) {
			
		}
		
		model.addAttribute("searchList", searchList);
		model.addAttribute("searchOption",searchO);
		
		return "room_search";
	}
	
	@RequestMapping("/room_detail.do")
	public String room_detail(int seq_rm,SearchOption searchO, Model model) {
		
		//숙소 정보 가지고 오기
		RoomTotalDto roomInfo = new RoomTotalDto();
		roomInfo = biz.roomInfo(seq_rm);
		
		//호스트 정보가지고오기 
		int hostNum = roomInfo.getRoom().getSeq_h();
		LoginDto hostInfo = biz.hostInfo(hostNum);
		
		//숙소 사진 가지고 오기
		
		//넘겨줄 값 model에 저장
		model.addAttribute("searchOption", searchO);
		model.addAttribute("roomInfo",roomInfo);
		model.addAttribute("hostInfo",hostInfo);
		return "room_detail";
	}
	
	@RequestMapping("/pay.do")
	public String pay(Model model, RoomReservationDto reservation) {
		
		
		model.addAttribute("reservation",reservation);
		return "payment";
	}
	
	@RequestMapping("/paysucess.do")
	public String sucess(Model model,RoomReservationDto reservation ) {
		
		return "redirect:main.do";
	}
}
