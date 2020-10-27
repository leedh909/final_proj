package com.mvc.Final.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.Final.model.dto.LoginDto;
import com.mvc.Final.model.dto.RoomReservationDto;
import com.mvc.Final.model.dto.RoomTotalDto;
import com.mvc.Final.model.dto.Rooms_photoDto;

@Repository
public class TravelmateDaoImpl {

	String NAMESPACE="travelmate.";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//mate 'y'인 room정보 
		public List<RoomTotalDto> selectList() {

			List<RoomTotalDto> tmdto = new ArrayList<RoomTotalDto>();
			
			try {
				tmdto = sqlSession.selectList(NAMESPACE+"travelmateList"); //mapper의 id와 일치시켜야함
			} catch (Exception e) {
				System.out.println("error: travelmatelist");
				e.printStackTrace();
			}
			
			return tmdto;
		}

		public RoomTotalDto mateDetail(int seq_rm) {
			RoomTotalDto tmddto = new RoomTotalDto();
			
			try {
				tmddto=sqlSession.selectOne(NAMESPACE+"mateDetail", seq_rm);
			} catch (Exception e) {
				System.out.println("[ERROR]: Travelmatedetaillist");
				e.printStackTrace();
			}
			return tmddto;
		}

		//예약 정보 가져오기
		public RoomReservationDto reservation(int seq_re) {
			RoomReservationDto res = new RoomReservationDto();
			
			try {
				res = sqlSession.selectOne(NAMESPACE+"reservation",seq_re);
			} catch (Exception e) {
				System.out.println("error: reservation");
				e.printStackTrace();
			}
			
			return res;
		}

		public LoginDto memberInfo(int seq_m) {
			LoginDto res= new LoginDto();
			
			try {
				res=sqlSession.selectOne(NAMESPACE+"memberInfo",seq_m);
			} catch (Exception e) {
				System.out.println("error: memberInfo");
				e.printStackTrace();
			}
			
			return res;
		}

		/*
		 * public Rooms_photoDto matePhoto(int seq_intro) { Rooms_photoDto res=new
		 * Rooms_photoDto();
		 * 
		 * try { res=sqlSession.selectOne(NAMESPACE+"mateDetail",seq_intro); } catch
		 * (Exception e) { System.out.println("error: photo"); e.printStackTrace(); }
		 * 
		 * return res; }
		 */
}
