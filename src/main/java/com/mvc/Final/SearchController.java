package com.mvc.Final;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mvc.Final.model.biz.SearchBiz;
import com.mvc.Final.model.dto.SearchOption;

@Controller
public class SearchController {

	private static final Logger logger = LoggerFactory.getLogger(SearchController.class);
	
	@Autowired
	private SearchBiz searchB;
	
	@RequestMapping("/search.do")
	public String search(SearchOption searchO,@RequestParam(defaultValue="1") int curPage, Model model) {
		
		int count = searchB.countRoom(searchO);
		
		
		return "room_search";
	}
	
	@RequestMapping("/room_detail.do")
	public String room_detail() {
		
		return "room_detail";
	}
	
	@RequestMapping("/pay.do")
	public String pay() {
		return "payment";
	}
}
