<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<sx:head extraLocales="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>��½����</title>
</head>
<body>
<s:text name="welcome"></s:text>
	<a href="i18n?request_locale=zh_CN">����</a>
	<a href="i18n?request_locale=en_US">English</a>
	<s:form action="login" method="post" name="��½����">
		<table>
			<tr>

				<td>�û�����<s:textfield name="user.username" key="username"></s:textfield></td>
			</tr>
			<tr>

				<td>���룺<s:password name="user.pass" key="pass" ></s:password></td>
			</tr>
		</table>
		<tr>
			<td><s:submit value="�ύ"></s:submit></td>
            <td><a href="tianjia.jsp">���</a></td>

			<td><s:reset value="����"></s:reset></td>
		</tr>

	</s:form>
	<s:debug></s:debug>
</body>
</html>