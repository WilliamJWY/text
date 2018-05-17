<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<form action="addIndex" method="post">

指标名<input type="text"name="i.iname"><br>
<select name="i.pid">
<s:iterator value="#session.ip" var="i">
<option value="<s:property value="#i.pid"/>"><s:property value="#i.pname"/></option>
</s:iterator>
</select><br>
权重<input type="text" name="i.weight"><br>
<input type="submit" value="提交">
</form>

</body>
</html>