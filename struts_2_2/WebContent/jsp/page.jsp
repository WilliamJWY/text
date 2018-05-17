<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<sx:head extraLocales="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册页面</title>
</head>
<body>
	<a href="login.jsp">返回登录</a>
	<a href="i18n?request_locale=zh_CN">中文</a>
	<a href="i18n?request_locale=en_US">English</a>
	<center>
		<h1>重庆工程学院订票系统</h1>
		<h2>注册页面</h2>
		<s:form action="ree" method="post" enctype="multipart/form-data">

			<table>
				<tr>
					<td><s:file name="file" key="file"></s:file></td>
					<td><s:fielderror fieldName="file"></s:fielderror></td>
				</tr>
				<tr>
					<td><s:textfield name="Username" key="Username"></s:textfield></td>
					<td><s:fielderror fieldName="Username"></s:fielderror></td>
				</tr>
				<tr>
					<td><s:password name="pass" key="pass"></s:password></td>
					<td><s:fielderror fieldName="pass"></s:fielderror></td>
				</tr>
				<tr>

					<td><s:password name="repass" key="repass"></s:password></td>
					<td><s:fielderror fieldName="repass"></s:fielderror></td>
				</tr>
				<tr>

					<td><s:textfield name="age" key="age"></s:textfield></td>
					<td><s:fielderror fieldName="age"></s:fielderror></td>
				</tr>
				<tr>

					<td><s:radio list="#{'1':'男','0' :'女'}" name="sex" key="sex"
							value="1"></s:radio></td>
					<td><s:fielderror fieldName="sex"></s:fielderror></td>
				</tr>
				<tr>

					<td><s:checkboxlist
							list="#{'0':'游戏','1':'美食','2':'旅游','3':'健身'}" name="hobby"
							key="hobby" value="0"></s:checkboxlist></td>
				</tr>
				<tr>

					<td><s:select list="#{'0':'合川','1':'巴南','2':'九龙坡'}"
							name="addr" key="addr"></s:select></td>
				</tr>
				<tr>
					<td><sx:datetimepicker name="birth" key="birth"
							displayFormat="yyyy-MM-dd" accesskey="false" language="utf-8"></sx:datetimepicker></td>
					<td><s:fielderror fieldName="birth"></s:fielderror></td>
				</tr>
				<tr>
					<td colspan="2"><s:submit key="submit"></s:submit></td>
						<td><s:reset key="reset"></s:reset></td>
				</tr>
			</table>
		</s:form>
	</center>
	<s:debug></s:debug>
</body>
</html>