package com.ptsd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ptsd.model.TaxiDAO;

@WebServlet("/TaxiDeleteService")
public class TaxiDeleteService extends HttpServlet {
   private static final long serialVersionUID = 1L;


   protected void service(HttpServletRequest request, HttpServletResponse response) 
         throws ServletException, IOException {
      
       String Taxi_num = request.getParameter("Taxi_num");
       
      TaxiDAO dao=new TaxiDAO();
      int row=dao.taxidelete(Taxi_num);
      
      if(row>0) {
         System.out.println("삭제완.");
      }
      //jsp변경
      RequestDispatcher rd=request.getRequestDispatcher("변경변경.jsp");
      rd.forward(request, response);
   }

}