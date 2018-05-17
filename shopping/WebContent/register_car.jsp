<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="userinfo.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center" class="yh"><marquee hspace=20 vspace=20 width=300 bgcolor=ffaaaa algin=middle>购物车添加页面</marquee></h1>
	<hr>
	<form action="car_done.jsp" method="post" id="zhu">
		<table align="center" id="tab" height="400" width="460"	>
			<tr>
				<td id="use">用户ID：</td>
				<td id="use1"><input type="text"  name="userid" value ="312321"></td>
			</tr>
			<tr>
				<td id="use">商品编号：</td>
				<td id="use1"><input type="text"  name="goodsid" value ="312321"></td>
			</tr>
			<tr>
				<td id="use">商品名称：</td>
				<td id="use1"><input type="text" name="goodsname" value ="312321"></td>
			</tr>
			<tr>
				<td id="use">商品单价：</td>
				<td id="use1"><input type="text"  name="price" value ="312321"></td>
			</tr>
			<tr>
				<td id="use">商品数量：</td>
				<td id="use1"><input type="text"  name="number" value ="312321"></td>
			</tr>
			<tr>
				<td id="use">商品总价：</td>
				<td id="use1"><input type="text"  name="total" value ="312321"></td>
			</tr>
			<tr>
				<td colspan=2 align="center" id="use"><input type="submit" value="提交"
					> <input type="reset" value="重置"></td>
			</tr>
		</table>
	</form>
</body>
</html>