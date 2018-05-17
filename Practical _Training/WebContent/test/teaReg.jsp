<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script type="text/javascript" src="../jquery-3.2.0.js"></script>

<title>addUser</title>
</head>
<body>
<form action='addTea' method="post" >
<input name="tea.rid" type="hidden" value="02">
    用户昵称:<input type="text" name="tea.tname" ><!--onBlur="submitDwr(this.value)"-->
               
    用户密码:<input type="password" name="tea.tpass">
   <input type="submit" value="注册">
</form>
</body>
</html>