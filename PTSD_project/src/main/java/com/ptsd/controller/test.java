package com.ptsd.controller;

import java.io.IOException;
import java.time.LocalTime;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test")
public class test extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		LocalTime time = LocalTime.now();
		int time1 = time.getHour();
		System.out.println(time1);
		
		if(time1>19) {
			RequestDispatcher rd = request.getRequestDispatcher("darkMain.jsp");
		 	rd.forward(request, response);	
		}
		else {
			RequestDispatcher rd = request.getRequestDispatcher("whiteMain.jsp");
		 	rd.forward(request, response);
		}
		
		
	}

}
