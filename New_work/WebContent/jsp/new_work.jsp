<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="jquery/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="jquery/jquery.validate.js"></script>
</head>
<style type="text/css">
div{
	width:auto;
	height:auto;}
.odd{
	background-color:#FCF}
.even{
	background-color:#FC0} 
td{
	width:auto;
	height:30px;}
	
*{
	font-family:Verdana;
	font-size:100%;} 
p{
	clear:both;}
.submit{
	margin-left:12em;}
label{
	font-weight:bold;
	padding-right:5px; 
	vertical-align:top;}
label.error{
	float:none;
	color:red;
	padding-left:.5em;
	vertical-align:top;} 
img{
	width:20px;
	height:20px;
	vertical-align:middle;
	margin:6px;}
</style>
<body>
<div align="center">
    <form id="form1" action="#none" method="post">
        <table id="table1">
            <thead><h3 align="center">用户信息注册</h3></thead>
            <tbody>
                <tr><td>用户名：</td><td>
                	<table>
                        <tr style="background-color:#FC0"><td>*<input type="text" name="name" /></td></tr>
                        <tr><td><font>用户名为3-16个字符，可以为数字，字符，字母或中文</font></td></tr>
                    </table>
                </td></tr>
                <tr><td>密码：</td><td>
                	<table>
                        <tr style="background-color:#FCF"><td>*<input type="text" name="pass" /></td></tr> 
                    	<tr><td><font>最小长度6位数字，最大长度为12位数字</font></td></tr>
                    </table>
                </td></tr> 
                <tr><td>确认密码：</td><td>*<input type="text" name="pass1" /></td></tr> 
                <tr><td>性别：</td><td>
                	<input type="radio" name="sex" value="man"/>男
                    <input type="radio" name="sex" value="femal"/>女</td></tr> 
                <tr><td>email：</td><td>*<input type="text" name="email" class="required email"/></td></tr>                  
                <tr><td>固定电话：</td><td>
                	<table>
                        <tr style="background-color:#FCF"><td>*<input type="text" name="phone" /></td></tr>
                        <tr><td><font>格式：0731-12345678</font></td></tr>
                    </table>
                </td></tr>
                <tr><td>手机号码：</td><td>*<input type="text" name="tel" /></td></tr> 
            </tbody> 
        </table><br /><input type="submit" value="提交"/><input type="reset" />
    </form> 
</div> 
</body> 
<script type="text/javascript">
/*jQuery.extend(jQuery.validator.messages, {
        required: "必选字段",
        remote: "请修正该字段",
        email: "请输入正确格式的电子邮件",
        url: "请输入合法的网址",
        date: "请输入合法的日期",
        dateISO: "请输入合法的日期 (ISO).",
        number: "请输入合法的数字",
        digits: "只能输入整数",
        creditcard: "请输入合法的信用卡号",
        equalTo: "请再次输入相同的值",
        accept: "请输入拥有合法后缀名的字符串",
        maxlength: jQuercy.format("请输入一个长度最多是 {0} 的字符串"),
        minlength: jQuery.format("请输入一个长度最少是 {0} 的字符串"),
        rangelength: jQuery.format("请输入一个长度介于 {0} 和 {1} 之间的字符串"),
        range: jQuery.format("请输入一个介于 {0} 和 {1} 之间的值"),
        max: jQuery.format("请输入一个最大为 {0} 的值"),
        min: jQuery.format("请输入一个最小为 {0} 的值")
});*/
 $("#form1").validate({
     rules: {
      firstname: "required",
      lastname: "required",
     	name: {
        required: true,
        minlength: 2
      },
      pass: {
        required: true,
        minlength: 5
      },
      pass1: {
        required: true,
        minlength: 5,
        equalTo: "#password"
      },
      email: {
        required: true,
        email: true
      },
      topic: {
        required: "#newsletter:checked",
        minlength: 2
      },
      agree: "required"
    },
    messages: {
      firstname: "请输入您的名字",
      lastname: "请输入您的姓氏",
      name: {
        required: "请输入用户名",
        minlength: "用户名必需由两个字母组成"
      },
      pass: {
        required: "请输入密码",
        minlength: "密码长度不能小于 5 个字母"
      },
      pass1: {
        required: "请输入密码",
        minlength: "密码长度不能小于 5 个字母",
        equalTo: "两次密码输入不一致"
      },
      email: "请输入一个正确的邮箱",
      agree: "请接受我们的声明",
      topic: "请选择两个主题"
    }
    });
</script>
</html>