<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*,connn.DB,userinfo.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

String username=request.getParameter("username");

String password=request.getParameter("password");
String password2= request.getParameter("querenmima");

String sex=request.getParameter("sex");


     if("0".equals(sex)){
	   sex="男";
}
     if("1".equals(sex)){
	   sex="女";
}

String address=request.getParameter("address");

String telephone=request.getParameter("telephone");

String recipients=request.getParameter("recipients");


      userinfo user = new userinfo();

      user.setUsername(username);
      user.setPassword(password);
      user.setSex(sex);
      user.setTelephone(telephone);
      user.setAddress(address);
      user.setRecipients(recipients);
   	userinfo_serive userinfo_serive = new userinfo_serive(user);
    int r=userinfo_serive.zhuce();
    if (r > 0) {
	if (r == 11) {
		out.print("用户名已存在，请<a href='register.jsp'>重新注册</a>");
} else {
		out.print("注册成功，请<a href='index/Login.jsp'>登陆</a>");
	}
} else {
	    out.print("注册失败，请<a href='register.jsp'>重新注册</a>");

}
%>
</body>
</html>