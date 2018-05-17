<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="com.pt.vo.Index_p" import="com.pt.vo.Index_c"%>
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
			style="font-family: youyuan; font-size: 25px; font-weight: bold;">学生</span>
		
	</div>

	<div id="hr">
		<hr>
	</div>
<div style="margin-left: 30%;">
<form action="updateOption" method="post">
<table>
<s:iterator value="#session.option" var="o">
<tr>
<td>
</td>
<td>
<input type="text" name="o.oid" value="<s:property value="#o.oid"/>" hidden=""></td></tr>
<tr>
<td style="font-family: youyuan; font-size: 20px;">
指标id：</td><td><input type="text" name="o.iid" value="<s:property value="#o.iid"/>"  style="border: #CCC 1px solid; width: 300px; height: 30px; font-size: 15px; font-family: youyuan; border-radius: 5px;  outline: none;"></td></tr>
<tr>
<td style="font-family: youyuan; font-size: 20px;">
选项A：</td><td><input type="text" name="o.A" value="<s:property value="#o.A"/> " style="border: #CCC 1px solid; width: 300px; height: 30px; font-size: 15px; font-family: youyuan; border-radius: 5px;  outline: none;"></td></tr>
<tr>
<td style="font-family: youyuan; font-size: 20px;">
选项B：</td><td><input type="text" name="o.B" value="<s:property value="#o.B"/> " style="border: #CCC 1px solid; width: 300px; height: 30px; font-size: 15px; font-family: youyuan; border-radius: 5px;  outline: none;"></td></tr>
<tr>
<td style="font-family: youyuan; font-size: 20px;">
选项C：</td><td><input type="text" name="o.C" value="<s:property value="#o.C"/> " style="border: #CCC 1px solid; width: 300px; height: 30px; font-size: 15px; font-family: youyuan; border-radius: 5px;  outline: none;"></td></tr>
<tr>
<td style="font-family: youyuan; font-size: 20px;">
选项D：</td><td><input type="text" name="o.D" value="<s:property value="#o.D"/> " style="border: #CCC 1px solid; width: 300px; height: 30px; font-size: 15px; font-family: youyuan; border-radius: 5px;  outline: none;"></td></tr>
</s:iterator>
<tr>
<td>
</td>
<td>
<input type="submit" value="提交" style="border: #CCC 1px solid; width: 300px; height: 40px; font-size: 20px; background-color: #6573EB; font-family: youyuan; color: #CCC; font-weight: bold; border-radius:5px;"></td></tr>
</table>
</form>
</div>
</body>
</html>