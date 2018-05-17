package Servlte;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userinfo.car_serive;
import userinfo.userinfo_serive;

/**
 * Servlet implementation class car_delete_servlet
 */
public class car_delete_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public car_delete_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		String username = request.getParameter("carid");
		car_serive us = new car_serive();
			int r = us.delect_car(carid);
			if(r < 0){
				response.getWriter().write("删除失败<a href='yonghuhuoqu.jsp'>重实</a>");
				response.setHeader("refresh", "3;url=yonghuhuoqu.jsp");
			}else{
				response.getWriter().write("删除成功<a href='yonghuhuoqu.jsp'>返回</a>");
				response.setHeader("refresh", "3;url=yonghuhuoqu.jsp");
				
			}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
