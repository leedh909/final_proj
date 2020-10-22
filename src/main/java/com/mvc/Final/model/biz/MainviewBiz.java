package com.mvc.Final.model.biz;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.Final.model.dao.MainviewDao;
import com.mvc.Final.model.dto.MainviewDto;

@Service
public class MainviewBiz {

	@Autowired
	private MainviewDao dao;
	
	public List<MainviewDto> placeList() {

		List<MainviewDto> mvdto = new ArrayList<MainviewDto>();
		mvdto = dao.placeList();
		
		return mvdto;
	}
	
	public List<MainviewDto> mateList(){
		
		List<MainviewDto> mvdto = new ArrayList<MainviewDto>();
		mvdto = dao.mateList();
		
		return mvdto;
	}
}
