<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录页面</title>
</head>
<script type="text/javascript">
	function register() {
		var url = "page.jsp";
		window.location.href = url;
	}
</script>
<body>
	<a href="i18nn?request_locale=zh_CN">中文</a>
	<a href="i18nn?request_locale=en_US">English</a>
	<center>
		<h1>重庆工程学院订票系统</h1>
		<s:form action="reee" method="post">
			<table>
				<tr>
					<td><s:textfield name="Username" key="Username"></s:textfield></td>
					<td><s:fielderror fieldName="Username"></s:fielderror></td>
				</tr>

				<tr>
					<td><s:password name="pass" key="pass"></s:password></td>
					<td><s:fielderror fieldName="pass"></s:fielderror></td>
				</tr>

				<tr>
					<td><s:submit key="submit"></s:submit></td>
					<td><s:reset key="reset"></s:reset></td>
				</tr>
				
				<tr>
					<td><input type="button" onclick="register()"
						value="<s:text name="Submit"></s:text>"></td>
				</tr>
			</table>
		</s:form>
	</center>
</body>
</html>