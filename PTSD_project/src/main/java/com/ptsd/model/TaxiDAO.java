package com.ptsd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ptsd.database.SqlSessionManager;
import com.ptsd.model.TaxiVO;

public class TaxiDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	private SqlSession sqlSession = null;
	
	
	public int join(TaxiVO vo) {
		int row = 0;
		try {
			sqlSession = sqlSessionFactory.openSession(true);
			row = sqlSession.insert("com.ptsd.model.TaxiDAO.taxiinsert", vo);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return row;
	}
	
	public int taxiupdate(TaxiVO vo) {
		int row=0;
		try {
		sqlSession=sqlSessionFactory.openSession(true);
		row=sqlSession.update("com.ptsd.model.TaxiDAO.taxiupdate",vo);
	}catch (Exception e) {
		e.printStackTrace();
	}finally {
		sqlSession.close();
	}
		return row;
	}
	
	public int taxidelete(String Taxi_num) {
		int row=0;
		try {
			sqlSession=sqlSessionFactory.openSession(true);
			row=sqlSession.delete("com.ptsd.model.TaxiDAO.taxidelete",Taxi_num);
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}return row;
	}

}
