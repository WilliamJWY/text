<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<html>
<head>
<title><s:text name="teainfo"></s:text></title>
</head>
<sx:head  extraLocales="utf-8"/>
<body>
<table border="1" >
<s:form action="UpdateTea" method="post">
<s:hidden value="#request.Teacher.tid"></s:hidden>
<tr>
<td>工号：<s:textfield name="tc.jobid"  value="%{#request.Teacher.jobid}"></s:textfield></td>
</tr>
<tr>
<td>密码：<s:password  name="tc.tpass"  > </s:password></td>
</tr>
<tr>
<td>权限：<s:radio name="tc.rid" list="%{#{'2':'老师','3':'领导','4':'管理员'}}" value="%{#request.Teacher.rid}" theme="simple"></s:radio></td>
</tr>
<tr>
<td>状态：<s:radio name="tc.tstate" list="%{#{'0':'注销','1':'激活'}}" value="%{#request.Teacher.tstate}" theme="simple"></s:radio></td>
</tr>
<tr>
<td>姓名：<s:textfield name="tc.tname"  value="%{#request.Teacher.tname}"></s:textfield></td>
</tr>
<tr>
<td colspan="2"><s:submit  value="提交" ></s:submit><s:reset value="重置"></s:reset></td>
</tr>
</s:form>
</table>


</body>
</html>