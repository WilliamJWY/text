<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String username = (String) session.getAttribute("username");
		
		if (username != null) {
			session.setAttribute("username", null);
			response.sendRedirect("index/login.jsp");
		}
	%>
	你还没有登陆，请
	<a href="index/login.jsp">登陆</a>
</body>
</html>