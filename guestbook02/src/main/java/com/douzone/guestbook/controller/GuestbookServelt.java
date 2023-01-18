package com.douzone.guestbook.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.douzone.guestbook.dao.guestbookDao;
import com.douzone.guestbook.vo.guestbookVo;



public class GuestbookServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String action = request.getParameter("a");
		if("삭제".equals(action)) {
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/deleteform.jsp");
			rd.forward(request, response);
		} 
		else if("확인".equals(action)) {
			request.setCharacterEncoding("utf-8");

			String Name = request.getParameter("name");
			String password = request.getParameter("password");
			String message = request.getParameter("message");
			guestbookVo vo = new guestbookVo();
			vo.setName(Name);
			vo.setPassword(password);
			vo.setMessage(message);
			new guestbookDao().insert(vo);
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/index.jsp");
			rd.forward(request, response);
		}
		else {
			List<guestbookVo> list = new guestbookDao().showAll();
			request.setAttribute("list", list);
			
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/index.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
