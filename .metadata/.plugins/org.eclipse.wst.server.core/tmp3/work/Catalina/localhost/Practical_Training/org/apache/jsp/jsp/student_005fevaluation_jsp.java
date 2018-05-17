package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.pt.vo.*;
import java.util.*;

public final class student_005fevaluation_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.List<java.lang.String> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.List<java.lang.String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("</head>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("#top_font {\r\n");
      out.write("\tpadding-top: 10px;\r\n");
      out.write("\tpadding-left: 15px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#hr {\r\n");
      out.write("\tpadding-top: 10px;\r\n");
      out.write("}\r\n");
      out.write("#table {\r\n");
      out.write("\twidth: 100%;\r\n");
      out.write("\tpadding-top: 40px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("<body>\r\n");
      out.write("<div id=\"top_font\">\r\n");
      out.write("\t\t<span\r\n");
      out.write("\t\t\tstyle=\"font-family: youyuan; font-size: 25px; font-weight: bold;\">学生评价</span>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div id=\"hr\">\r\n");
      out.write("\t\t<hr>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("<div id=\"table\">\r\n");
      out.write("\t\t<table border=\"0\" width=\"100%\"\r\n");
      out.write("\t\t\tstyle=\"text-align: center; font-family: youyuan;\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td style=\"background-color: #A4A4FF; width:25%;\">问卷类型</td>\r\n");
      out.write("\t\t\t\t<td style=\"background-color: #A4A4FF; width:25%;\">班级</td>\r\n");
      out.write("\t\t\t\t<td style=\"background-color: #A4A4FF; width:25%;\">教师</td>\r\n");
      out.write("                <td style=\"background-color: #A4A4FF; width:25%;\">评教</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t");
 Student s=(Student)session.getAttribute("st");
			int[] x=s.getTid();
			if(x!=null){
			   for(int i=0;i<x.length;i++){   
      out.write("\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t<td>学生问卷</td>\r\n");
      out.write("\t\t\t<td>");
 out.print(s.getClassid()); 
      out.write("</td>\r\n");
      out.write("\t\t\t");
 List<Teacher> tc=(List<Teacher>)session.getAttribute("Teacher"); 
			   for(int j=0;j<tc.size();j++){
				   if(x[i]==tc.get(j).getTid()){
      out.write("\r\n");
      out.write("\t\t\t   \r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<td>");
 out.print(tc.get(j).getTname()); 
      out.write("</td>\r\n");
      out.write("\t\t\t");
}} 
      out.write("\r\n");
      out.write("\t\t\t<td ><a href=\"stuquestionnaire.jsp?tid=");
      out.print(x[i]);
      out.write("\" style=\"text-decoration: none;\">评价</a></td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t");
}} 
      out.write("\r\n");
      out.write("            </table>\r\n");
      out.write("            </div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
