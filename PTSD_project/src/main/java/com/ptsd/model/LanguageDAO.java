package com.ptsd.model;

import java.util.ArrayList;

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
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<LanguageVO> langall() {
		ArrayList<LanguageVO> list=new ArrayList<LanguageVO>();
		try {
			sqlSession=sqlSessionFactory.openSession(true);
			list=(ArrayList)sqlSession.selectList("com.ptsd.model.LanguageDAO.languageselect");
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return list;
	}
	
	public void LanguageFrequency(int lan_seq) {
		System.out.println("languageDAO lan_seq : "+lan_seq);
		try {
			sqlSession = sqlSessionFactory.openSession(true);
			System.out.println("languageDAO try : update 문 앞");
			sqlSession.update("com.ptsd.model.LanguageDAO.languageFrequency", lan_seq);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			System.out.println("finally");
			sqlSession.close();
		}
	}
		
	}


