<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>主页</title>
</head>

<style type="text/css">
body {
	background-image: url(../img/apic21738.jpg);
	background-repeat: no-repeat;
	background-size: 100% 100%;
	background-attachment: fixed;
}
#top{
	width:100%;
	height:90px;
	border:0px solid #000;
	vertical-align:middle;
	padding-top:10px;}
#left{
	
	border-radius: 10px;
	width:20%;
	height:700px;
	border:0px solid #000;
	float:left;
	background-color:#FFF; 
	background: rgba(230, 230, 230, 0.6);
}
#right{
	position:absolute;
	width:78.5%;
	height:700px;
	border:0px solid #000;
	margin-left:20.5%;
	}
#dj1{
	margin:auto;
	margin-top:10px;
	width:85%;
	height:50px;
	border:0px solid #000;
	border-radius: 10px;
	text-align:center;
	line-height:50px;;
	background-color:#A4A4FF;
	font-family: youyuan; 
	font-size: 25px; 
	color:#666; 
	font-weight:bold;
	}
#dj2{
	margin:auto;
	margin-top:10px;
	width:85%;
	height:50px;
	border:0px solid #000;
	border-radius: 10px;
	text-align:center;
	line-height:50px;
	background-color:#A4A4FF;
    font-family: youyuan; 
	font-size: 25px; 
	color:#666; 
	font-weight:bold;
	}
#dj3{
	margin:auto;
	margin-top:10px;
	width:85%;
	height:50px;
	border:0px solid #000;
	border-radius: 10px;
	text-align:center;
	line-height:50px;
	background-color:#A4A4FF;
    font-family: youyuan; 
	font-size:25px; 
	color:#666; 
	font-weight:bold;
	}
#dj4{
	margin:auto;
	margin-top:10px;
	width:85%;
	height:50px;
	border:0px solid #000;
	border-radius: 10px;
	text-align:center;
	line-height:50px;
	background-color:#A4A4FF;
    font-family: youyuan; 
	font-size: 25px; 
	color:#666; 
	font-weight:bold;
	}
#dj5{
	margin:auto;
	margin-top:10px;
	width:85%;
	height:50px;
	border:0px solid #000;
	border-radius: 10px;
	text-align:center;
	line-height:50px;
	background-color:#A4A4FF;
    font-family: youyuan; 
	font-size: 25px; 
	color:#666; 
	font-weight:bold;
	}
#dj1:hover{
	background-color:#A4A4FF;
	font-size:30px;
	color:#fff;
	}
#dj2:hover{
	background-color:#A4A4FF;
	font-size:30px;
	color:#fff;
	}
#dj3:hover{
	background-color:#A4A4FF;
	font-size:30px;
	color:#fff;
	}
#dj4:hover{
	background-color:#A4A4FF;
	font-size:30px;
	color:#fff;
	}
#dj5:hover{
	background-color:#A4A4FF;
	font-size:30px;
	color:#fff;
	}
#footer{
	position:relative;
	width:100%;
	height:30px;
	
	text-align:center;
	margin-top:750px;
}

a{
	text-decoration:none;
	color:#FFF;
		
}

.head{
	width:100%;
	height:100px;
	overflow:hidden;
	
}
.head00{
	width:350px;
	height:130;
	margin-left:30px;
	margin-top:15px;
}
.head01{
	font-family:youyuan;
	color:#FFF;
	 font-weight:bold;
	font-size: 35px;
}
.head02{
	color:#FFF;
	font-size: 20px;
	float:right;	
}
.head03{
	float:left;
}
.head04{
	float:right;
}
.head05{
	width:280px;
	height:50;
	float:right;
	margin-right:25px;
	color:#FFF;
	font-size:20px;
}

</style>
<link rel="stylesheet" id="pageloader-css"  href="../../../Practical Training/WebContent/css/pageloader.css" type="text/css" media="all" />


<body>
<div id="bonfire-pageloader">
	<div class="bonfire-pageloader-icon">
		<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
			 width="512px" height="512px" viewBox="0 0 512 512" enable-background="new 0 0 512 512" xml:space="preserve">
		<path id="loading-12-icon" d="M291,82.219c0,16.568-13.432,30-30,30s-30-13.432-30-30s13.432-30,30-30S291,65.65,291,82.219z
			 M261,404.781c-15.188,0-27.5,12.312-27.5,27.5s12.312,27.5,27.5,27.5s27.5-12.312,27.5-27.5S276.188,404.781,261,404.781z
			 M361.504,113.167c-4.142,7.173-13.314,9.631-20.487,5.489c-7.173-4.141-9.631-13.313-5.49-20.487
			c4.142-7.173,13.314-9.631,20.488-5.489C363.188,96.821,365.645,105.994,361.504,113.167z M188.484,382.851
			c-14.348-8.284-32.697-3.368-40.98,10.98c-8.285,14.349-3.367,32.696,10.98,40.981c14.35,8.283,32.697,3.367,40.98-10.981
			C207.75,409.482,202.834,391.135,188.484,382.851z M421.33,184.888c-8.368,4.831-19.07,1.965-23.901-6.404
			c-4.832-8.368-1.965-19.07,6.404-23.902c8.368-4.831,19.069-1.964,23.9,6.405C432.566,169.354,429.699,180.056,421.33,184.888z
			 M135.399,329.767c-8.285-14.35-26.633-19.266-40.982-10.982c-14.348,8.285-19.264,26.633-10.979,40.982
			c8.284,14.348,26.632,19.264,40.981,10.98C138.767,362.462,143.683,344.114,135.399,329.767z M436.031,277.249
			c-11.044,0-20-8.953-20-19.999c0-11.045,8.955-20.001,20.001-20.001c11.044,0,19.999,8.955,19.999,20.002
			C456.031,268.295,447.078,277.249,436.031,277.249z M115.97,257.251c-0.001-16.57-13.433-30.001-30.001-30.002
			c-16.568,0.001-29.999,13.432-30,30.002c0.001,16.566,13.433,29.998,30.001,30C102.538,287.249,115.969,273.817,115.97,257.251z
			 M401.333,364.248c-10.759-6.212-14.446-19.97-8.234-30.73c6.212-10.759,19.971-14.446,30.731-8.233
			c10.759,6.211,14.445,19.971,8.232,30.73C425.852,366.774,412.094,370.46,401.333,364.248z M135.398,184.736
			c8.285-14.352,3.368-32.698-10.98-40.983c-14.349-8.283-32.695-3.367-40.981,10.982c-8.282,14.348-3.366,32.696,10.981,40.981
			C108.768,204,127.115,199.082,135.398,184.736z M326.869,421.328c-6.902-11.953-2.807-27.242,9.148-34.145
			s27.243-2.806,34.146,9.149c6.902,11.954,2.806,27.243-9.15,34.145C349.059,437.381,333.771,433.284,326.869,421.328z
			 M188.482,131.649c14.352-8.286,19.266-26.633,10.982-40.982c-8.285-14.348-26.631-19.264-40.982-10.98
			c-14.346,8.285-19.264,26.633-10.98,40.982C155.787,135.017,174.137,139.932,188.482,131.649z">
		</svg>

	</div>

</div>










<div id="page">

<div id="top">
<div class="head">
	<div class="head00">
	<div class="head01">教师综合评价系统</div>
    <div class="head02">Teacher Evaluation System</div>
    </div>
    <div class="head05">
    <div class="head03"><a href="#">注销</a></div>
    <div class="head04" id="time">
	<script>     
	document.getElementById('time').innerHTML=new Date().toLocaleString();     
	setInterval("document.getElementByIdx_x('time').innerHTML=new Date().toLocaleString();",1000);
	function getTime()
	{
	    var time = new Date();
	    $("#time").html(time.toLocaleString());
	}
	$(function(){
	    setInterval("getTime()",1000);
	});  
	</script>
    </div>
    </div>

</div>

<div id="center">
<div id="left">

<a href="userManage.jsp" target="main" style="text-decoration:none;"><div id="dj1">用户管理</div></a>


<a href="loginAdmin" target="main" style="text-decoration:none;"><div id="dj2">角色管理</div></a>

<a href="page5.jsp" target="main" style="text-decoration:none;"><div id="dj3">修改密码</div></a>

<a href="QuestionnaireSelect.jsp" target="main" style="text-decoration:none;"><div id="dj4">问卷管理</div></a>

<a href="page7.jsp" target="main" style="text-decoration:none;"><div id="dj5">指标管理</div></a>
</div>

<div id="right">
<iframe name="main" src="page2.jsp" width="100%" height="100%" style="background-color:#FFF; background: rgba(230, 230, 230, 0.6); border-radius: 15px;" allowTransparency="true"></iframe>
</div>
</div>

</div>
<div id="footer">
			<p>
				<span style="font-family:youyuan; font-size:20px;">重庆工程学院150010104班第五小组&nbsp;版权所有&nbsp;2016-2026&nbsp;ALL Right Reserved</span> 
			</p>
</div>
</div>
<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="../../../Practical Training/WebContent/js/pageloader.js"></script>
<script>
jQuery(window).resize(function(){
	 resizenow();
});
function resizenow() {
	var browserwidth = jQuery(window).width();
	var browserheight = jQuery(window).height();
	jQuery('.bonfire-pageloader-icon').css('right', ((browserwidth - jQuery(".bonfire-pageloader-icon").width())/2)).css('top', ((browserheight - jQuery(".bonfire-pageloader-icon").height())/2));
};
resizenow();
</script>

</body>

</html>