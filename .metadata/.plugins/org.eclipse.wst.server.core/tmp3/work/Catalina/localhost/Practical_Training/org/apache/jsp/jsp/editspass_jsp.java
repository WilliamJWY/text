package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class editspass_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.List<java.lang.String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fs_005fproperty_0026_005fvalue_005fnobody;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.List<java.lang.String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fs_005fproperty_0026_005fvalue_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fs_005fproperty_0026_005fvalue_005fnobody.release();
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
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"../css/xiniu.css\">\r\n");
      out.write("<script type=\"text/javascript\" src=\"../js/modernizr.custom.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"../js/jquery-3.2.0.min.js\"></script>\r\n");
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
      out.write("\r\n");
      out.write("input[type=password],textarea {\r\n");
      out.write("\tborder-radius: 5px;\r\n");
      out.write("\tborder: 1px solid #000;\r\n");
      out.write("\toutline: none;\r\n");
      out.write("}\r\n");
      out.write("input[type=submit],textarea {\r\n");
      out.write("\tborder-radius: 5px;\r\n");
      out.write("\tborder: 1px solid #000;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".hideShowPassword-toggle {\r\n");
      out.write("\tbackground-image: url(../img/wink.svg);\r\n");
      out.write("\tbackground-position: 0 center;\r\n");
      out.write("\tbackground-repeat: no-repeat;\r\n");
      out.write("\tcursor: pointer;\r\n");
      out.write("\theight: 100%;\r\n");
      out.write("\toverflow: hidden;\r\n");
      out.write("\ttext-indent: -9999em;\r\n");
      out.write("\twidth: 44px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".hideShowPassword-toggle-hide {\r\n");
      out.write("\tbackground-position: -44px center;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".login-field {\r\n");
      out.write("\tbackground-color: #fff;\r\n");
      out.write("\tborder: 2px solid #ccc;\r\n");
      out.write("\tborder-radius: 0.25em;\r\n");
      out.write("\tcolor: inherit;\r\n");
      out.write("\tdisplay: block;\r\n");
      out.write("\tfont-family: inherit;\r\n");
      out.write("\tfont-size: inherit;\r\n");
      out.write("\tline-height: inherit;\r\n");
      out.write("\tmargin: 0;\r\n");
      out.write("\tposition: relative;\r\n");
      out.write("\tvertical-align: middle;\r\n");
      out.write("\twidth: 300px;;\r\n");
      out.write("\toutline: none;\r\n");
      out.write("\t-webkit-appearance: none;\r\n");
      out.write("\t-webkit-box-sizing: border-box;\r\n");
      out.write("\t-moz-box-sizing: border-box;\r\n");
      out.write("\tbox-sizing: border-box;\r\n");
      out.write("}\r\n");
      out.write("#password{\r\n");
      out.write("\tmargin-left:35%;\r\n");
      out.write("\t}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\tvar isShow = true;\r\n");
      out.write("\tfunction change() {\r\n");
      out.write("\t\tvar v = document.getElementById(\"ps\");\r\n");
      out.write("\t\tif (isShow) {\r\n");
      out.write("\t\t\tv.type = \"text\";\r\n");
      out.write("\t\t\tisShow = false;\r\n");
      out.write("\t\t} else {\r\n");
      out.write("\t\t\tv.type = \"password\";\r\n");
      out.write("\t\t\tisShow = true;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t};\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\t<div id=\"top_font\">\r\n");
      out.write("\t\t<span\r\n");
      out.write("\t\t\tstyle=\"font-family: youyuan; font-size: 25px; font-weight: bold; color:#000;\">修改密码</span>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div id=\"hr\">\r\n");
      out.write("\t\t<hr>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t<div id=\"password\">\r\n");
      out.write("\t\t<form method=\"post\" action=\"editspass\" target=\"_top\">\r\n");
      out.write("\t\t\t<input type=\"text\" value=\"");
      if (_jspx_meth_s_005fproperty_005f0(_jspx_page_context))
        return;
      out.write("\"\r\n");
      out.write("\t\t\t\tname=\"stu.sid\" hidden=\"\">\r\n");
      out.write("\t\t\t<div class=\"ywz_zhuce_xiaoxiaobao\">\r\n");
      out.write("\t\t\t\t<div class=\"ywz_zhuce_kuangzi\">\r\n");
      out.write("\t\t\t\t\t<div class=\"login\">\r\n");
      out.write("                    \r\n");
      out.write("\t\t\t\t\t\t<input class=\"login-field login-field-password\" id=\"pass\"\r\n");
      out.write("\t\t\t\t\t\t\tname=\"stu.spass\" type=\"password\" placeholder=\"密码\"\r\n");
      out.write("\t\t\t\t\t\t\tpattern=\"[A-Za-z0-9\\w]{6,12}\" title=\"必须是6-12位之间\"\r\n");
      out.write("\t\t\t\t\t\t\tstyle=\"border: #CCC 1px solid; width: 300px; height: 35px; font-size: 15px; font-family: youyuan;\"\r\n");
      out.write("\t\t\t\t\t\t\trequired>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<script>\r\n");
      out.write("\t\t\t\t\t\tdocument.write('<script src=js/'\r\n");
      out.write("\t\t\t\t\t\t\t\t+ ('__proto__' in {} ? 'zepto.custom'\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t: 'jquery') + '.js><\\/script>')\r\n");
      out.write("\t\t\t\t\t</script>\r\n");
      out.write("\t\t\t\t\t<script type=\"text/javascript\" src=\"../js/hideShowPassword.min.js\"></script>\r\n");
      out.write("\t\t\t\t\t<script>\r\n");
      out.write("\t\t\t\t\t\t$('#pass').hideShowPassword({\r\n");
      out.write("\t\t\t\t\t\t\tinnerToggle : true,\r\n");
      out.write("\t\t\t\t\t\t\ttouchSupport : Modernizr.touch\r\n");
      out.write("\t\t\t\t\t\t});\r\n");
      out.write("\t\t\t\t\t</script>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"ywz_zhuce_huixian\" id='pwdLevel_1'></div>\r\n");
      out.write("\t\t\t\t<div class=\"ywz_zhuce_huixian\" id='pwdLevel_2'></div>\r\n");
      out.write("\t\t\t\t<div class=\"ywz_zhuce_huixian\" id='pwdLevel_3'></div>\r\n");
      out.write("\t\t\t\t<div class=\"ywz_zhuce_hongxianwenzi\">弱</div>\r\n");
      out.write("\t\t\t\t<div class=\"ywz_zhuce_hongxianwenzi\">中</div>\r\n");
      out.write("\t\t\t\t<div class=\"ywz_zhuce_hongxianwenzi\">强</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("            <div style=\"padding-top: 70px;\">\r\n");
      out.write("\t\t<input type=\"submit\" value=\"提交\" style=\"border: #CCC 1px solid; width: 300px; height: 40px; font-size: 20px; background-color: #6573EB; font-family: youyuan; color: #CCC; font-weight: bold;\">\r\n");
      out.write("\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t</form>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\t$('#pass').focus(function() {\r\n");
      out.write("\t\t$('#pwdLevel_1').attr('class', 'ywz_zhuce_hongxian');\r\n");
      out.write("\t\t$('#pass').keyup();\r\n");
      out.write("\t});\r\n");
      out.write("\r\n");
      out.write("\t$('#pass').keyup(function() {\r\n");
      out.write("\t\tvar __th = $(this);\r\n");
      out.write("\r\n");
      out.write("\t\tif (!__th.val()) {\r\n");
      out.write("\t\t\t$('#pwd_tip').hide();\r\n");
      out.write("\t\t\t$('#pwd_err').show();\r\n");
      out.write("\t\t\tPrimary();\r\n");
      out.write("\t\t\treturn;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tif (__th.val().length < 6) {\r\n");
      out.write("\t\t\t$('#pwd_tip').hide();\r\n");
      out.write("\t\t\t$('#pwd_err').show();\r\n");
      out.write("\t\t\tWeak();\r\n");
      out.write("\t\t\treturn;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tvar _r = checkPassword(__th);\r\n");
      out.write("\t\tif (_r < 1) {\r\n");
      out.write("\t\t\t$('#pwd_tip').hide();\r\n");
      out.write("\t\t\t$('#pwd_err').show();\r\n");
      out.write("\t\t\tPrimary();\r\n");
      out.write("\t\t\treturn;\r\n");
      out.write("\t\t}\r\n");
      out.write("\r\n");
      out.write("\t\tif (_r > 0 && _r < 2) {\r\n");
      out.write("\t\t\tWeak();\r\n");
      out.write("\t\t} else if (_r >= 2 && _r < 4) {\r\n");
      out.write("\t\t\tMedium();\r\n");
      out.write("\t\t} else if (_r >= 4) {\r\n");
      out.write("\t\t\tTough();\r\n");
      out.write("\t\t}\r\n");
      out.write("\r\n");
      out.write("\t\t$('#pwd_tip').hide();\r\n");
      out.write("\t\t$('#pwd_err').hide();\r\n");
      out.write("\t});\r\n");
      out.write("\r\n");
      out.write("\tfunction Primary() {\r\n");
      out.write("\t\t$('#pwdLevel_1').attr('class', 'ywz_zhuce_huixian');\r\n");
      out.write("\t\t$('#pwdLevel_2').attr('class', 'ywz_zhuce_huixian');\r\n");
      out.write("\t\t$('#pwdLevel_3').attr('class', 'ywz_zhuce_huixian');\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\tfunction Weak() {\r\n");
      out.write("\t\t$('#pwdLevel_1').attr('class', 'ywz_zhuce_hongxian');\r\n");
      out.write("\t\t$('#pwdLevel_2').attr('class', 'ywz_zhuce_huixian');\r\n");
      out.write("\t\t$('#pwdLevel_3').attr('class', 'ywz_zhuce_huixian');\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\tfunction Medium() {\r\n");
      out.write("\t\t$('#pwdLevel_1').attr('class', 'ywz_zhuce_hongxian');\r\n");
      out.write("\t\t$('#pwdLevel_2').attr('class', 'ywz_zhuce_hongxian2');\r\n");
      out.write("\t\t$('#pwdLevel_3').attr('class', 'ywz_zhuce_huixian');\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\tfunction Tough() {\r\n");
      out.write("\t\t$('#pwdLevel_1').attr('class', 'ywz_zhuce_hongxian');\r\n");
      out.write("\t\t$('#pwdLevel_2').attr('class', 'ywz_zhuce_hongxian2');\r\n");
      out.write("\t\t$('#pwdLevel_3').attr('class', 'ywz_zhuce_hongxian3');\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\tfunction checkPassword(pwdinput) {\r\n");
      out.write("\t\tvar maths, smalls, bigs, corps, cat, num;\r\n");
      out.write("\t\tvar str = $(pwdinput).val()\r\n");
      out.write("\t\tvar len = str.length;\r\n");
      out.write("\r\n");
      out.write("\t\tvar cat = /.{16}/g\r\n");
      out.write("\t\tif (len == 0)\r\n");
      out.write("\t\t\treturn 1;\r\n");
      out.write("\t\tif (len > 16) {\r\n");
      out.write("\t\t\t$(pwdinput).val(str.match(cat)[0]);\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tcat = /.*[\\u4e00-\\u9fa5]+.*$/\r\n");
      out.write("\t\tif (cat.test(str)) {\r\n");
      out.write("\t\t\treturn -1;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tcat = /\\d/;\r\n");
      out.write("\t\tvar maths = cat.test(str);\r\n");
      out.write("\t\tcat = /[a-z]/;\r\n");
      out.write("\t\tvar smalls = cat.test(str);\r\n");
      out.write("\t\tcat = /[A-Z]/;\r\n");
      out.write("\t\tvar bigs = cat.test(str);\r\n");
      out.write("\t\tvar corps = corpses(pwdinput);\r\n");
      out.write("\t\tvar num = maths + smalls + bigs + corps;\r\n");
      out.write("\r\n");
      out.write("\t\tif (len < 6) {\r\n");
      out.write("\t\t\treturn 1;\r\n");
      out.write("\t\t}\r\n");
      out.write("\r\n");
      out.write("\t\tif (len >= 6 && len <= 8) {\r\n");
      out.write("\t\t\tif (num == 1)\r\n");
      out.write("\t\t\t\treturn 1;\r\n");
      out.write("\t\t\tif (num == 2 || num == 3)\r\n");
      out.write("\t\t\t\treturn 2;\r\n");
      out.write("\t\t\tif (num == 4)\r\n");
      out.write("\t\t\t\treturn 3;\r\n");
      out.write("\t\t}\r\n");
      out.write("\r\n");
      out.write("\t\tif (len > 8 && len <= 11) {\r\n");
      out.write("\t\t\tif (num == 1)\r\n");
      out.write("\t\t\t\treturn 2;\r\n");
      out.write("\t\t\tif (num == 2)\r\n");
      out.write("\t\t\t\treturn 3;\r\n");
      out.write("\t\t\tif (num == 3)\r\n");
      out.write("\t\t\t\treturn 4;\r\n");
      out.write("\t\t\tif (num == 4)\r\n");
      out.write("\t\t\t\treturn 5;\r\n");
      out.write("\t\t}\r\n");
      out.write("\r\n");
      out.write("\t\tif (len > 11) {\r\n");
      out.write("\t\t\tif (num == 1)\r\n");
      out.write("\t\t\t\treturn 3;\r\n");
      out.write("\t\t\tif (num == 2)\r\n");
      out.write("\t\t\t\treturn 4;\r\n");
      out.write("\t\t\tif (num > 2)\r\n");
      out.write("\t\t\t\treturn 5;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("\tfunction corpses(pwdinput) {\r\n");
      out.write("\t\tvar cat = /./g\r\n");
      out.write("\t\tvar str = $(pwdinput).val();\r\n");
      out.write("\t\tvar sz = str.match(cat)\r\n");
      out.write("\t\tfor ( var i = 0; i < sz.length; i++) {\r\n");
      out.write("\t\t\tcat = /\\d/;\r\n");
      out.write("\t\t\tmaths_01 = cat.test(sz[i]);\r\n");
      out.write("\t\t\tcat = /[a-z]/;\r\n");
      out.write("\t\t\tsmalls_01 = cat.test(sz[i]);\r\n");
      out.write("\t\t\tcat = /[A-Z]/;\r\n");
      out.write("\t\t\tbigs_01 = cat.test(sz[i]);\r\n");
      out.write("\t\t\tif (!maths_01 && !smalls_01 && !bigs_01) {\r\n");
      out.write("\t\t\t\treturn true;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
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

  private boolean _jspx_meth_s_005fproperty_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  s:property
    org.apache.struts2.views.jsp.PropertyTag _jspx_th_s_005fproperty_005f0 = (org.apache.struts2.views.jsp.PropertyTag) _005fjspx_005ftagPool_005fs_005fproperty_0026_005fvalue_005fnobody.get(org.apache.struts2.views.jsp.PropertyTag.class);
    _jspx_th_s_005fproperty_005f0.setPageContext(_jspx_page_context);
    _jspx_th_s_005fproperty_005f0.setParent(null);
    // /jsp/editspass.jsp(97,29) name = value type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_s_005fproperty_005f0.setValue("#session.st.sid");
    int _jspx_eval_s_005fproperty_005f0 = _jspx_th_s_005fproperty_005f0.doStartTag();
    if (_jspx_th_s_005fproperty_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fs_005fproperty_0026_005fvalue_005fnobody.reuse(_jspx_th_s_005fproperty_005f0);
      return true;
    }
    _005fjspx_005ftagPool_005fs_005fproperty_0026_005fvalue_005fnobody.reuse(_jspx_th_s_005fproperty_005f0);
    return false;
  }
}
