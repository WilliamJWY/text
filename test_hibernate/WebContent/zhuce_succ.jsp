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
	�û�����
	<s:property value="user.username" />
	<table border="1">

		<tr>
			<td>���</td>
			<td>�û���</td>
			<td>����</td>
			<td>����</td>
		</tr>
		<s:iterator value="#request.listuser" var="qwer">


			<tr>
				<td><s:property value="#qwer.id" /></td>
				<td><s:property value="username" /></td>
				<td><s:property value="pass" /></td>
				<td><input type="button" onclick="register()" value="���">
					<a href="edite?user.id=<s:property value="#qwer.id" />">�޸�</a> <a
					href="delete?user.id=<s:property value="#qwer.id" />">ɾ��</a> <a
					href="query?user.id=<s:property value="#qwer.id" />">�鿴</a></td>
			</tr>


		</s:iterator>
	</table>
</body>
</html>