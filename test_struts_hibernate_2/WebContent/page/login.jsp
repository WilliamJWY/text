<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
   <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style type="text/css">
#ss {
	color: #F00;
}
</style>
</head>
<body>
请登录！！
<form action="login" method="post">
<table>

<tr>
<td>用户名：</td>
<td><s:textfield name="user.name"></s:textfield></td>
<td id="ss">
</td>
</tr>

<tr>
<td id="ss">密码：</td>
<td  id="ss"><s:textfield name="user.pass"></s:textfield></td>
<td></td>
</tr>

<tr>
<td colspan="2"><s:submit value="提交"></s:submit>
<s:reset value="重置"></s:reset>
</td>

</tr>

</table>

 
 

</form>

<s:debug></s:debug>
</body>
</html>