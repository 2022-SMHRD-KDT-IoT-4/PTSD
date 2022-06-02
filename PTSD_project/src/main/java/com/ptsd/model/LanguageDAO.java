package com.ptsd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ptsd.database.SqlSessionManager;

public class LanguageDAO {
	
		private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		private SqlSession sqlSession = null;

		public ArrayList<LanguageVO> showLanguage(){
			ArrayList<LanguageVO> list = new ArrayList<LanguageVO>();
			try {
				sqlSession = sqlSessionFactory.openSession(true);
				list = (ArrayList)sqlSession.selectList("com.ptsd.model.LanguageDAO.languageselect");
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			
			return list;
		}
		
	}


