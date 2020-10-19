package com.mvc.Final;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mvc.Final.model.biz.TravelmateBiz;

@Controller
public class TravelmateController {

	private static final Logger logger = LoggerFactory.getLogger(TravelmateController.class);

	@Autowired
	private TravelmateBiz tmbiz;
	
	@RequestMapping("/travelmatedetail.do")
	public String travelmatedetail() {
		logger.info("Travelmatedetail");
		return "travelmatedetail";
	}

	@RequestMapping("/travelmate.do")
	public String travelmate(Model model) {
		logger.info("Travelmate");
		
		model.addAttribute("tmlist",tmbiz.selectList());
		
		return "travelmate";

	}
	
	






}
