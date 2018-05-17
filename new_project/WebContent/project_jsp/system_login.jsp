<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>   
    <%@taglib prefix="sx" uri="/struts-dojo-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录页面</title>
</head>
<body>
 <a href="i18n?request_locale=zh_CN">中文</a>
 <a href="i18n?request_locale=en_US">English</a>
重庆工程学院订票系统

<s:form action="ree" method="post">
<tr>
<td><s:textfield  name="Username" key="Username"></s:textfield></td>
<td><s:fielderror fieldName="Username"></s:fielderror></td>
</tr>

<tr>
<td><s:password name="pass" key="pass"></s:password></td>
<td><s:fielderror fieldName="pass"></s:fielderror></td>
</tr>

<tr>
<td colspan="2"><s:submit  key="submit"></s:submit><s:reset  key="reset"></s:reset></td>
</tr>
</s:form>
</body>
</html>