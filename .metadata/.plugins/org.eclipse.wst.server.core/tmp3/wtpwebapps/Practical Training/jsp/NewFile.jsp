<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加子级指标</title>
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
			style="font-family: youyuan; font-size: 25px; font-weight: bold;">添加子级指标</span>
		<a href="page7.jsp"
			style="border: #CCC 1px solid; width: 100px; height: 30px; font-size: 20px; background-color: #A4A4FF; font-family: youyuan; font-weight: bold; border-radius: 15px; outline: none; 20 px; float: right; margin-right: 50px; text-decoration: none; text-align: center; line-height: 30px;">返回</a>
	</div>

	<div id="hr">
		<hr>
	</div>
	<div style="margin-left: 30%;">
	<form action="addIndex" method="post">
		<table>
			<tr>
				<td></td>
				<td><select name="i.pid" style="border: #CCC 1px solid; width: 100px; height: 30px; font-size: 15px; font-family: youyuan; border-radius: 5px; outline: none; font-family: youyuan; font-size: 15px;">
						<s:iterator value="#session.ip" var="i">
							<option value="<s:property value="#i.pid"/>">
								<s:property value="#i.pname" />
							</option>
						</s:iterator>
				</select></td>
			</tr>
			<tr>
				<td  style="font-family: youyuan; font-size: 20px;">指标名：</td>
				<td><input type="text" name="i.iname" style="border: #CCC 1px solid; width: 300px; height: 30px; font-size: 15px; font-family: youyuan; border-radius: 5px;  outline: none;"></td>
			</tr>
			<tr>
				<td  style="font-family: youyuan; font-size: 20px;" >权重：</td>
				<td><input type="text" name="i.weight" style="border: #CCC 1px solid; width: 300px; height: 30px; font-size: 15px; font-family: youyuan; border-radius: 5px;  outline: none;"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="提交" style="border: #CCC 1px solid; width: 300px; height: 40px; font-size: 20px; background-color: #6573EB; font-family: youyuan; color: #CCC; font-weight: bold; border-radius:5px;"></td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>