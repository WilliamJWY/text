<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<sx:head extraLocales="utf-8"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<s:form action="re" method="post">
		<s:textfield label="姓名" name="name"></s:textfield>
		<s:textfield label="年龄" name="age"></s:textfield>
		<br>
		<s:radio list="#{'1':'男','0' :'女'}" label="性别" name="sex" value="1"></s:radio>
		<br>
		<s:checkboxlist list="#{'0':'游戏','1':'美食','2':'旅游','3':'健身','4':'二次元','5':'装扮'}"
			label="爱好" name="hobby" value="0"></s:checkboxlist><br>
		<br>
		<s:submit value="提交"></s:submit>
		<s:reset value="重置"></s:reset>
	</s:form>
</body>
</html>