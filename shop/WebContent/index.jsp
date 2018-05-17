<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>淘宝网首页</title>
</head>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

li {
	list-style: none;
	text-align: center;
	line-height: 25px;
}
.clear{
clear:both;
height:0;
overflow:hidden;
}
.login ul li {
	width: 120px;
	float: left;
	border: 0px #333 dashed;
	background: #f0f0f0;
	line-height: 30px;
}

.login ul li ul {
	display: none;
}

.login ul li a:hover {
	color: #ff0000;
	background: #ffffff;
}

.login ul li a {
	text-decoration: none;
	color: #333333;
	font-size: 12px;
	display: block;
	color: #8e8e8e;
}

.login ul li:hover ul,li a:hover ul {
	display: block;
	width: 120px;
	position: absolute;
}

.login ul li ul li {
	background-color: #ffffff;
	width: 120px;
}

.login ul ul li a:hover {
	background: #ffffff;
}

.login {
	width: 1200px;
	height: 30px;
	margin-left: auto;
}

#top {
	width: 100%;
	height: 30px;
	background: #f0f0f0;
}

#search {
	text-align: center;
	height: 130px;
	width: 1200px;
	margin-left: auto;
	margin-right: auto;
}

.search_form {
	margin-top: 30px;
}

input.style1 {
	border: 2px solid red;
	width: 410px;
	height: 35px;

}

input.style2 {
	width: 40px;
	height: 39px;
	border: none;
	background-color: #f10215;
	font-size: 15px;
	font-weight: 900;
	color: #fff;
margin-right:11%;
}


.font {
	font-size: 12px;
	color: #8e8e8e;
	letter-spacing: 3px;
	float-right: 500px;
}

.logo {
	float: left;
}

#Menu {
	background-color: #DD2727;
	height: 36px;
	width: 100%;
}



.border {
	border: 0px solid #000000;
	width: 1200px;
	height: 500px;
	margin-left:auto;
margin-right:auto;
	
}

.left { 
	float:left;
	width: 210px;
	height: 500px;
	background: #7b7b7b;
	color: #fffff;
	font-family: sans-serif;
	text-indent: 19px;
	letter-spacing: 2px;
	font-size: 15px;
left:-1px;;
}

a {
	text-decoration: none;
}

.content { 
	width: 750px;
	height: 350px; 
	float:left;
	padding-left:30px;
}

.right { 
	width: 180px;
	float:right;
	height: 500px; 
	background: #7b7b7b;
	color: #ffffff;
	font-weight: bold;
}

.shang {
	border: 0px solid #000000;

	width: 180px;
	height: 245px;
	font-family: sans-serif;
	font-size: 13px;
	letter-spacing: 3px;
}

.xia {
	border: 0px solid #000000; 
	width: 180px;
	height: 250px; 
}

.bottom_a { 
float:left; 
	width: 365px;
	height: 135px; 
	padding-left:30px;
	padding-top:15px;
}

.bottom_b { 
	float:right;
	width: 365px;
	height: 135px; 
	padding-right:30px;
	padding-top:15px;
}

#bottom {
	border: 0spx solid #000000;
	width: 1198px;
	height: 700px;
margin-left:auto;
margin-right:auto;
padding-top:20px;
}

.menu_logo {
	border: 0px solid #000000;
	width: 1198px;
	height: 300px;
	margin-bottom: 25px;
	text-align: center;
}

.commodity {
	border: 0px solid #000000;
	width: 1198px;
	height: 300px;
	margin-bottom: 25px;
	text-align: center;
}

.text {
	border: 0px solid #000000;
	width: 1198px;
	height: 50px;
	font-weight: bold;
	text-align: center;
}
</style>
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
}

ul,li {
	list-style: none;
}

img {
	border: none;
}

li,input,select,textarea,img {
	vertical-align: middle;
}

.clear {
	clear: both;
	line-height: 0px;
	font-size: 0px;
	height: 0px;
	overflow: hidden;
}

#picshow {
	width: 100%;
	height: 100%;
	overflow: hidden;
}

#picshow  ul {
	width: 100%;
	height: 100%;
	overflow: hidden;
}

#picshow ul li {
	width: 100%;
	height: 100%;
	overflow: hidden;
}

#picshow {
	position: relative;
}

#shuzi {
	position: absolute;
	right: 5px;
	bottom: 5px;
}

#shuzi  span {
	background: url(images/yuan2.gif) no-repeat;
	color: #fff;
	margin-left: 3px;
	margin-right: 3px;
	padding-left: 5px;
	padding-right: 5px;
	font-size: 14px;
	cursor: pointer;
}

#shuzi  .on {
	background: url(images/yuan.gif) no-repeat;
	color: #03F;
}
</style>
<body>
	<div id="top">
		<div class="login">
			<ul>
				<li><a href="#">用户： 你好</a>
					<ul>
						<li><a href="#">账号管理</a></li>
						<li><a href="#">退出</a></li>

					</ul></li>
				<li><a href="#">免费注册</a></li>
				<li><a href="#">淘宝网首页</a></li>
				<li><a href="#">我的淘宝</a>
					<ul>
						<li><a href="#">已买到的宝贝</a>
					</ul></li>
				<li><a href="shopping_cart.jsp">购物车</a></li>
				<li><a href="#">商品分类</a>
				<ul>
						<li><a href="cloth.jsp">男装女装</a></li>
						<li><a href="cosmetics.jsp">护肤彩妆</a></li>
						<li><a href="electric.jsp">家用电器</a></li>
						<li><a href="cate.jsp">汇吃美食</a></li>
					</ul>
				<li><a href="#">联系客服</a></li>
			</ul>

		</div>
	</div>

	<div id="search">
		<div class="logo">
			<img src="img/logo.gif" width="300px" height="130px" />
		</div>

		<div class="search_form">
			<input type="text" name="ss" class="style1"> <input
				type="button" value="搜索" class="style2">
		</div>
	</div>
	<div id="Menu"></div>

	<div class="border">
		<div class="left">
			<a href="#" style="color: #ffffff; font-weight: bold;">家用电器</a><br>
			<p>
				<a href="#" style="color: #ffffff; font-weight: bold;">手机/</a> <a
					href="#" style="color: #ffffff; font-weight: bold;">数码/</a> <a
					href="#" style="color: #ffffff; font-weight: bold;">电脑办公</a><br>
			<p>
				<a href="#" style="color: #ffffff; font-weight: bold;">电子书</a> <br>
			<p>
				<a href="#" style="color: #ffffff; font-weight: bold;">男装/</a> <a
					href="#" style="color: #ffffff; font-weight: bold;">女装/</a> <a
					href="#" style="color: #ffffff; font-weight: bold;">童装</a>
			<p>
				<a href="#" style="color: #ffffff; font-weight: bold;">运动/</a> <a
					href="#" style="color: #ffffff; font-weight: bold;">户外/</a> <a
					href="#" style="color: #ffffff; font-weight: bold;">钟表</a><br>
				<a href="#" style="color: #ffffff; font-weight: bold;">手机/</a> <a
					href="#" style="color: #ffffff; font-weight: bold;">数码/</a> <a
					href="#" style="color: #ffffff; font-weight: bold;">电脑办公</a><br>
			<p>
				<a href="#" style="color: #ffffff; font-weight: bold;">电子书</a> <br>
			<p>
				<a href="#" style="color: #ffffff; font-weight: bold;">男装/</a> <a
					href="#" style="color: #ffffff; font-weight: bold;">女装/</a> <a
					href="#" style="color: #ffffff; font-weight: bold;">童装</a>
			<p>
				<a href="#" style="color: #ffffff; font-weight: bold;">运动/</a> <a
					href="#" style="color: #ffffff; font-weight: bold;">户外/</a> <a
					href="#" style="color: #ffffff; font-weight: bold;">钟表</a> <a
					href="#" style="color: #ffffff; font-weight: bold;">家用电器</a><br>
			<p>
				<a href="#" style="color: #ffffff; font-weight: bold;">手机/</a> <a
					href="#" style="color: #ffffff; font-weight: bold;">数码/</a> <a
					href="#" style="color: #ffffff; font-weight: bold;">电脑办公</a><br>
			<p>
				<a href="#" style="color: #ffffff; font-weight: bold;">电子书</a> <br>
			<p>
				<a href="#" style="color: #ffffff; font-weight: bold;">男装/</a> <a
					href="#" style="color: #ffffff; font-weight: bold;">女装/</a> <a
					href="#" style="color: #ffffff; font-weight: bold;">童装</a>
			<p>
				<a href="#" style="color: #ffffff; font-weight: bold;">运动/</a> <a
					href="#" style="color: #ffffff; font-weight: bold;">户外/</a> <a
					href="#" style="color: #ffffff; font-weight: bold;">钟表</a> <a
					href="#" style="color: #ffffff; font-weight: bold;">家用电器</a><br>
			<p>
				<a href="#" style="color: #ffffff; font-weight: bold;">手机/</a> <a
					href="#" style="color: #ffffff; font-weight: bold;">数码/</a> <a
					href="#" style="color: #ffffff; font-weight: bold;">电脑办公</a><br>
			<p>
				<a href="#" style="color: #ffffff; font-weight: bold;">电子书</a> <br>
			<p>
				<a href="#" style="color: #ffffff; font-weight: bold;">男装/</a> <a
					href="#" style="color: #ffffff; font-weight: bold;">女装/</a> <a
					href="#" style="color: #ffffff; font-weight: bold;">童装</a>
			<p>
				<a href="#" style="color: #ffffff; font-weight: bold;">运动/</a> <a
					href="#" style="color: #ffffff; font-weight: bold;">户外/</a> <a
					href="#" style="color: #ffffff; font-weight: bold;">钟表</a> <a
					href="#" style="color: #ffffff; font-weight: bold;">家用电器</a><br>
			<p>
				<a href="#" style="color: #ffffff; font-weight: bold;">手机/</a> <a
					href="#" style="color: #ffffff; font-weight: bold;">数码/</a> <a
					href="#" style="color: #ffffff; font-weight: bold;">电脑办公</a><br>
			<p>
				<a href="#" style="color: #ffffff; font-weight: bold;">电子书</a> <br>
			<p>
				<a href="#" style="color: #ffffff; font-weight: bold;">男装/</a> <a
					href="#" style="color: #ffffff; font-weight: bold;">女装/</a> <a
					href="#" style="color: #ffffff; font-weight: bold;">童装</a>
			<p>
				<a href="#" style="color: #ffffff; font-weight: bold;">运动/</a> <a
					href="#" style="color: #ffffff; font-weight: bold;">户外/</a> <a
					href="#" style="color: #ffffff; font-weight: bold;">钟表</a>
		</div>
		<div class="content">
			<div id="picshow">
				<ul id="pics">
					<li><a href="#"><img src="img/a.jpg" width="750px"
							height="350px" /></a></li>
					<li><a href="#"><img src="img/b.jpg" width="750px"
							height="350px" /></a></li>
					<li><a href="#"><img src="img/c.jpg" width="750px"
							height="350px" /></a></li>
					<li><a href="#"><img src="img/d.jpg" width="750px"
							height="350px" /></a></li>
					<li><a href="#"><img src="img/e.jpg" width="750px"
							height="350px" /></a></li>
				</ul>
				<p id="shuzi">
					<span>1</span> <span>2</span> <span>3</span> <span>4</span> <span>5</span>
				</p>
			</div>

		</div>
	
		<div class="right">
			<div class="shang">
				<br> <a style="font-size: 16px;">快讯</a><br>
				<hr>
				【公告】增票延迟开具通知<br> 【优选】圣诞好货研究所，X玖带你逛<br> 【优选】揭秘女生心中的暖心好物<br>
				【优选】星座专家教你挑圣诞好礼<br> 【社区】圣诞节，我就是要吃甜甜的<br> 【社区】乐享圣诞，洋年囤货有新招<br>

			</div>
			<div class="xia"></div>
		</div>
		
		
		<div class="bottom_a">
			<img src="img/left.jpg" width="365px" height="135px" />
		</div>
		<div class="bottom_b">
			<img src="img/right.jpg" width="365px" height="135px" />
		</div>
		
		<div class="clear"></div>
		
	</div>
	<div id="bottom">
		<div class="menu_logo">
		
		<a href="boy_1.jsp"><img src="img/boy_1.png"   width="390px" height="300px"/></a>
		<a href="boy_2.jsp"><img src="img/boy_3.png"  width="390px" height="300px"/></a>
		<a href="boy_3.jsp"><img src="img/boy_5.png"  width="390px" height="300px"/></a>
		
		</div>
		<div class="commodity">
		<a href="girl_1.jsp"><img src="img/girl_1.png"   width="390px" height="300px"/></a>
		<a href="girl_2.jsp"><img src="img/girl_3.png"  width="390px" height="300px"/></a>
		<a href="girl_3.jsp"><img src="img/girl_5.png"  width="390px" height="300px"/></a>
		</div>
		<div class="text">
			版权所属：Strive-1761<br> 小组成员：徐云林，何佳佳，姜文裕，刘希宁<br> 重庆工程学院
		</div>
	</div>
	<script type="text/javascript" src="jquery-1.12.1.js"></script>
	<script type="text/javascript">
		var n = 0;
		function lunbo() {
			n++;
			if (n > 4)
				n = 0;
			$("#shuzi>span").removeClass("on");
			$("#shuzi>span").eq(n).addClass("on");
			$("#pics>li").hide();
			$("#pics>li").eq(n).fadeIn();

		}
		var t = setInterval("lunbo()", 2000);
		$(document).ready(function(e) {
			$("#shuzi>span").hover(function() {
				clearInterval(t);
				n = $(this).index();
				$("#shuzi>span").removeClass("on");
				$("#shuzi>span").eq(n).addClass("on");
				$("#pics>li").hide();
				$("#pics>li").eq(n).fadeIn();
			}, function() {
				t = setInterval("lunbo()", 2000);
			});
		});
	</script>
</body>
</html>