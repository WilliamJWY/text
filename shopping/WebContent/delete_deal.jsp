<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.sql.*,connn.DB"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String username = request.getParameter("username");
		out.print("你确定要删除" + username + "用户。<a href='delete_servlet?username="
				+ username + "'>确定</a><a href='yonghuohuqu.jsp'>取消</a>");
	%>
</body>
</html>