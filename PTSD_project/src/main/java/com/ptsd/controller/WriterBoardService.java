package com.ptsd.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.ptsd.model.BoardDAO;
import com.ptsd.model.BoardVO;

@WebServlet("/WriterBoardService1")
public class WriterBoardService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
	    String TAXI_COMMENT_TITLE = request.getParameter("TAXI_COMMENT_TITLE");
	    String TAXI_COMMENT_WRITER = request.getParameter("TAXI_COMMENT_WRITER");
	     String TAXI_COMMENT_COMMENT = request.getParameter("TAXI_COMMENT_COMMENT");
	     
	     System.out.println(TAXI_COMMENT_TITLE);
	     System.out.println(TAXI_COMMENT_WRITER);
		
	     BoardVO vo = new BoardVO(TAXI_COMMENT_TITLE, TAXI_COMMENT_WRITER, TAXI_COMMENT_WRITER); 
		
	    BoardDAO dao = new BoardDAO();
	    int row = dao.upload(vo);
	    
	    System.out.println(row);
		
	    if(row>0) {
	    	System.out.println("업로드 성공");
	    }
	    
	    RequestDispatcher rd = request.getRequestDispatcher("board.jsp");
	    rd.forward(request, response);
	    
		
	}

}
