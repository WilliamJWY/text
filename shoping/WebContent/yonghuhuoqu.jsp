<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" %>
<%@ page import="userinfo.*" %>
<%@ page import="java.util.*" %>
<%@ page import="connn.DB.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>姓名</td>
			<td>性别</td>
			<td>电话</td>
			<td>收件人</td>
			<td>收货地址</td>
			<td>修改</td>
			<td>删除</td>
</tr>
			<%
			userinfo_serive us=new userinfo_serive();
			ArrayList<userinfo> list=us.showall();
			Iterator<userinfo> lt=list.iterator();
			while (lt.hasNext()) {
				userinfo user=lt.next();
				System.out.println(user.getUsername());
		   %>
		
		<tr>
			<td><%=user.getUsername()%></td>
			<td><%=user.getSex()%></td>
			<td><%=user.getTelephone()%></td>
			<td><%=user.getAddress()%></td>
			<td><%=user.getRecipients()%></td>
			<td><a href="AlterUser.jsp?username=<%=user.getUsername()%>">修改</a></td>
			<td><a href="delete_deal.jsp?username=<%=user.getUsername()%>">删除</a></td>
		</tr>
		<tr>
			<%
				}
			%>
		<tr><td><a href="register.jsp">添加新用户</a></td></tr>
	</table>
	<a href="Shoping_home.jsp">返回</a>
</body>
</html>