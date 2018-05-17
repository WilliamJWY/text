<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,userinfo.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户修改</title>
<script type="text/javascript">
	////select username,password,sex,profession,favourite,note from userinfo;
	function zhuce() {
		if (zhu.username.value == "") {
			alert("用户名为空");
			zhu.username.focus();
			return;
		}
		if (zhu.username.value.length<1||zhu.username.value.length>19) {
			alert("用户名长度应为1—18位");
			zhu.username.focus();
			return;
		}
		if (zhu.user.value == "") {
			alert("密码为空");
			zhu.user.focus();
			return;
		}
		if (zhu.user.value.length<6||zhu.user.value.length>16) {
			alert("密码长度应为6—16位");
			zhu.user.focus();
			return;
		}
		if (zhu.user.value != zhu.queren.value) {
			alert("两次密码输入不相同");
			zhu.queren.select();
			zhu.queren.focus();
			return;
		}
		if(zhu.telephone.value.length>11||zhu.telephone.value.length<1){
			alert("手机号码不合法");
			zhu.telephone.focus();
		}
		zhu.submit();
	}
</script>
<%
String username = request.getParameter("username");
userinfo_serive us=new userinfo_serive();
ArrayList<userinfo> list=us.showONE(username);
Iterator<userinfo> lt=list.iterator();
userinfo user=new userinfo();
while(lt.hasNext()){
 user=lt.next();
}
/*out.print(user.getPassword());*/
%>

</head>
<body>
	<h1 align="center">用户修改</h1>
	<hr>
	<form action="xiugai_done.jsp?username=<%=user.getUsername()%>" method="post" id="zhu">
		<table align="center" id="biaoge" >
			<tr>
			<tr>
				<td id="use">用户名：</td>
				<td><input type="text" value=<%=user.getUsername()%>
					name="username" disabled="true"></td>
			</tr>
			<tr>
				<td id="use">新密码：</td>
				<td><input type="password" id="user"
					value="<%=user.getPassword()%>" name="password"></td>
			</tr>
			<tr>
				<td id="use">确认密码：</td>
				<td><input type="password" id="queren" 
					name="password2"></td>
			</tr>
			<tr>
				<td id="use">电话：</td>
				<td><input type="text"  name="telephone" value="<%=user.getTelephone()%>" ></td>
			</tr>
			<tr>
				<td id="use">收件人：</td>
				<td><input type="text"  name="address" value="<%=user.getAddress()%>" ></td>
			</tr>
			<tr>
				<td id="use">收货地址：</td>
				<td><input type="text"  name="recipients" value="<%=user.getRecipients()%>" ></td>
			</tr>

			<tr>
				<td colspan=2 align="center"><input type="button" value="提交"
					onclick="zhuce()"> <input type="reset" value="重置"></td>
			</tr>
		</table>
	</form>
</body>
</html>