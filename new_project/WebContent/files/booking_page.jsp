<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<sx:head extraLocales="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>订票页面</title>
</head>
<body>
	<a href="login.jsp">返回登录</a>
	<a href="i18nnn?request_locale=zh_CN">中文</a>
	<a href="i18nnn?request_locale=en_US">English</a>
	<center>
		<h1>重庆工程学院订票系统</h1>
		<h2>订票页面</h2>
		<s:form action="booking_page" method="post">

			<table>

				<tr>
					<td><s:checkboxlist list="#{'居民身份证':'居民身份证','学生证':'学生证','毕业证':'毕业证'}"
							name="Document_type" key="Document_type" value="0"></s:checkboxlist></td>
					<td><s:fielderror fieldName="Document_type"></s:fielderror></td>
				</tr>

				<tr>
					<td><s:textfield name="Identification_Number"
							key="Identification_Number"></s:textfield></td>
					<td><s:fielderror fieldName="Identification_Number"></s:fielderror></td>
				</tr>

				<tr>
					<td><s:radio list="#{'单程':'单程','返程' :'返程'}" name="objective"
							key="objective" value="1"></s:radio></td>
					<td><s:fielderror fieldName="objective"></s:fielderror></td>
				</tr>

				<tr>
					<td><sx:datetimepicker name="C_Date" key="C_Date"
							displayFormat="yyyy-MM-dd" accesskey="false" language="utf-8"></sx:datetimepicker></td>
					<td><s:fielderror fieldName="C_Date"></s:fielderror></td>
				</tr>

				<tr>
					<td><sx:datetimepicker name="F_Date" key="F_Date"
							displayFormat="yyyy-MM-dd" accesskey="false" language="utf-8"></sx:datetimepicker></td>
					<td><s:fielderror fieldName="F_Date"></s:fielderror></td>
				</tr>
				<tr>
					<td colspan="2"><s:submit key="submit"></s:submit> <s:reset
							key="reset"></s:reset></td>
				</tr>
			</table>
		</s:form>
	</center>
</body>
</html>