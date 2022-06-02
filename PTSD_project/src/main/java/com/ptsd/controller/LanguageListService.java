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
      
      LanguageDAO dao = new LanguageDAO();
      List<LanguageVO> list = dao.showLanguage();
      
      request.setAttribute("list", list);
      
      System.out.println(list.get(3));
      
      RequestDispatcher rd = request.getRequestDispatcher("ww"); // jsp 변경
      rd.forward(request, response);
      
      
      
      
   }

}