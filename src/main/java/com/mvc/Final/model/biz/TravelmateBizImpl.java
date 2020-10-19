package com.mvc.Final.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.Final.model.dao.TravelmateDao;
import com.mvc.Final.model.dto.ReservationDto;
import com.mvc.Final.model.dto.TravelmateDto;

@Service
public class TravelmateBizImpl implements TravelmateBiz{
	
	@Autowired
	private TravelmateDao tmdao;

	/*
	 * @Override public List<TravelmateDto> selectList() {
	 * 
	 * return dao.selectList(); }
	 */
	
	/*
	 * @Override public int countBoard() { return mapper.countBoard(); }
	 */
	
	@Override
	public List<TravelmateDto> selectList() {
		return tmdao.travelmatelist();
	}

}
