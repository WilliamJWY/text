<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
               <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>功能配置详情</title>
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
		<span style="font-family: youyuan; font-size: 25px; font-weight: bold;">功能配置详情</span>
	</div>
	<div id="hr">
		<hr>
	</div>
<s:form method="post" action="EditFunction">
<table>
<tr>
<td>
<s:property value="%{#request.r.name}"/>
<s:hidden value="%{#request.r.rid}" name="rid"></s:hidden></td></tr>
<tr><td style="font-family:youyuan; font-size:16px; padding-left:50px;"><s:checkboxlist label="角色功能"
				list="#{' 0':'修改密码',' 1':'学生评价',' 2':'同行评价',' 3':'自我评价',' 4':'查看评价',' 5':'领导评价',' 6':'用户管理',' 7':'角色管理',' 8':'问卷管理',' 9':'指标管理'}" 
				value="#request.r.function" name="function" /></td>
<td style="padding-left:100px;"><s:submit value="提交" style="border: #CCC 1px solid; width: 120px; height: 30px; font-size: 20px; background-color: #6573EB; font-family: youyuan; color: #CCC; font-weight: bold; border-radius: 5px; outline: none;" ></s:submit></td></tr>
</table>
</s:form>
</body>
</html>