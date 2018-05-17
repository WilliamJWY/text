<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.pt.vo.Role,java.util.*"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<style type="text/css">
#top_font{
	padding-top:10px;
	padding-left:15px;}
#hr{
	padding-top:10px;}
#new{
	float:right;}
input[type=button],textarea {
	border-radius: 10px;
	border: 0px solid #000;
	outline: none;
	background-color:#A4A4FF;
}
#table{
	width:100%;
	padding-top:40px;
	}
td{
	width:14%;}
a{ text-decoration:none;}
a:hover{ text-decoration:none;}
.tcdPageCode{padding: 15px 20px;text-align: left;color: #ccc;text-align:center;}
.tcdPageCode a{display: inline-block;color: #428bca;display: inline-block;height: 25px;	line-height: 25px;	padding: 0 10px;border: 1px solid #ddd;	margin: 0 2px;border-radius: 4px;vertical-align: middle;}
.tcdPageCode a:hover{text-decoration: none;border: 1px solid #428bca;}
.tcdPageCode span.current{display: inline-block;height: 25px;line-height: 25px;padding: 0 10px;margin: 0 2px;color: #fff;background-color: #428bca;	border: 1px solid #428bca;border-radius: 4px;vertical-align: middle;}
.tcdPageCode span.disabled{	display: inline-block;height: 25px;line-height: 25px;padding: 0 10px;margin: 0 2px;	color: #bfbfbf;background: #f2f2f2;border: 1px solid #bfbfbf;border-radius: 4px;vertical-align: middle;}
</style>
<body>
<div id="top_font">
<span style="font-family:youyuan; font-size:25px; font-weight:bold;">问卷管理</span>
</div>
<div id="hr">
<hr>
</div>
<div id="new">
<input type="button" value="新建问卷" style="font-family:youyuan; width:120px; height:25px; font-size:16px;" onClick="location.href='addquestionnaire.jsp'" >
</div>
<div id="table">
<table border="0" width="100%" style="text-align:center; font-family:youyuan;">
<tr>
<td style="background-color: #A4A4FF;">编号</td>
<td style="background-color: #A4A4FF;">问卷名</td>
<td style="background-color: #A4A4FF;">问卷类型</td>
<td style="background-color: #A4A4FF;">指标id</td>
<td style="background-color: #A4A4FF;">开始时间</td>
<td style="background-color: #A4A4FF;">结束时间</td>
<td style="background-color: #A4A4FF;">问卷修改</td>
</tr>

<s:iterator value="#session.qn" var="q">
<tr>
<td><s:property value="#q.qid"/></td>
<td><s:property value="#q.qname"/></td>
<td><s:property value="#q.qtype"/></td>
<td><s:property value="#q.iid"/></td>
<td><s:property value="#q.star_time"/></td>
<td><s:property value="#q.end_time"/></td>

<td><a href="QuestionnaireFind?q.qid=<s:property value="qid"/>">修改</a></td>
</tr>

</s:iterator>
</table>
</div>
<hr style="margin-top:50px;">
<div class="tcdPageCode"></div>
<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="../js/jquery.page.js"></script>
<script>
    $(".tcdPageCode").createPage({
        pageCount:1,
        current:1,
        backFn:function(p){
            console.log(p);
        }
    });
</script>
</body>
</html>