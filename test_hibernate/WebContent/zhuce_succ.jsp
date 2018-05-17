<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function register() {
		var url = "tianjia.jsp";
		window.location.href = url;
	}
</script>
<body>
	用户名：
	<s:property value="user.username" />
	<table border="1">

		<tr>
			<td>编号</td>
			<td>用户名</td>
			<td>密码</td>
			<td>操作</td>
		</tr>
		<s:iterator value="#request.listuser" var="qwer">


			<tr>
				<td><s:property value="#qwer.id" /></td>
				<td><s:property value="username" /></td>
				<td><s:property value="pass" /></td>
				<td><input type="button" onclick="register()" value="添加">
					<a href="edite?user.id=<s:property value="#qwer.id" />">修改</a> <a
					href="delete?user.id=<s:property value="#qwer.id" />">删除</a> <a
					href="query?user.id=<s:property value="#qwer.id" />">查看</a></td>
			</tr>


		</s:iterator>
	</table>
</body>
</html>