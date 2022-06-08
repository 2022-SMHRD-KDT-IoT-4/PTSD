package com.ptsd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ptsd.model.BoardDAO;

@WebServlet("/DeleteBoardService1")
public class DeleteBoardService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
	 	int num = Integer.parseInt(request.getParameter("Num"));
	 	
	 	BoardDAO dao = new BoardDAO();
	 	int row = dao.ListDelete(num);
	 	
	 	RequestDispatcher rd = request.getRequestDispatcher("board.jsp");
	 	rd.forward(request, response);
		
	}

}
