<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<sx:head extraLocales="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>登陆界面</title>
</head>
<body>
<s:text name="welcome"></s:text>
	<a href="i18n?request_locale=zh_CN">中文</a>
	<a href="i18n?request_locale=en_US">English</a>
	<s:form action="login" method="post" name="登陆界面">
		<table>
			<tr>

				<td>用户名：<s:textfield name="user.username" key="username"></s:textfield></td>
			</tr>
			<tr>

				<td>密码：<s:password name="user.pass" key="pass" ></s:password></td>
			</tr>
		</table>
		<tr>
			<td><s:submit value="提交"></s:submit></td>
            <td><a href="tianjia.jsp">添加</a></td>

			<td><s:reset value="重置"></s:reset></td>
		</tr>

	</s:form>
	<s:debug></s:debug>
</body>
</html>