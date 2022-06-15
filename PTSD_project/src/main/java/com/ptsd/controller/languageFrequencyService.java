package com.ptsd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ptsd.model.LanguageDAO;


@WebServlet("/languageFrequencyService")
public class languageFrequencyService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("lan_fre_ser_연결 시작!");
		request.setCharacterEncoding("UTF-8");
		int Lan_seq = Integer.parseInt(request.getParameter("Lan_seq"));
		System.out.println("lan_seq_get: " + Lan_seq);
		LanguageDAO dao = new LanguageDAO();
		dao.LanguageFrequency(Lan_seq);
	}

}
