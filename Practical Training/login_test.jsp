<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../css/slide-unlock.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
<script src="../js/jquery.slideunlock.js" charset="utf-8" type="text/javascript" ></script>

<title>登陆</title>
</head>
<style type="text/css">
body{

-moz-user-select:none;/*火狐*/

-webkit-user-select:none;/*webkit浏览器*/

-ms-user-select:none;/*IE10*/

-khtml-user-select:none;/*早期浏览器*/

user-select:none;

}

input[type=text],textarea {
	border-radius: 5px;
	border: 1px solid #000;
	outline: none;
}

input[type=password],textarea {
	border-radius: 5px;
	border: 1px solid #000;
	outline: none;
}

input[type=submit],textarea {
	border-radius: 5px;
	border: 1px solid #000;
}

#login {
	width: 400px;
	height: 450px;
	border-radius: 10px;
	background-color: #73ABFF;
	background: rgba(245, 245, 245, 0.6);
	position: absolute;
	top: 50%;
	left: 50%;
	-webkit-transform: translate(-50%, -50%);
	-moz-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	-o-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}

table {
	
}

body {
	background-image: url(../img/apic21738.jpg);
	background-repeat: no-repeat;
	background-size: 100% 100%;
	background-attachment: fixed;
}

select {
	border: #CCC 1px solid;
	width: 60px;
	height: 35px;
	font-size: 15px;
	font-family: youyuan;
	border-radius: 5px;
}
</style>
<body>
	<div id="login">
		<div id="table" align="center">

			<div id="s1">
				<form method="post" id="f1">
					<table border="0">

						<tr>
							<td height="15"></td>
						</tr>

						<tr>
							<td valign="middle" align="center"><span
								style="font-family: youyuan; font-size: 30px; color: #7C7C7C; font-weight: bold;">教师信息评价系统</span>
							</td>
						</tr>

						<tr>
							<td height="10"></td>
						</tr>

						<tr>
							<td valign="middle" align="center" ><select id="type" style="cursor:pointer">
									<option value="1" id="st">学生</option>
									<option value="2" id="tc">老师</option>
									<option value="3" id="tc">管理员</option>
							</select></td>
						</tr>

						<tr>
							<td height="10"></td>
						</tr>

						<tr>
							<td><input type="text" id="name" class="required"
								pattern="[0-9]*" title="必须是数字不能含有字符"
								style="border: #CCC 1px solid; width: 300px; height: 35px; font-size: 15px; font-family: youyuan;"
								placeholder="学号/工号" required /></td>
						</tr>

						<tr>
							<td height="10"></td>
						</tr>

						<tr>
							<td><input type="password" id="pass" class="required"
								placeholder="密码" pattern="[A-Za-z0-9\w]{6,12}"
								title="必须是6-12位之间"
								style="border: #CCC 1px solid; width: 300px; height: 35px; font-size: 15px; font-family: youyuan;"
								required /></td>
						</tr>

						<tr>
							<td height="1"></td>
						</tr>

						<tr>
							<td style="text-align: right;"><a href="register.jsp"
								style="font-family: youyuan; font-size: 15px; color: #7C7C7C; font-weight: bold; text-decoration: none;">还没注册?</a>
							</td>
						</tr>

						<tr>
							<td height="10"></td>
						</tr>

						<tr>
							<td>
								<div id="slider">
									<div id="slider_bg"></div>
									<span id="label" style="cursor:pointer">>></span> <span id="labelTip">拖动滑块验证</span>
								</div>
							</td>
						</tr>


						<tr>
							<td height="10"></td>
						</tr>

						<tr>
							<td><input type="submit" value="登录" name="submit"
								id="submit"
								style="border: #CCC 1px solid; width: 300px; height: 40px; font-size: 20px; background-color: #6573EB; font-family: youyuan; color: #CCC; font-weight: bold;" />
							</td>
						</tr>

						<tr>
							<td height="15"></td>
						</tr>

						<tr>
							<td valign="middle" align="center"><span
								style="font-family: youyuan; font-size: 13px; color: #7C7C7C; font-weight: bold;">@2017-2018
									otaku team 版权所有</span></td>
						</tr>

					</table>
				</form>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	$(document).ready(function() {
		var result = false;
        var slider = new SliderUnlock("#slider",{
			successLabelTip : "滑动验证成功"	
		},function(){
			result = true;
        });
        slider.init(); 
        
		$("#submit").click(function() {
			var x = $("#type").val();
			if (x == 1) {
				
				$("#name").attr("name", "stu.sname");
				$("#pass").attr("name", "stu.spass");
				$("#f1").attr("action", "loginStu");
			} else if(x==2){
				$("#name").attr("name", "tc.jobid");
				$("#pass").attr("name", "tc.tpass");
				$("#f1").attr("action", "loginTc");
			}else {
				$("#name").attr("name", "tc.jobid");
				$("#pass").attr("name", "tc.tpass");
				$("#f1").attr("action", "loginGly");
			}
			
			if(result == true){ 
				return true;	
			}
			return false;

		});
	});
</script>
</html>