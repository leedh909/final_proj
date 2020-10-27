package com.mvc.Final.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.Final.model.dto.HostDto;
import com.mvc.Final.model.dto.RoomsDto;
import com.mvc.Final.model.dto.Rooms_detailDto;
import com.mvc.Final.model.dto.Rooms_facilityDto;
import com.mvc.Final.model.dto.Rooms_introDto;
import com.mvc.Final.model.dto.Rooms_photoDto;
import com.mvc.Final.model.dto.Rooms_ruleDto;
import com.mvc.Final.model.dto.Rooms_safetyDto;

@Repository
public class RoomsDaoImpl implements RoomsDao{

	@Autowired
	private SqlSessionTemplate sqlSession;

		@Override
		public int insertrooms(RoomsDto rdto) {
			int res = 0;
			System.out.println("insert rdto seq_h: "+rdto.getSeq_h());
			 try {
				res = sqlSession.insert(NAMESPACE+"insert",rdto);
			} catch (Exception e) {
				System.out.println("[ERROR]: insert");
				e.printStackTrace();
			}
			
			return res;
		}

		@Override
		public int insertdetail(Rooms_detailDto rdetail) {
			int res = 0;
			  
			try {
				res = sqlSession.insert(NAMESPACE+"insertdetail",rdetail);
			} catch (Exception e) {
				System.out.println("[ERROR]: insertdetail");
				e.printStackTrace();
			}
			return res;
		}

		@Override
		public int insertfacility(Rooms_facilityDto rfac) {
			int res = 0;
			
			  try {
				res = sqlSession.insert(NAMESPACE+"insertfacility",rfac);
			} catch (Exception e) {
				System.out.println("[ERROR]: insertfacility");
				e.printStackTrace();
			}
			return res;
		}

		@Override
		public int insertsafety(Rooms_safetyDto rsafe) {
			int res = 0;
			
			try {
				res = sqlSession.insert(NAMESPACE+"insertsafety",rsafe);
			} catch (Exception e) {
				System.out.println("[ERROR]: insertsafety");
				e.printStackTrace();
			}
			return res;
		}

		@Override
		public int insertrule(Rooms_ruleDto rule) {
			int res = 0;
			
			try {
				res = sqlSession.insert(NAMESPACE+"insertrule", rule);
			} catch (Exception e) {
				System.out.println("[ERROR]: insertrule");
				e.printStackTrace();
			}
			return res;
		}

		@Override
		public int insertintro(Rooms_introDto intro) {
			int res = 0;
			
			try {
				res = sqlSession.insert(NAMESPACE+"insertintro", intro);
			} catch (Exception e) {
				System.out.println("[ERROR]: insertintro");
				e.printStackTrace();
			}
			
			return res;
		}

		@Override
		public int inserthost(HostDto hdto) {
			int res = 0;
			
			try {
				res = sqlSession.insert(NAMESPACE+"inserthost", hdto);
			} catch (Exception e) {
				System.out.println("[ERROR]: inserthost");
				e.printStackTrace();
			}
			return res;
		}

		@Override
		public int selecthostseq(HostDto hdto) {
			
			int res = 0;
			
			try {
				res = sqlSession.selectOne(NAMESPACE+"selecthostseq", hdto);
			} catch (Exception e) {
				System.out.println("[ERROR]: selecthostseq");
				e.printStackTrace();
			}
			
			return res;
		}

		@Override
		public int selectrooms(RoomsDto rdto) {
			int res = 0;
			
			try {
				res = sqlSession.selectOne(NAMESPACE+"selectroomsseq", rdto);
			} catch (Exception e) {
				System.out.println("[ERROR]: selectroomsseq");
				e.printStackTrace();
			}
			
			
			return res;
		}

		@Override
		public int insertphoto(Rooms_photoDto photo) {
         int res = 0;
			
			try {
				res = sqlSession.insert(NAMESPACE+"insertphoto", photo);
			} catch (Exception e) {
				System.out.println("[ERROR]: insertphoto");
				e.printStackTrace();
			}
			
			return res;
		}

		@Override
		public int selectintroseq(Rooms_introDto intro) {
		  int res = 0;
			
			try {
				res = sqlSession.selectOne(NAMESPACE+"selectintroseq", intro);
			} catch (Exception e) {
				System.out.println("[ERROR]: selectintroseq");
				e.printStackTrace();
			}
			return res;
		}
		
	
}

