<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>

<script type="text/javascript" src="/struts_2_2/dwr/util.js"></script>
<script type="text/javascript" src="/struts_2_2/dwr/engine.js"></script>
<script type="text/javascript" src="/struts_2_2/dwr/interface/testdwr.js"></script>


<script type="text/javascript">
function  sendtest(name){	
	
	testdwr.execute(name,callbackTest);
	
}

function callbackTest(data){
	alert(data);
}
</script>
<body>

<input type="text" name="username">
<input type="button" value="提交" name="radio" onclick="sendtest(username.value)">

</body>
</html>