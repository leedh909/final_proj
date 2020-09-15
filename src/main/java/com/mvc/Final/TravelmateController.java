package com.mvc.Final;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TravelmateController {

	private static final Logger logger = LoggerFactory.getLogger(TravelmateController.class);

	@RequestMapping("/travelmatedetail.do")
	public String travelmatedetail() {
		logger.info("Travelmatedetail");
		return "travelmatedetail";
	}



















}
