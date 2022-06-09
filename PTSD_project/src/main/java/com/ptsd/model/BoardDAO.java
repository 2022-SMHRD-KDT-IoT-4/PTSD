package com.ptsd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ptsd.database.SqlSessionManager;

public class BoardDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	private SqlSession sqlSession = null;
	
	
	// 파일 업로드
	public int upload(BoardVO vo) {
		int row = 0;
		try {
			sqlSession = sqlSessionFactory.openSession(true);
			row = sqlSession.insert("com.ptsd.model.BoardDAO.boardinsert",vo);
			System.out.println("1");
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return row;
	}
	
	// 게시글 목록 조회
	public ArrayList<BoardVO> showBoard() {
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();
		try {
			sqlSession = sqlSessionFactory.openSession(true);
			list = (ArrayList)sqlSession.selectList("com.ptsd.model.BoardDAO.boardselect");
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return list;
	}
	
	// 게시글 세부내용
	public BoardVO showDetail(int num) {
		BoardVO vo = null;
		try {
			sqlSession = sqlSessionFactory.openSession(true);
			vo = sqlSession.selectOne("com.ptsd.model.BoardDAO.boarddetail", num);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return vo;
		
	}
	
	// 게시글 삭제
	public int ListDelete(int num) {
		int row = 0;
		try {
			sqlSession = sqlSessionFactory.openSession(true);
			row = sqlSession.delete("com.ptsd.model.BoardDAO.boarddelete", num);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return row;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
