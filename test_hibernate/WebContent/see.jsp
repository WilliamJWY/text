<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
	<s:property value="user.username" />
	<table border="1">

		<tr>
			<td>编号</td>
			<td>用户名</td>
			<td>密码</td>
			
		</tr>
		<tr>
		<td><s:property value="#qwer.id" /></td>
			<td><s:property value="username" /></td>
			<td><s:property value="pass" /></td>
		</tr>
	</table>
</body>
</html>