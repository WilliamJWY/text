<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="userinfo.*,java.util.*,connn.DB.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
		
			<td>用户id</td>
			<td>商品编号</td>
			<td>商品名称</td>
			<td>商品单价</td>
			<td>商品数量</td>
			<td>商品总价</td>
			<td>删除</td>
</tr>
<%
			car_serive us=new car_serive();
			ArrayList<car> list=us.showall();
			
			Iterator<car> lt=list.iterator();
			while (lt.hasNext()) {
			car car=lt.next();
			
  %>
		
       <tr>
			
			<td><%=car.getUserid()%></td>
			<td><%=car.getGoodsid()%></td>
			<td><%=car.getGoodsname()%></td>
			<td><%=car.getPrice()%></td>
			<td><%=car.getNumber()%></td>
			<td><%=car.getTotal()%></td>
			<td><a href="shanchu_done.jsp?carid=<%=car.getCarid() %>">删除</a></td>
		</tr>
		<%} %>
</table>
<a href="register_car.jsp">添加商品</a>
</body>
</html>