package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<link href=\"../css/slide-unlock.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<script type=\"text/javascript\" src=\"../js/jquery-3.2.0.min.js\"></script>\r\n");
      out.write("<script src=\"../js/jquery.slideunlock.js\" charset=\"utf-8\" type=\"text/javascript\" ></script>\r\n");
      out.write("\r\n");
      out.write("<title>登陆</title>\r\n");
      out.write("</head>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("body{\r\n");
      out.write("\r\n");
      out.write("-moz-user-select:none;/*火狐*/\r\n");
      out.write("\r\n");
      out.write("-webkit-user-select:none;/*webkit浏览器*/\r\n");
      out.write("\r\n");
      out.write("-ms-user-select:none;/*IE10*/\r\n");
      out.write("\r\n");
      out.write("-khtml-user-select:none;/*早期浏览器*/\r\n");
      out.write("\r\n");
      out.write("user-select:none;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("input[type=text],textarea {\r\n");
      out.write("\tborder-radius: 5px;\r\n");
      out.write("\tborder: 1px solid #000;\r\n");
      out.write("\toutline: none;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("input[type=password],textarea {\r\n");
      out.write("\tborder-radius: 5px;\r\n");
      out.write("\tborder: 1px solid #000;\r\n");
      out.write("\toutline: none;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("input[type=submit],textarea {\r\n");
      out.write("\tborder-radius: 5px;\r\n");
      out.write("\tborder: 1px solid #000;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#login {\r\n");
      out.write("\twidth: 400px;\r\n");
      out.write("\theight: 450px;\r\n");
      out.write("\tborder-radius: 10px;\r\n");
      out.write("\tbackground-color: #73ABFF;\r\n");
      out.write("\tbackground: rgba(245, 245, 245, 0.6);\r\n");
      out.write("\tposition: absolute;\r\n");
      out.write("\ttop: 50%;\r\n");
      out.write("\tleft: 50%;\r\n");
      out.write("\t-webkit-transform: translate(-50%, -50%);\r\n");
      out.write("\t-moz-transform: translate(-50%, -50%);\r\n");
      out.write("\t-ms-transform: translate(-50%, -50%);\r\n");
      out.write("\t-o-transform: translate(-50%, -50%);\r\n");
      out.write("\ttransform: translate(-50%, -50%);\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("table {\r\n");
      out.write("\t\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("body {\r\n");
      out.write("\tbackground-image: url(../img/apic21738.jpg);\r\n");
      out.write("\tbackground-repeat: no-repeat;\r\n");
      out.write("\tbackground-size: 100% 100%;\r\n");
      out.write("\tbackground-attachment: fixed;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("select {\r\n");
      out.write("\tborder: #CCC 1px solid;\r\n");
      out.write("\twidth: 60px;\r\n");
      out.write("\theight: 35px;\r\n");
      out.write("\tfont-size: 15px;\r\n");
      out.write("\tfont-family: youyuan;\r\n");
      out.write("\tborder-radius: 5px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div id=\"login\">\r\n");
      out.write("\t\t<div id=\"table\" align=\"center\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t<div id=\"s1\">\r\n");
      out.write("\t\t\t\t<form method=\"post\" id=\"f1\">\r\n");
      out.write("\t\t\t\t\t<table border=\"0\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td height=\"15\"></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td valign=\"middle\" align=\"center\"><span\r\n");
      out.write("\t\t\t\t\t\t\t\tstyle=\"font-family: youyuan; font-size: 30px; color: #7C7C7C; font-weight: bold;\">教师信息评价系统</span>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td height=\"10\"></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td valign=\"middle\" align=\"center\"  ><select id=\"type\" style=\"width:70px; outline:none;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"1\" id=\"st\">学生</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"2\" id=\"tc\">老师</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"3\" id=\"ld\">领导</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option value=\"4\" id=\"gly\">管理员</option>\r\n");
      out.write("\t\t\t\t\t\t\t</select></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td height=\"10\"></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"text\" id=\"name\" class=\"required\" \r\n");
      out.write("\t\t\t\t\t\t\t\tpattern=\"[0-9]*\" title=\"必须是数字不能含有字符\"\r\n");
      out.write("\t\t\t\t\t\t\t\tstyle=\"border: #CCC 1px solid; width: 290px; height: 35px; font-size: 15px; font-family: youyuan; padding-left:10px ;\"\r\n");
      out.write("\t\t\t\t\t\t\t\tplaceholder=\"&nbsp学号/工号\" required /></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td height=\"10\"></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"password\" id=\"pass\" class=\"required\"\r\n");
      out.write("\t\t\t\t\t\t\t\tplaceholder=\"&nbsp密码\" pattern=\"[A-Za-z0-9\\w]{6,12}\"\r\n");
      out.write("\t\t\t\t\t\t\t\ttitle=\"必须是6-12位之间\"\r\n");
      out.write("\t\t\t\t\t\t\t\tstyle=\"border: #CCC 1px solid; width: 290px; height: 35px; font-size: 15px; font-family: youyuan; padding-left:10px ;\"\r\n");
      out.write("\t\t\t\t\t\t\t\trequired /></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td height=\"1\"></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td style=\"text-align: right;\"><a href=\"register.jsp\"\r\n");
      out.write("\t\t\t\t\t\t\t\tstyle=\"font-family: youyuan; font-size: 15px; color: #7C7C7C; font-weight: bold; text-decoration: none;\">还没注册?</a>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td height=\"10\"></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div id=\"slider\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div id=\"slider_bg\"></div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<span id=\"label\" style=\"cursor:pointer;\">>></span> <span id=\"labelTip\">拖动滑块验证</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td height=\"10\"></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"submit\" value=\"登录\" name=\"submit\"\r\n");
      out.write("\t\t\t\t\t\t\t\tid=\"submit\"\r\n");
      out.write("\t\t\t\t\t\t\t\tstyle=\"border: #CCC 1px solid; width: 300px; height: 40px; font-size: 20px; background-color: #6573EB; font-family: youyuan; color: #CCC; font-weight: bold;\" />\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td height=\"15\"></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td valign=\"middle\" align=\"center\"><span\r\n");
      out.write("\t\t\t\t\t\t\t\tstyle=\"font-family: youyuan; font-size: 13px; color: #7C7C7C; font-weight: bold;\">@2016-2026\r\n");
      out.write("\t\t\t\t\t\t\t\t\totaku team 版权所有</span></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t</form>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</body>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\t$(document).ready(function() {\r\n");
      out.write("\t\tvar result = false;\r\n");
      out.write("        var slider = new SliderUnlock(\"#slider\",{\r\n");
      out.write("\t\t\tsuccessLabelTip : \"滑动验证成功\"\t\r\n");
      out.write("\t\t},function(){\r\n");
      out.write("\t\t\tresult = true;\r\n");
      out.write("        });\r\n");
      out.write("        slider.init(); \r\n");
      out.write("        \r\n");
      out.write("\t\t$(\"#submit\").click(function() {\r\n");
      out.write("\t\t\tvar x = $(\"#type\").val();\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tif (x == 1) {\r\n");
      out.write("\t\t\t\t$(\"#name\").attr(\"name\", \"stu.sname\");\r\n");
      out.write("\t\t\t\t$(\"#pass\").attr(\"name\", \"stu.spass\");\r\n");
      out.write("\t\t\t\t$(\"#f1\").attr(\"action\", \"loginStu\");\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tif(x == 2){\r\n");
      out.write("\t\t\t\t$(\"#name\").attr(\"name\", \"tc.jobid\");\r\n");
      out.write("\t\t\t\t$(\"#pass\").attr(\"name\", \"tc.tpass\");\r\n");
      out.write("\t\t\t\t$(\"#f1\").attr(\"action\", \"loginTc\");\r\n");
      out.write("\t\t\t} \r\n");
      out.write("\t\t\tif(x == 3){\r\n");
      out.write("\t\t\t\t$(\"#name\").attr(\"name\", \"tc.jobid\");\r\n");
      out.write("\t\t\t\t$(\"#pass\").attr(\"name\", \"tc.tpass\");\r\n");
      out.write("\t\t\t\t$(\"#f1\").attr(\"action\", \"loginLd\");\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tif(x == 4){\r\n");
      out.write("\t\t\t\t$(\"#name\").attr(\"name\", \"tc.jobid\");\r\n");
      out.write("\t\t\t\t$(\"#pass\").attr(\"name\", \"tc.tpass\");\r\n");
      out.write("\t\t\t\t$(\"#f1\").attr(\"action\", \"loginGly\");\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tif(result==true){\r\n");
      out.write("\t\t\t\t$(\"#f1\").submit();\r\n");
      out.write("\t\t\t}else{\r\n");
      out.write("\t\t\t\treturn false;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t\r\n");
      out.write("\r\n");
      out.write("\t\t});\r\n");
      out.write("\t});\r\n");
      out.write("</script>\r\n");
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
