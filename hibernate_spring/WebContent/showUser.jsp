<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<sx:head extraLocales="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">

		<tr>
			<td>id</td>
			<td>name</td>
			<td>pass</td>

			<td>操作</td>
		</tr>


		<tr>
			<td><s:property value="#request.user.id" /></td>
			<td><s:property value="#request.user.username" /></td>
			<td><s:property value="#request.user.password" /></td>
			<td><a href="edite?user.id=<s:property value="#qwer.id" />">修改</a>
				<a href="deleteUser?id=<s:property value="#request.user.id" />">删除</a> <a
				href="query?user.id=<s:property value="#qwer.id" />">查看</a></td>
		</tr>


	</table>
</body>
</html>