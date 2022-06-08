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
		
		String path = request.getServletContext().getRealPath("file");
		System.out.println(path);
		
		int maxSize = 10*1024*1024;
		
		String encoding = "UTF-8";
		
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
		
		MultipartRequest multi = new MultipartRequest(request, path, maxSize, encoding, rename);
		
	    String title = multi.getParameter("title");
	    String writer = multi.getParameter("writer");
	    String fileName = multi.getFilesystemName("fileName");
		
	    fileName = URLEncoder.encode(fileName, "UTF-8");
	    String content = multi.getParameter("content");
		
	    BoardVO vo = new BoardVO(title, writer, fileName, content);
		
	    BoardDAO dao = new BoardDAO();
	    int row = dao.upload(vo);
		
	    if(row>0) {
	    	System.out.println("업로드 성공");
	    }
	    
	    RequestDispatcher rd = request.getRequestDispatcher("board.jsp");
	    rd.forward(request, response);
	    
		
	}

}
