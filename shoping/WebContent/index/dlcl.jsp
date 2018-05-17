<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import = "java.sql.*" import = "java.lang.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String name = request.getParameter("username");

String password = request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/store?characterEncoding=utf-8";
String user ="root";
String pass = "root";
Connection conn = DriverManager.getConnection(url,user,pass);
Statement stmt =conn.createStatement();
String sql="select username from userinfo ";
sql += "where username = '"+name+"' and password = '"+password+"';";

ResultSet rs=stmt.executeQuery(sql);
if(rs.next()){
	int x=1;
	session.setAttribute("username",name);

	response.sendRedirect("../Shoping_home.jsp");
	
	
	
}else{
	%>
	

	账号密码错误， 请<a href ='Login.jsp'>重新登陆</a>!;
	<% 
}


%>

</body>
</html>