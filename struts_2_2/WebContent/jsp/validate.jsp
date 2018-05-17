<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>   
    <%@taglib prefix="sx" uri="/struts-dojo-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<s:form action="ree" method="post">
<table>
<tr>
<td>用户名</td>
<td><s:textfield  name="Username"></s:textfield></td>
<td><s:fielderror name="Username" ></s:fielderror></td>
</tr>
<tr>
<td>密码</td>
<td><s:password name="pass"></s:password></td>
</tr>
<tr>
<td colspan="2"><s:submit value="提交" ></s:submit><s:reset value="重置"></s:reset></td>
</tr>
</table>
</s:form>
</body>
</html>