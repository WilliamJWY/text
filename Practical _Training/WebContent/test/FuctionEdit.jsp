<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
               <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>功能配置详情</title>
</head>
<body>
<s:form method="post" action="EditFunction">
<table>
<tr>
<td>
<s:property value="%{#request.r.name}"/>
<s:hidden value="%{#request.r.rid}" name="rid"></s:hidden></td></tr>
<tr><td><s:checkboxlist label="角色功能"
				list="#{' 0':'修改密码',' 1':'学生评价',' 2':'同行评价',' 3':'自我评价',' 4':'查看评价',' 5':'领导评价',' 6':'用户管理',' 7':'角色管理',' 8':'问卷管理',' 9':'指标管理'}" 
				value="#request.r.function" name="function"/></td></tr>
<tr><td><s:submit value="提交"></s:submit></td></tr>
</table>
</s:form>
</body>
</html>