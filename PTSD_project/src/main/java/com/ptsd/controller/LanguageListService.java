package com.ptsd.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ptsd.model.LanguageDAO;
import com.ptsd.model.LanguageVO;

@WebServlet("/LanguageListService")
public class LanguageListService extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void service(HttpServletRequest request, HttpServletResponse response) 
         throws ServletException, IOException {
	   
	   int lan_seq = Integer.parseInt(request.getParameter("lan_seq"));
      
      LanguageDAO dao = new LanguageDAO();
      LanguageVO list = dao.showLanguage(lan_seq);
      
      request.setAttribute("list", list);
      
      RequestDispatcher rd = request.getRequestDispatcher("test.jsp"); // 이동경로 변경
      rd.forward(request, response);
      
      
      
      
   }

}
