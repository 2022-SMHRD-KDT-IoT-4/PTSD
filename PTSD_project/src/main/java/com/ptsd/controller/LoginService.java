package com.ptsd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ptsd.model.TaxiDAO;
import com.ptsd.model.TaxiVO;

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void service(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      
      String Taxi_Num = (String)request.getParameter("Taxi_num");
      String pw = (String)request.getParameter("Pw");

      //System.out.println(Taxi_Num);
      System.out.println(pw);
      
      TaxiVO vo = new TaxiVO(Taxi_Num, pw);
      
      TaxiDAO dao = new TaxiDAO();
      
      TaxiVO result = dao.login(vo);
      
      System.out.println(result);
      
      if(result != null) {
    	 System.out.println("로그인 성공!");
         HttpSession session = request.getSession();
         //System.out.println(vo);
         session.setAttribute("member", result);
      }
      
      RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
      rd.forward(request, response);
      
   }

}