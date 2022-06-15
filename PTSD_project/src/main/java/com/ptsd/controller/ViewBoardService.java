package com.ptsd.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ptsd.model.BoardDAO;
import com.ptsd.model.BoardVO;
import com.ptsd.model.Paging;

@WebServlet("/ViewBoardService1")
public class ViewBoardService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

	int page = 1;
	
	if(request.getParameter("page")!=null) {
		page = Integer.parseInt(request.getParameter("page"));
	}
	
	Paging paging = new Paging();
	paging.setPage(page);
	paging.setTotalCount(351);
	
	BoardDAO dao = new BoardDAO();
	//ArrayList<BoardVO> list = dao.showBoard(page);
	//request.setAttribute("list", list);
	request.setAttribute("paging", paging);
	
	RequestDispatcher dispatcher = request.getRequestDispatcher("board.jsp");
	dispatcher.forward(request, response);
	
	
	}

}
