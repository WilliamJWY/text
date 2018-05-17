<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
    <%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<sx:head extraLocales="utf-8" />
</head>
<script type="text/javascript" src="../jquery-3.2.0.js"></script>
<body>
<form method="post" action="qqq" >
用户名<input type="text" name="q.qname"><br>
用户类型<select name="q.qtype" id="type">
<option value="1">学生方面</option>
<option value="2">教师方面</option>
<option value="3">同行方面</option>
<option value="3">领导方面</option>
</select><br>
<input type="text" hidden="" name="q.iid" id="iid">
开始时间<sx:datetimepicker name="q.star_time" displayFormat="yyyy-MM-dd" accesskey="false" language="utf-8"></sx:datetimepicker><br>
结束时间<sx:datetimepicker name="q.end_time" displayFormat="yyyy-MM-dd" accesskey="false" language="utf-8"></sx:datetimepicker><br>
<input type="text" name="p.subject"><br>
<input type="submit" value="提交">
</form> 

</body>
<script type="text/javascript">
$(document).ready(function(e) {
    if($("#type").val()==1){
    	$("#iid").attr("value","1");
    }
	if($("#type").val()==2){
    	$("#iid").attr("value","26");
    }
	if($("#type").val()==3){
    	$("#iid").attr("value","22");
    }
	if($("#type").val()==4){
    	$("#iid").attr("value","13");
    }
});
</script>
</html>