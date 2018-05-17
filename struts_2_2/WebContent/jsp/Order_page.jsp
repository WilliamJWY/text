<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>订单</title>
</head>
<body>
<a href="login.jsp">退出</a>
<center>
		<h1>重庆工程学院订票系统</h1>
		<h2>订单确认</h2>
<s:form action="" method="post" >
<table border="0">
<tr>
<td>
证件类型:
</td>
<td>
<s:property value="Document_type" />
</td>
</tr>

<tr>
<td>
证件号码:
</td>
<td>
<s:property value="Identification_Number" />
</td>
</tr>

<tr>
<td>
单程/返程:
</td>
<td>
<s:property value="objective" />
</td>
</tr>

<tr>
<td>
出发日期:
</td>
<td>
<s:property value="C_Date" />
</td>
</tr>

<tr>
<td>
返回日期:
</td>
<td>
<s:property value="F_Date" />
</td>
</tr>
</table>
</s:form>
</center>
</body>
</html>