<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录界面</title>

<script type="text/javascript">
	function rew() {
		var a = Math.random() * (9999 - 1000) + 1000;
		var b = Math.round(a);
		document.getElementById("sj").innerHTML = b;
	}
</script>
<style type="text/css">
.top {
	width: 100%;
	height: 100px;
	background: #ffffff;
}

.center {
	width: 100%;
	height: 600px;
	background: #000000;
	position: relative;
}

.tp {
	position: absolute;
	left: 400px;
	top: 30px;
}

.border {
	background: #ffffff;
	border: 0px solid #000000;
	width: 325px;
	height: 225px;
	float: right;
	top: 160px;
	left: 65%;
	position: absolute;
	font-family: sans-serif;
}

.bottom {
	border: 0px solid #000000;
	width: 100%;
	height: 80px;
	margin-top: 80px;
	text-align: center;
	font-weight: bold;
}

.background {
	position: absolute;
	left: 20%;
}

input.style {
	border: 2px solid red;
	width: 150px;
}

input.style2 {
	background-color: #f10215;
	font-size: 15px;
	font-weight: 900;
	color: #fff;
	border: none;
	width: 90px;
}

a {
	text-decoration: none;
}
</style>
</head>

<body>
	<div class="top">
		<div class="tp">
			<img src="img/logo_top.png" />
		</div>
	</div>
	<div class="center">
		<div class="background">
			<img src="img/background_b.png" />


			<div class="border">

				<h3>密码登录</h3>

				<form action="../Shoping_home.jsp" method="post" id="den">
					<table border="0px">
						<tr>
							<td id="left">用户名</td>
							<td class="right"><input type="text" name="username"
								class="style"></td>
						</tr>
						<tr>
							<td id="left">密码</td>
							<td class="right"><input type="password" name="password"
								class="style"></td>
						</tr>

						<tr>
							<td>验证码</td>
							<td><input type="text" name="yzm" class="style"> <span
								id="sj">4523</span> <a href="javascript:void();" onclick="rew()">看不清</a>
							</td>
						</tr>
						<tr>
							<td></td>
							<td><input type="submit" value="登录" class="style2">（没有帐号快来<a
								href="../register.jsp">注册</a>吧）</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
	<div class="bottom">
		版权所属：Strive-1761<br> 小组成员：徐云林，何佳佳，姜文裕，刘希宁<br> 重庆工程学院
	</div>
</body>
</html>