<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录页面</title>
</head>
<body>
<center>
<h2>登录页面</h2>
	<form action="loginUser" method="post">
		<table>
			<tr>
				<td>用户名</td>
				<td><input type="text" name="user.username"></td>
			</tr>
			<tr>
				<td>密码</td>
				<td><input type="password" name="user.password"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="登录"><a href="register.jsp">注册</a></td>
				
			</tr>
		</table>
	</form>
	</center>
</body>
</html>