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

@WebServlet("/TaxiUpdateService")
public class TaxiUpdateSerivce extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();

		String Taxi_num = ((TaxiVO) session.getAttribute("member")).getTaxi_num();
		// 로그인한 사용자의 taxi_num을 가져오는 방법
		String Car_kinds = request.getParameter("Car_kinds");
		String Office_name = request.getParameter("Office_name");
		int Personal_tel = Integer.parseInt(request.getParameter("Personal_tel"));
		String Approve_check = request.getParameter("Approve_check");
		String Pw = request.getParameter("Pw");

		TaxiVO vo = new TaxiVO(Taxi_num, Car_kinds, Office_name, Personal_tel, Approve_check, Pw);

		TaxiDAO dao = new TaxiDAO();
		int row = dao.taxiupdate(vo);

		System.out.println(vo);
		System.out.println(row);

		if (row > 0) {
			System.out.println("수정ㅇ완");
			session.setAttribute("taxi", vo);
			System.out.println(session);

		}

		// 메인.jsp변경
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
	}

}