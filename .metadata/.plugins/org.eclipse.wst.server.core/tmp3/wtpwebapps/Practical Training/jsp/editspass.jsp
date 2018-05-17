<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/xiniu.css">
<script type="text/javascript" src="../js/modernizr.custom.js"></script>
<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
</head>
<style type="text/css">
#top_font {
	padding-top: 10px;
	padding-left: 15px;
}

#hr {
	padding-top: 10px;
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

.hideShowPassword-toggle {
	background-image: url(../img/wink.svg);
	background-position: 0 center;
	background-repeat: no-repeat;
	cursor: pointer;
	height: 100%;
	overflow: hidden;
	text-indent: -9999em;
	width: 44px;
}

.hideShowPassword-toggle-hide {
	background-position: -44px center;
}

.login-field {
	background-color: #fff;
	border: 2px solid #ccc;
	border-radius: 0.25em;
	color: inherit;
	display: block;
	font-family: inherit;
	font-size: inherit;
	line-height: inherit;
	margin: 0;
	position: relative;
	vertical-align: middle;
	width: 300px;;
	outline: none;
	-webkit-appearance: none;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}
#password{
	margin-left:35%;
	}
</style>

<script type="text/javascript">
	var isShow = true;
	function change() {
		var v = document.getElementById("ps");
		if (isShow) {
			v.type = "text";
			isShow = false;
		} else {
			v.type = "password";
			isShow = true;
		}
	};
</script>

<body>
	<div id="top_font">
		<span
			style="font-family: youyuan; font-size: 25px; font-weight: bold; color:#000;">修改密码</span>
	</div>
	<div id="hr">
		<hr>
	</div>

	<div id="password">
		<form method="post" action="editspass" target="_top">
			<input type="text" value="<s:property value="#session.st.sid"/>"
				name="stu.sid" hidden="">
			<div class="ywz_zhuce_xiaoxiaobao">
				<div class="ywz_zhuce_kuangzi">
					<div class="login">
                    
						<input class="login-field login-field-password" id="pass"
							name="stu.spass" type="password" placeholder="密码"
							pattern="[A-Za-z0-9\w]{6,12}" title="必须是6-12位之间"
							style="border: #CCC 1px solid; width: 300px; height: 35px; font-size: 15px; font-family: youyuan;"
							required>
					</div>
					<script>
						document.write('<script src=js/'
								+ ('__proto__' in {} ? 'zepto.custom'
										: 'jquery') + '.js><\/script>')
					</script>
					<script type="text/javascript" src="../js/hideShowPassword.min.js"></script>
					<script>
						$('#pass').hideShowPassword({
							innerToggle : true,
							touchSupport : Modernizr.touch
						});
					</script>
				</div>
				<div class="ywz_zhuce_huixian" id='pwdLevel_1'></div>
				<div class="ywz_zhuce_huixian" id='pwdLevel_2'></div>
				<div class="ywz_zhuce_huixian" id='pwdLevel_3'></div>
				<div class="ywz_zhuce_hongxianwenzi">弱</div>
				<div class="ywz_zhuce_hongxianwenzi">中</div>
				<div class="ywz_zhuce_hongxianwenzi">强</div>
			</div>
            <div style="padding-top: 70px;">
		<input type="submit" value="提交" style="border: #CCC 1px solid; width: 300px; height: 40px; font-size: 20px; background-color: #6573EB; font-family: youyuan; color: #CCC; font-weight: bold;">
	</div>
	</div>

	
	</form>
	</div>


</body>
<script type="text/javascript">
	$('#pass').focus(function() {
		$('#pwdLevel_1').attr('class', 'ywz_zhuce_hongxian');
		$('#pass').keyup();
	});

	$('#pass').keyup(function() {
		var __th = $(this);

		if (!__th.val()) {
			$('#pwd_tip').hide();
			$('#pwd_err').show();
			Primary();
			return;
		}
		if (__th.val().length < 6) {
			$('#pwd_tip').hide();
			$('#pwd_err').show();
			Weak();
			return;
		}
		var _r = checkPassword(__th);
		if (_r < 1) {
			$('#pwd_tip').hide();
			$('#pwd_err').show();
			Primary();
			return;
		}

		if (_r > 0 && _r < 2) {
			Weak();
		} else if (_r >= 2 && _r < 4) {
			Medium();
		} else if (_r >= 4) {
			Tough();
		}

		$('#pwd_tip').hide();
		$('#pwd_err').hide();
	});

	function Primary() {
		$('#pwdLevel_1').attr('class', 'ywz_zhuce_huixian');
		$('#pwdLevel_2').attr('class', 'ywz_zhuce_huixian');
		$('#pwdLevel_3').attr('class', 'ywz_zhuce_huixian');
	}

	function Weak() {
		$('#pwdLevel_1').attr('class', 'ywz_zhuce_hongxian');
		$('#pwdLevel_2').attr('class', 'ywz_zhuce_huixian');
		$('#pwdLevel_3').attr('class', 'ywz_zhuce_huixian');
	}

	function Medium() {
		$('#pwdLevel_1').attr('class', 'ywz_zhuce_hongxian');
		$('#pwdLevel_2').attr('class', 'ywz_zhuce_hongxian2');
		$('#pwdLevel_3').attr('class', 'ywz_zhuce_huixian');
	}

	function Tough() {
		$('#pwdLevel_1').attr('class', 'ywz_zhuce_hongxian');
		$('#pwdLevel_2').attr('class', 'ywz_zhuce_hongxian2');
		$('#pwdLevel_3').attr('class', 'ywz_zhuce_hongxian3');
	}

	function checkPassword(pwdinput) {
		var maths, smalls, bigs, corps, cat, num;
		var str = $(pwdinput).val()
		var len = str.length;

		var cat = /.{16}/g
		if (len == 0)
			return 1;
		if (len > 16) {
			$(pwdinput).val(str.match(cat)[0]);
		}
		cat = /.*[\u4e00-\u9fa5]+.*$/
		if (cat.test(str)) {
			return -1;
		}
		cat = /\d/;
		var maths = cat.test(str);
		cat = /[a-z]/;
		var smalls = cat.test(str);
		cat = /[A-Z]/;
		var bigs = cat.test(str);
		var corps = corpses(pwdinput);
		var num = maths + smalls + bigs + corps;

		if (len < 6) {
			return 1;
		}

		if (len >= 6 && len <= 8) {
			if (num == 1)
				return 1;
			if (num == 2 || num == 3)
				return 2;
			if (num == 4)
				return 3;
		}

		if (len > 8 && len <= 11) {
			if (num == 1)
				return 2;
			if (num == 2)
				return 3;
			if (num == 3)
				return 4;
			if (num == 4)
				return 5;
		}

		if (len > 11) {
			if (num == 1)
				return 3;
			if (num == 2)
				return 4;
			if (num > 2)
				return 5;
		}
	}

	function corpses(pwdinput) {
		var cat = /./g
		var str = $(pwdinput).val();
		var sz = str.match(cat)
		for ( var i = 0; i < sz.length; i++) {
			cat = /\d/;
			maths_01 = cat.test(sz[i]);
			cat = /[a-z]/;
			smalls_01 = cat.test(sz[i]);
			cat = /[A-Z]/;
			bigs_01 = cat.test(sz[i]);
			if (!maths_01 && !smalls_01 && !bigs_01) {
				return true;
			}
		}
		return false;
	}
</script>
</html>