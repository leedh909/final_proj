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
import org.springframework.web.servlet.ModelAndView;

import com.mvc.Final.model.biz.SearchBiz;
import com.mvc.Final.model.biz.TravelmateBizImpl;
import com.mvc.Final.model.dto.LoginDto;
import com.mvc.Final.model.dto.Paging;
import com.mvc.Final.model.dto.Pager;
import com.mvc.Final.model.dto.RoomReservationDto;
import com.mvc.Final.model.dto.RoomTotalDto;
import com.mvc.Final.model.dto.Rooms_photoDto;
import com.mvc.Final.model.dto.SearchOption;

@Controller
public class TravelmateController {

	private static final Logger logger = LoggerFactory.getLogger(TravelmateController.class);


	@Autowired
	private TravelmateBizImpl tmbiz;
	
	@Autowired
	private SearchBiz sbiz;
	
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
		
		//숙소 사진
		//int seq_intro = re.getSeq_rm();
		//Rooms_photoDto photoinfo = tmbiz.matePhoto(seq_intro);
		
		String[] detail = roominfo.getDetail().toString().split(",");
	    String[] facility = roominfo.getFacility().toString().split(",");
	    String[] safety = roominfo.getSafety().toString().split(",");
	    String[] rule = roominfo.getRule().toString().split(",");
	    
	    
	    //결과값이 안나올때 콘솔에 출력해주는 습관을 갖자
	    //for(int i=0;i<detail.length;i++) {
	    //	System.out.println("detail"+i+ ": "+detail[i]);
	    //}
	    model.addAttribute("tmddto",roominfo);
		model.addAttribute("mateInfo",mateInfo);
		model.addAttribute("detail",detail);
		model.addAttribute("facility",facility);
		model.addAttribute("safety",safety);
		model.addAttribute("rule",rule);
		model.addAttribute("re",re);
		//model.addAttribute("photoinfo",photoinfo);
		
		return "travelmatedetail";
	}
	
	/*
	 * @RequestMapping("/matesearch.do") public String search(SearchOption
	 * searchO, @RequestParam(defaultValue="1") int curPage,Model model) { //검색 된
	 * 게시물 개수 int count = biz.count(searchO); //페이지 나누기 관련 처리 Paging pager = new
	 * Paging(count, curPage); int start = pager.getPageBegin(); int end =
	 * pager.getPageEnd(); searchO.setStart(start); searchO.setEnd(end); //검색조건에 맞는
	 * 호스트 등록된 숙소정보, 세부사항 List<RoomTotalDto> searchList = biz.search(searchO);
	 * 
	 * //검색 리스트 숙소사진 가져오기 for(int i=0 ; i<searchList.size(); i++) {
	 * 
	 * }
	 * 
	 * model.addAttribute("searchList", searchList);
	 * model.addAttribute("searchOption",searchO);
	 * model.addAttribute("count",count); model.addAttribute("pager", pager);
	 * 
	 * return "travelmate"; }
	 */
	
	/*
	 * @RequestMapping("/matelist.do") public ModelAndView
	 * matelist(@RequestParam(defaultValue="1") int curPage,
	 * 
	 * @RequestParam(defaultValue="all") String search_option,
	 * 
	 * @RequestParam(defaultValue="") String keyword)throws Exception{ int
	 * count=1000; //레코드갯수 Pager pager=new Pager(count,curPage); int
	 * start=pager.getPageBegin(); int end=pager.getPageEnd(); List<RoomTotalDto>
	 * roomList = new ArrayList<RoomTotalDto>(); roomList = tmbiz.selectList();
	 * //mate 정보
	 * 
	 * 
	 * return "A";
	 * 
	 * }
	 */


}
