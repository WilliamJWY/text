package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userinfo.userinfo_serive;

/**
 * Servlet implementation class delete_servlet
 */
public class delete_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public delete_servlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		String username = request.getParameter("username");
		userinfo_serive us = new userinfo_serive();
		int r = us.delect_userinfo(username);
		if (r < 0) {
			response.getWriter().write("删除失败<a href='yonghuohuqu.jsp'>返回</a>");
			response.setHeader("refresh", "3;url=yonghuohuqu.jsp");
		} else {
			response.getWriter().write("删除成功<a href='yonghuohuqu.jsp'>返回</a>");
			response.setHeader("refresh", "3;url=yonghuohuqu.jsp");

		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
			this.doGet(request, response);
	}

}
