package com.mvc.Final;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mvc.Final.model.biz.TravelmateBizImpl;
import com.mvc.Final.model.dto.LoginDto;
import com.mvc.Final.model.dto.RoomReservationDto;
import com.mvc.Final.model.dto.RoomTotalDto;

@Controller
public class TravelmateController {

	private static final Logger logger = LoggerFactory.getLogger(TravelmateController.class);


	@Autowired
	private TravelmateBizImpl tmbiz;
	
	@RequestMapping("/travelmate.do")
	public String travelmate(Model model) {
		logger.info("Travelmate");
		
		//mate 'Y' 인 roomlist 가져오기
		List<RoomTotalDto> roomList = new ArrayList<RoomTotalDto>();
		roomList = tmbiz.selectList();
		//mate 정보 
		
		model.addAttribute("tmlist",roomList);
		
		return "travelmate";

	}
	

	@RequestMapping("/travelmatedetail.do")
	public String travelmatedetail(Model model, int seq_re) {
		logger.info("Travelmatedetaillist");
		//예약정보 
		RoomReservationDto re = tmbiz.reservation(seq_re);
		
		//travelmate 정보 
		int seq_m = re.getSeq_m();
		LoginDto mateInfo = tmbiz.memberInfo(seq_m); 
		
		//숙소 정보
		int seq_rm = re.getSeq_rm();
		RoomTotalDto roominfo = tmbiz.mateDetail(seq_rm);
		
		
		String[] detail = roominfo.getDetail().toString().split(",");
	    String[] facility = roominfo.getFacility().toString().split(",");
	    String[] safety = roominfo.getSafety().toString().split(",");
	    String[] rule = roominfo.getRule().toString().split(",");

	    model.addAttribute("tmddto",roominfo);
		model.addAttribute("mateInfo",mateInfo);
		model.addAttribute("detail",detail);
		model.addAttribute("facility",facility);
		model.addAttribute("safety",safety);
		model.addAttribute("rule",rule);
		model.addAttribute("re",re);
		
		return "travelmatedetail";

	}
	
	




}
