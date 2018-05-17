<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册页面</title>
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
	margin-right: 11%;
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
	height: 2px;
	width: 100%;
}

.content {
	width: 1350px;
	height: 500px;
	border: 1px solid #000000;
	margin-left: auto;
	margin-right: auto;
}
.bottom{
border: 0px solid #000000;
width:100%;
height:80px;
margin-top:80px;
text-align: center;
font-weight: bold;
}
input.style{
width: 230px;
	height: 40px;
	border: none;
	background-color: #f10215;
	font-size: 19px;
	font-weight: 900;
	color: #fff;
	margin-right: 11%;
}
.add{
margin-left: auto;
	margin-right: auto;
width:230px;
height:225px;
margin-top:40px;
}
</style>
</head>
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
				<li><a href="index.jsp">淘宝网首页</a></li>
				<li><a href="#">我的淘宝</a>
					<ul>
						<li><a href="#">已买到的宝贝</a>
					</ul></li>
				<li><a href="#">购物车</a></li>
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
	<div class="content">
</div>
	<div class="bottom">
版权所属：Strive-1761<br> 小组成员：徐云林，何佳佳，姜文裕，刘希宁<br> 重庆工程学院
</div>
</body>
</html>