<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<html>
<head>
<title><s:text name="stuinfo"></s:text></title>
</head>
<sx:head  extraLocales="utf-8"/>
<body>
<table border="1" >
<s:form action="UpdateStu" method="post">
<s:hidden value="#request.Student.sid"></s:hidden>
<tr>
<td>用户名：<s:textfield name="stu.sname"  value="%{#request.Student.sname}"></s:textfield></td>
</tr>
<tr>
<td>密码：<s:password  name="stu.spass"  > </s:password></td>
</tr>
<tr>
<td>权限：<s:radio name="stu.rid" list="%{#{'1':'学生'}}" value="%{#request.Student.rid}" theme="simple"></s:radio></td>
</tr>
<tr>
<td>状态：<s:radio name="stu.sstate" list="%{#{'0':'注销','1':'激活'}}" value="%{#request.Student.sstate}" theme="simple"></s:radio></td>
</tr>
<tr>
<td>班级：<s:textfield name="stu.classid"  value="%{#request.Student.classid}"></s:textfield></td>
</tr>
<tr>
<td>姓名：<s:textfield name="stu.suser"  value="%{#request.Student.suser}"></s:textfield></td>
</tr>
<tr>
<td colspan="2"><s:submit  value="提交" ></s:submit><s:reset value="重置"></s:reset></td>
</tr>
</s:form>
</table>


</body>
</html>