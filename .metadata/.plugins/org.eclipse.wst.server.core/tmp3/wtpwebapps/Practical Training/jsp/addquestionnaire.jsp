<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<sx:head extraLocales="utf-8" />
</head>
<script type="text/javascript" src="../jquery-3.2.0.js"></script>
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
			style="font-family: youyuan; font-size: 25px; font-weight: bold;">新建问卷</span>
			<a href="QuestionnaireSelect.jsp" style="border: #CCC 1px solid; width: 100px; height: 30px; font-size: 20px; background-color: #A4A4FF; font-family: youyuan;  font-weight: bold; border-radius: 15px; outline: none;  20px; float:right; margin-right:50px; text-decoration:none; text-align:center; line-height:30px; " >返回</a>
	</div>
	<div id="hr">
		<hr>
	</div>
    <div style="margin-left: 30%;">
	
		<form method="post" action="qqq">
		<table>
			<tr>
				<td style="font-family: youyuan; font-size: 20px;">用户名：</td>
				<td><input type="text" name="q.qname"
					style="border: #CCC 1px solid; width: 300px; height: 30px; font-size: 15px; font-family: youyuan; border-radius: 5px; outline: none;"></td>
			</tr>
			<tr>
				<td style="font-family: youyuan; font-size: 20px;">用户类型：</td>
				<td><select name="q.qtype" id="type"
					style="border: #CCC 1px solid; width: 100px; height: 30px; font-size: 15px; font-family: youyuan; border-radius: 5px; outline: none; font-family: youyuan; font-size: 15px;">
						<option value="1">学生方面</option>
						<option value="2">同行方面</option>
						<option value="3">自我方面</option>
						<option value="4">领导方面</option>
				</select></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="text"  hidden="" name="q.iid" id="iid"
					style="border: #CCC 1px solid; width: 300px; height: 30px; font-size: 15px; font-family: youyuan; border-radius: 5px; outline: none;"></td>
			<tr>
				<td style="font-family: youyuan; font-size: 20px;">开始时间：</td>
				<td><sx:datetimepicker name="q.star_time"
						displayFormat="yyyy-MM-dd" accesskey="false" language="utf-8" cssStyle="border: #CCC 1px solid; width: 300px; height: 30px; font-size: 15px; font-family: youyuan; border-radius: 5px; outline: none;"></sx:datetimepicker></td>
			</tr>
			<tr>
				<td style="font-family: youyuan; font-size: 20px;">结束时间：</td>
				<td><sx:datetimepicker name="q.end_time"
						displayFormat="yyyy-MM-dd" accesskey="false" language="utf-8"  cssStyle="border: #CCC 1px solid; width: 300px; height: 30px; font-size: 15px; font-family: youyuan; border-radius: 5px; outline: none;"></sx:datetimepicker></td>
			</tr>
			
			<tr>
				<td></td>
				<td><input type="submit" value="提交" style="border: #CCC 1px solid; width: 300px; height: 40px; font-size: 20px; background-color: #6573EB; font-family: youyuan; color: #CCC; font-weight: bold; border-radius:5px;"></td>
			</tr>
			</table>
		</form>
	
    </div>
</body>
<script type="text/javascript">
	$(document).ready(function(e) {
		if ($("#type").val() == 1) {
			$("#iid").attr("value", "1");
		}
		if ($("#type").val() == 2) {
			$("#iid").attr("value", "26");
		}
		if ($("#type").val() == 3) {
			$("#iid").attr("value", "22");
		}
		if ($("#type").val() == 4) {
			$("#iid").attr("value", "13");
		}
	});
</script>
</html>