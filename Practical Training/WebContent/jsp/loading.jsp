<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
<title>Insert title here</title>
</head>
<style type="text/css">
body, div, ul, li { margin:0; padding:0; }
body { font:12px/1.5 \5fae\8f6f\96c5\9ed1; }
ul { list-style-type:none; }
#cen {font-size:36px; color:#60F; text-align:center;}
#div1 { position:absolute; display:none;}
#div1 ul { position:absolute; float:left; border:1px solid #979797;background:#f1f1f1; padding:2px; box-shadow:2px 2px 2px rgba(0, 0, 0, .6); width:230px; overflow:hidden; }
#div1 ul li { float:left; clear:both; height:24px; cursor:pointer; line-height:24px; white-space:nowrap; padding:0 30px; width:100%; display:inline-block; }
#div1 ul li:hover { background:#E6EDF6; border:1px solid #B4D2F6; }
</style>
<script type="text/javascript">
$(function(){ 
	$(document).on("contextmenu",function(e){  
		return false;
	});
	$(document).mousedown(function(e){  
		var oDiv = $('#div1'); 
		oDiv.css("display","none") 
		return false;
	});
	$("#cen").mousedown(function(e) { 
		e.preventDefault();
		//右键为3
		if (3 == e.which) {
			var oEvent = e||event;
			var oDiv = $('#div1');   
			oDiv.css("display","block").css("left",e.pageX + "px").css("top",e.pageY + "px");  
		} else if (1 == e.which) {
			//左键为1
			var oDiv = $('#div1'); 
			oDiv.css("display","none")   
		} 
		return false;
	});
	
});

/*document.oncontextmenu = function (ev)
{
	var oEvent=ev||event;
	var oDiv=document.getElementById('div1');   
	oDiv.style.display='block';
	oDiv.style.left=oEvent.clientX+'px';
	oDiv.style.top=oEvent.clientY+'px';   
	return false;
};
document.onclick=function ()
{
	var oDiv=document.getElementById('div1');   
	oDiv.style.display='none';
};*/
</script>
<body>
<div id="cen">点击鼠标右键</div>
<div id="div1">
      <ul>
           <li><strong>JavaScript 学习</strong></li>
           <li>响应用户操作</li>
           <li>事件驱动</li>
           <li>元素属性操作</li>
           <li>函数传参</li>
           <li>JavaScript组成</li>
           <li>JavaScript出现的位置、优缺点</li>
           <li>变量、类型、变量作用域</li>
           <li>闭包</li>
           <li>运算符</li>
           <li>程序流程控制</li>
           <li>定时器的使用</li>
     </ul>
</div>
</body>
</html>