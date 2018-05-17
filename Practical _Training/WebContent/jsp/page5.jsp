<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
</style>

<script type="text/javascript">
        var isShow=true;
        function change(){
            var v=document.getElementById("ps");
            if (isShow) {
                v.type="text";
                isShow=false;
            }else{
                v.type="password";
                isShow=true;
            }
        };


    </script>

<body>
<div id="top_font">
<span style="font-family:youyuan; font-size:25px; font-weight:bold;">修改密码</span>
</div>
<div id="hr">
<hr>
</div>

<div id="password">

</div>


</body>
</html>