<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="sx" uri="/struts-dojo-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<sx:head extraLocales="utf-8"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1" >
<s:form action="register" method="post">

<tr>
<td>用户名：<s:textfield name="user.name"></s:textfield></td>
<td></td>
</tr>

<tr>
<td>密码：<s:password  name="user.pass"></s:password></td>
<td></td>
</tr>
<tr>
<td>性别：<s:radio list="#{'1':'男','0':'女'}" name="user.sex" value="1"></s:radio></td>
<td></td>
</tr>

<tr>
<td>爱好：<s:checkboxlist list="#{'0':'游戏','1':'美食','2':'睡觉'}" name="user.hobby" value="0"></s:checkboxlist></td>
<td></td>
</tr>

<tr>
<td>籍贯：<s:select list="#{'0':'合川','1':'巴南','2':'九龙坡'}"  name="user.addr" value="1"></s:select></td>
<td></td>
</tr>

<tr>
<td>出生日期：<sx:datetimepicker name="user.date" displayFormat="yyyy-MM-dd" accesskey="false" language="utf-8"></sx:datetimepicker></td>
<td></td>
</tr>
<tr>
<td colspan="2"><s:submit  value="提交" ></s:submit><s:reset value="重置"></s:reset></td>

</tr>
</s:form>
</table>
</body>
</html>