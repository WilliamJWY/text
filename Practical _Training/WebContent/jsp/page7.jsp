<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/SimpleTree.css" />
<script type="text/javascript" src="../js/SimpleTree.js"></script>
</head>

<style type="text/css">
#top_font {
	padding-top: 10px;
	padding-left: 15px;
}

#hr {
	padding-top: 10px;
}
#right{
	width:81%;
	height:600px;
	
	position:absolute;
	left:18%;	
	}
.st_tree{
	width:18%;
float:left;}
</style>

<script type="text/javascript">
	$(function() {

		$(".st_tree").SimpleTree({

			/* 可无视代码部分*/

			

		});
		/* $("a").click(function(){
			alert($(this).attr("href"));
		}); */

	});
</script>

<body>
	<div id="top_font">
		<span
			style="font-family: youyuan; font-size: 25px; font-weight: bold;">指标管理</span>
	</div>
	<div id="hr">
		<hr>
	</div>



	<div class="st_tree" >
		<ul>
			<li> 指标管理 </li>

			<ul>




				<li> 学生方面 </li>

				<ul show="true">

					<li><a href="tree_page2.jsp" target="page1"  >概念的讲解</a></li>

					<li><a href="#" ref="rzck">重点和难点</a></li>

					<li><a href="#" ref="rzck">逻辑性和条理性</a></li>

					<li><a href="#" ref="rzck">趣味性和生动性</a></li>

					<li><a href="#" ref="rzck">板书</a></li>

				</ul>

				<li><a href="#" ref="ckgl">系部（领导）方面</a></li>

				<ul>

					<li><a href="#" ref="kcgl">质考核</a></li>
					<ul>

						<li><a href="#" ref="yhgl">用户管理</a></li>

						<li><a href="#" ref="rzck">日志查看</a></li>

					</ul>


					<li><a href="#" ref="shgl">量考核</a></li>



					<ul>

						<li><a href="#" ref="yhgl">用户管理</a></li>

						<li><a href="#" ref="rzck">日志查看</a></li>

					</ul>

				</ul>
				<li><a href="#" ref="xtgl">同行方面</a></li>
				<ul>

					<li><a href="#" ref="yhgl">用户管理</a></li>

					<li><a href="#" ref="rzck">日志查看</a></li>

				</ul>
				<li><a href="#" ref="xtgl">教师个人方面</a></li>
				<ul>

					<li><a href="#" ref="yhgl">用户管理</a></li>

					<li><a href="#" ref="rzck">日志查看</a></li>

				</ul>
			</ul>
		</ul>

	</div>
    <div id="right">
	<iframe name="page1" src="tree_page.jsp" width="100%" height="100%"></iframe>
    </div>
</body>
</html>