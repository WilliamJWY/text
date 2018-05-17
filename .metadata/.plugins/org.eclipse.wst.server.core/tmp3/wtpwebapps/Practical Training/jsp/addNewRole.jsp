<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
#top_font {
	padding-top: 10px;
	padding-left: 15px;
}

#hr {
	padding-top: 10px;
}
</style>
<body>
<div id="top_font">
		<span
			style="font-family: youyuan; font-size: 25px; font-weight: bold;">新建用户</span>
			<a href="adminManage.jsp" style="border: #CCC 1px solid; width: 100px; height: 30px; font-size: 20px; background-color: #A4A4FF; font-family: youyuan;  font-weight: bold; border-radius: 15px; outline: none;  20px; float:right; margin-right:50px; text-decoration:none; text-align:center; line-height:30px; " >返回</a>
	</div>
	<div id="hr">
		<hr>
	</div>
	
	
	<div style="margin-left:30%;">
<s:form method="post" action="addRole">
<table>
<tr>
<td>
<span style="font-family:youyuan; font-size:20px;">角色名称：</span>
</td>
<td>
<s:textfield name="role.name" cssStyle="border: #CCC 1px solid; width: 300px; height: 30px; font-size: 15px; font-family: youyuan; border-radius: 5px;  outline: none;" ></s:textfield>
</td>
</tr>
<tr>
<td>
<span style="font-family:youyuan; font-size:20px;">角色状态：</span>
</td>
<td style="font-family:youyuan; font-size:20px; text-align:center;">
<s:radio list="#{'1':'激活','0':'注销'}" label="角色状态" name="role.rstate"></s:radio>
</td>
</tr>
<tr>
<td>
</td>
<td>
	<s:submit value="提交" cssStyle="border: #CCC 1px solid; width: 300px; height: 40px; font-size: 20px; background-color: #6573EB; font-family: youyuan; color: #CCC; font-weight: bold; border-radius: 5px; "></s:submit>
    </td>
</table>
</s:form>
</div>
</body>
</html>