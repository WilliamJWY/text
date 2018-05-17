<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<s:form method="post" action="addRole">
角色名称
<s:textfield name="role.name"></s:textfield><br/>
	角色状态<s:radio list="#{'1':'激活','0':'注销'}" label="角色状态" name="role.rstate"></s:radio><br/>
	<s:submit value="提交"></s:submit><br/>
</s:form>
</body>
</html>