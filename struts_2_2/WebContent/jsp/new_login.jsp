<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">

</script>
<body>
<input type="text" name="user">
<input type="password" name="pass">
<input type="button" value="提交" onclick="test(f1.user.value)">
<s:reset value="重置"></s:reset>
</body>
</html>