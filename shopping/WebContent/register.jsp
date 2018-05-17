<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="userinfo.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript">
function zhuce() {
	if (f.username.value == "") {
		alert("用户名为空");
		f.username.focus();
		return;
	}
	if (f.username.value.length<1||f.username.value.length>9) {
		alert("用户名长度应为1—8位");
		f.username.focus();
		return;
	}
	if (f.password.value == "") {
		alert("密码为空");
		f.password.focus();
		return;
	}
	if (f.password.value.length<6||f.password.value.length>16) {
		alert("密码长度应为6—16位");
		f.password.focus();
		return;
	}
	if (f.password.value != f.querenmima.value) {
		alert("两次密码输入不相同");
		f.querenmima.select();
		f.querenmima.focus();
		return;
	}
	if(f.telephone.value.length!=11){
		alert("手机号码不正确,请重新输入!");
		f.telephone.focus();
		return;
	}
	      f.submit();
}
</script>
<link rel="stylesheet" type="text/css" href="css/register.css" /></link>
</head>
<body>
<form action="register_deal.jsp"  method="post" name="f">
<div id="logo">
    <img src="image/logo.gif" width="250" height="40" />
    <img src="image/reg.gif" width="250" height="40" />
</div>
<div id="title">用户免费注册页面</div>
<div id="main">
<ul>
  <li>
      <label>会员账号：</label>
      <input name="username"type="text"class="txt"  size="19"/><span>*长度为3-8位</span>
  </li>
  <li>
       <label>登录密码：</label>
       <input name="password" type="password" class="txt" /><span>*长度为6-12位</span>
  </li>

  <li>
       <label>确认密码：</label>
       <input name="querenmima" type="password" class="txt" /><span>*和密码一致</span>
  </li>

  <li>
       <label>会员性别：</label>
       <input name="sex" type="radio" value="0" checked />
       <img src="image/Male.gif" width="22" height="21" />
       <input name="sex" type="radio" value="1" />
       <img src="image/Female.gif" width="23" height="21" />
  </li>

  <li>
       <label>收货地址：</label>
       <input type="text" name="address"><span>*清楚到街道</span>
  </li>

  <li>
       <label>收货人员：</label>
       <input type="text" name="recipients"><span>*</span>
  </li>

   <li>
       <label>联系电话：</label>
       <input type="text" name="telephone"><span>*常用号码</span>
   </li>

   <li>
       <input type="button" class="btn" value="同意以下条款并提交注册信息"  onclick = "zhuce()">
       <input type="reset" class="btn" value="重置" >
   </li>
   <li>
       <img src="image/read.gif" width="35" height="26" />阅读《淘宝服务协议》</li>
   <li class="fwxy">
        <textarea name="textarea" cols="70" rows="3">本协议由您与浙江淘宝网络有限公司共同缔结，本协议具有合同效力。
 本协议中协议双方合称协议方，浙江淘宝网络有限公司在协议中亦称为“淘宝”。本协议中“淘宝平台”指由浙江淘宝网络有限公司运营的网络交易平台，包括淘宝网，域名为taobao.com.淘宝商城，域名为tmall.com;一淘网，域名为etao.com。
        </textarea>
   </li>
</ul> 
</div>
<div id="about">Copyright@2003-2011 Taobao.com 版权所有</div>
</form>
</body>
</html>