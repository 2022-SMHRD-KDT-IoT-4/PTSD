package com.ptsd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ptsd.database.SqlSessionManager;

public class LanguageDAO {
	
		private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		private SqlSession sqlSession = null;

		public LanguageVO showLanguage(int lan_seq){
			LanguageVO list = null;
			try {
				sqlSession = sqlSessionFactory.openSession(true);
				// selectList("id") : #{}가 없다. 즉 채워줄게 없다.
				// selectList("id", parameter) : 채워줄게 있는 경우
				list = sqlSession.selectOne("languageselect", lan_seq);
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			return list;
		}
		
	// 
	public ArrayList<LanguageVO> langall() {
		ArrayList<LanguageVO> list=new ArrayList<LanguageVO>();
		try {
			sqlSession=sqlSessionFactory.openSession(true);
			System.out.println("여기1");
			list=(ArrayList)sqlSession.selectList("com.ptsd.model.LanguageDAO.languageselect");
			System.out.println("여기2");
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
			System.out.println("여기3");
		}
		return list;
	}
		
		
		
	}


