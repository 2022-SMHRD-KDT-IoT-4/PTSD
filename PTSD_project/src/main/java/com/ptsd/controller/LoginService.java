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
		
		String taxiNum = (String)request.getParameter("Taxi_num");
		String pw = (String)request.getParameter("Pw");
		
		TaxiVO vo = new TaxiVO(taxiNum, pw);
		
		TaxiDAO dao = new TaxiDAO();
		
		TaxiVO result = dao.login(vo);
		
		if(result != null) {
			HttpSession session = request.getSession();
			session.setAttribute("member", session);
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
		rd.forward(request, response);
		
	}

}
