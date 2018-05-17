<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<s:property value="name" />
	--先生/小姐
	<br> 性别：
	<s:property value="#parameters.sex" />
	<br> 你
	<s:set name="age" value="age" />
	<s:if test="#age>40">太老了</s:if>
	
	<s:elseif test="#age>18&&#age<40">正合适</s:elseif>
	<s:elseif test="#age<18">太年轻了</s:elseif>
	<br> 你的爱好是：
	<s:property value="#parameters.hobby" />
	<br>
	<s:debug></s:debug>
</body>
</html>