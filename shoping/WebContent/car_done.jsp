<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*,connn.DB,userinfo.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

String userid=request.getParameter("userid");
System.out.print(userid);
String goodsid=request.getParameter("goodsid");
String goodsname= request.getParameter("goodsname");

String number=request.getParameter("number");

String price=request.getParameter("price");
String total=request.getParameter("total");
System.out.print(total);
 car car = new car();
  
   	car_serive car_serive = new car_serive(car);
    int r=car_serive.zhuce();
    if (r > 0) {
	if (r == 11) {
		out.print("商品已存在，请<a href='register_car.jsp'>重新添加</a>");
} else {
		out.print("添加成功，去<a href='car.jsp'>购物车</a>");
	}
} else {
	    out.print("添加失败，请<a href='register_car.jsp'>重新添加</a>");

}
%>

</body>
</html>