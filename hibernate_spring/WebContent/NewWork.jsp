<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>无标题文档</title>
<script type="text/javascript" src="jquery-3.2.0.min.js"></script>
</head>
<style type="text/css">
</style>
<script type="text/javascript">
$(document).ready(function(){
	$(":submit").css("background-color","red");
	
    $("input").focus(function(){
		 $(this).css("background-color","#F00");
		});
		$("input").blur(function(){
			$(this).css("background-color","#FFF");
			});
		$("button").click(function(){
			var user=$("input:first").val();
			if(user.length>6&&user.length<10){
				$("<span>通过</span>").insertAfter("input:first");
				}else{
					$("<span>失败</span>").insertAfter("input:first");
					}
			});
});

</script>

<body>
<div class="n1">
<table>
<tr>
<td>
用户名</td><td><input class="n2" type="text" name="user"/></td>
</tr>
<tr>
<td>
密码</td><td><input class="n2" type="password"  name="pass"/></td>
</tr>
<tr>
<td>
</td>
<td>
<button>提交</button> <input type="submit"></td>
</tr>
<tr>
<td>
</td>
<td>

</td>
</tr>
<tr>
<td>

</td>
<td>
</td>
</tr>
</table>
</div>
</body>
</html>
