<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="userinfo.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>淘宝网首页</title>
<link rel="stylesheet" type="text/css" href="css/Shoping_home.css" /></link>
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
</head>

<body>
	<div id="top">
		<div class="login">
			<ul>
				<li><a href="#">亲爱的用户你好！</a>
			
					<ul>
						<li><a href="yonghuhuoqu.jsp">账号管理</a></li>
						<li><a href="#">退出</a></li>

					</ul></li>
				<li><a href="register.jsp">免费注册</a></li>
				<li><a href="www.taobao.com">淘宝网首页</a></li>
				<li>
				    <a href="yonghuhuoqu.jsp">我的淘宝</a>
					<ul>
						<li><a href="#">已买到的宝贝</a>
					</ul>
					</li>
				<li><a href="car.jsp">购物车</a></li>
				<li> 
				<a href="#">商品分类</a>
				<ul>
				<li><a href="cloth.jsp">男装女装</a></li>
						<li><a href="cosmetics.jsp">护肤彩妆</a></li>
						<li><a href="electric.jsp">家用电器</a></li>
						<li><a href="cate.jsp">汇吃美食</a></li>
		       </ul>
				</li>
				<li><a href="#">联系客服</a></li>
			</ul>

		</div>
	</div>

	<div id="search">
		<div class="logo">
			<img src="image/logo1.gif" width="300px" height="130px" />
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
					<li><a href="#"><img src="image/a.jpg" width="750px"
							height="350px" /></a></li>
					<li><a href="#"><img src="image/b.jpg" width="750px"
							height="350px" /></a></li>
					<li><a href="#"><img src="image/c.jpg" width="750px"
							height="350px" /></a></li>
					<li><a href="#"><img src="image/d.jpg" width="750px"
							height="350px" /></a></li>
					<li><a href="#"><img src="image/e.jpg" width="750px"
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
			<img src="image/left.jpg" width="365px" height="135px" />
		</div>
		<div class="bottom_b">
			<img src="image/right.jpg" width="365px" height="135px" />
		</div>
		
		<div class="clear"></div>
		
	</div>
	<div id="bottom">
		<div class="menu_logo">
		
		<a href="boy_1.jsp"><img src="image/boy_1.png"   width="390px" height="300px"/></a>
		<a href="boy_2.jsp"><img src="image/boy_3.png"  width="390px" height="300px"/></a>
		<a href="boy_3.jsp"><img src="image/boy_5.png"  width="390px" height="300px"/></a>
		
		</div>
		<div class="commodity">
		<a href="girl_1.jsp"><img src="image/girl_1.png"   width="390px" height="300px"/></a>
		<a href="girl_2.jsp"><img src="image/girl_3.png"  width="390px" height="300px"/></a>
		<a href="girl_3.jsp"><img src="image/girl_5.png"  width="390px" height="300px"/></a>
		</div>
		<div class="text">
			版权所属：Strive-1761<br> 小组成员：徐云林，何佳佳，姜文裕，刘希宁<br> 重庆工程学院
		</div>
	</div>
</body>
</html>