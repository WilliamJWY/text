<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<sx:head extraLocales="utf-8" />
</head>
<style type="text/css">
#top_font{
	padding-top:10px;
	padding-left:15px;}
</style>
<body>
<div id="top_font">
<span style="font-family:youyuan; font-size:25px; font-weight:bold;">问卷管理</span>
</div>
<div id="hr">
<hr>
</div>
<div style="margin-left: 30%;">
<form action="QuestionnaireEdit" method="post">
<s:hidden value="#session.ques.pid" name="q.pid"></s:hidden>
	<table>
		<tr>
			<td style="font-family: youyuan; font-size: 20px;">问卷名称：<input type="text" style="border: #CCC 0px solid; width:200px; height:30px; font-size:15px; font-family:youyuan; border-radius:5px; outline:none" value="<s:property value="#session.ques.qname" />" name="q.qname"></td>
			</tr>
			<tr>
			<td style="font-family: youyuan; font-size: 20px;">开始时间：<s:property value="#session.ques.star_time"/>
			<sx:datetimepicker name="q.star_time" displayFormat="yyyy-MM-dd"
				accesskey="false" language="utf-8"
				cssStyle="border: #CCC 0px solid; width: 200px; height: 30px; font-size: 15px; font-family: youyuan; border-radius: 5px; outline: none;"></sx:datetimepicker>
			</td>
			</tr>
			<tr>
			<td style="font-family: youyuan; font-size: 20px;">结束时间：<s:property value="#session.ques.end_time"/>
			<sx:datetimepicker name="q.end_time" displayFormat="yyyy-MM-dd"
				accesskey="false" language="utf-8"
				cssStyle="border: #CCC 0px solid; width: 200px; height: 30px; font-size: 15px; font-family: youyuan; border-radius: 5px; outline: none;"></sx:datetimepicker>
			</td>
			</tr>
			<tr>
			<td style="text-align: center;"><input type="submit" value="提交" style="border: #CCC 1px solid; width: 300px; height: 40px; font-size: 20px; background-color: #6573EB; font-family: youyuan; color: #CCC; font-weight: bold; border-radius:5px; "></td>
		</tr>
	</table>
</form>
</div>
</body>
</html>