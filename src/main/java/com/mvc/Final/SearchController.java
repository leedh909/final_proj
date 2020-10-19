package com.mvc.Final;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mvc.Final.model.biz.SearchBiz;
import com.mvc.Final.model.dto.LoginDto;
import com.mvc.Final.model.dto.Paging;
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
	public String search(SearchOption searchO, @RequestParam(defaultValue="1") int curPage,Model model) {
		//검색  된 게시물 개수 
		int count = biz.count(searchO);
		//페이지 나누기 관련 처리
		System.out.println(count+","+curPage);
		Paging pager = new Paging(count, curPage);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		searchO.setStart(start);
		searchO.setEnd(end);
		//검색조건에 맞는 호스트 등록된 숙소정보, 세부사항 
		List<RoomTotalDto> searchList = biz.search(searchO);
		
		//검색 리스트 숙소사진 가져오기
		for(int i=0 ; i<searchList.size(); i++) {
			
		}
		
		model.addAttribute("searchList", searchList);
		model.addAttribute("searchOption",searchO);
		model.addAttribute("count",count);
		model.addAttribute("pager", pager);
		return "room_search";
	}
	
	@RequestMapping("/room_detail.do")
	public String room_detail(int seq_rm,SearchOption searchO, Model model) {
		
		//숙소 정보 가지고 오기
		RoomTotalDto roomInfo =  biz.roomInfo(seq_rm);
		
		System.out.println(roomInfo.getDetail().getDesk());
		
		String[] detail = roomInfo.getDetail().toString().split(",");
		String[] facility = roomInfo.getFacility().toString().split(",");
		String[] safety = roomInfo.getSafety().toString().split(",");
		String[] rule = roomInfo.getRule().toString().split(",");
		
		//숙소 예약 날짜 가져오기 
		Map<String,Object> booked =  biz.reservationDate(seq_rm);
		System.out.println(booked.get("indate"));
		//호스트 정보가지고오기 
		int hostNum = roomInfo.getRoom().getSeq_h();
		LoginDto hostInfo = biz.memberInfo(hostNum);
		
		//숙소 사진 가지고 오기
		
		//넘겨줄 값 model에 저장
		model.addAttribute("searchOption", searchO);
		model.addAttribute("detail",detail);
		model.addAttribute("facility",facility);
		model.addAttribute("safety", safety);
		model.addAttribute("rule", rule);
		model.addAttribute("roomInfo",roomInfo);
		model.addAttribute("hostInfo",hostInfo);
		model.addAttribute("booked",booked);
		
		return "room_detail";
	}
	
	@RequestMapping("/pay.do")
	public String pay(Model model, RoomReservationDto reservation,HttpSession session) {
		//숙소정보 가져오기
		RoomsDto room = biz.room(reservation.getSeq_rm());
		
		//박수 구하기 
		String in = reservation.getCheck_in();
		String out = reservation.getCheck_out();
		int night = calDate(in,out);
		
		//총 가격 계산하기 
		String totalPrice = Integer.toString(night*room.getPrice());
		reservation.setTotalPrice(totalPrice);
		
		//계산 부분
		String calculate = "₩"+String.format("%,d",room.getPrice())+" x "+night+"박";
		
		//예약자 회원 정보 
		LoginDto login = ((LoginDto)session.getAttribute("login"));
		
		model.addAttribute("calcul",calculate);
		model.addAttribute("room",room);
		model.addAttribute("reservation",reservation);
		model.addAttribute("member",login);
		return "payment";
	}
	
	private int calDate(String in, String out) {
		LocalDate inDate = LocalDate.parse(in,DateTimeFormatter.ISO_DATE);
		LocalDate outDate = LocalDate.parse(out,DateTimeFormatter.ISO_DATE);
		
		int days = (int) ChronoUnit.DAYS.between(inDate, outDate);
		
		return days;
	}

	@RequestMapping(value="/ajaxmate.do", method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Boolean> ajaxmate(Model model,@RequestBody RoomReservationDto reservDto) {
		//결제 성공시 travelmate에 데이터 저장
		int res = biz.reservation(reservDto);
		boolean check = false;
		
		if(res > 0) {
			check=true;
		}
		
		Map<String,Boolean> map = new HashMap<String,Boolean>();
		map.put("check", check);
		return map;
	}
}
