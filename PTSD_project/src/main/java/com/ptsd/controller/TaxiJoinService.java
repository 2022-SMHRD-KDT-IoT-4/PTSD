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

@WebServlet("/JoinService")
public class TaxiJoinService extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void service(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      //1. 한글 인코딩
      request.setCharacterEncoding("UTF-8");
      
      //2. 데이터 가져오기
      
      String Taxi_num = request.getParameter("Taxi_num");
      String Car_kinds = request.getParameter("Car_kinds");
      String Office_name = request.getParameter("Office_name");
      String Personal_tel = request.getParameter("Personal_tel");
      String Approve_check = request.getParameter("Approve_check");
      String Pw = request.getParameter("Pw");
      
      //3. 데이터 묶기
      TaxiVO vo = new TaxiVO(Taxi_num, Car_kinds, Office_name, Personal_tel, Approve_check, Pw);
      
      //4. DB에 데이터 접어넣기
      TaxiDAO dao = new TaxiDAO();
      int row = dao.join(vo);
      
      //5.흐름제어
      if(row>0) {
         HttpSession session = request.getSession();
         session.setAttribute("taxi", Taxi_num);
         System.out.println("가입완");
         
         //jsp 변경
         RequestDispatcher rd = request.getRequestDispatcher("Join_success.jsp");
         rd.forward( request, response);
      }else {
    	  //메인 변경
         response.sendRedirect("main.jsp");
      }
   }
}