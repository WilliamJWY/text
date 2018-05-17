<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<html>
<head>
<title><s:text name="teainfo"></s:text></title>
</head>
<sx:head extraLocales="utf-8" />
<style type="text/css">
#top_font {
	padding-top: 10px;
	padding-left: 15px;
}

#hr {
	padding-top: 10px;
}
</style>
<body>
	<div id="top_font">
		<span
			style="font-family: youyuan; font-size: 25px; font-weight: bold;">修改信息</span>
		<a href="userManage.jsp"
			style="border: #CCC 1px solid; width: 100px; height: 30px; font-size: 20px; background-color: #A4A4FF; font-family: youyuan; font-weight: bold; border-radius: 15px; outline: none; 20 px; float: right; margin-right: 50px; text-decoration: none; text-align: center; line-height: 30px;">返回</a>
	</div>

	<div id="hr">
		<hr>
	</div>
	<div style="margin-left: 30%;">
		<table border="0">
			<s:form action="UpdateTea" method="post">
				<s:hidden value="%{tc.tid}" name="tid"></s:hidden>
				<tr>
					<td style="font-family: youyuan; font-size: 20px;">工号：</td>
					<td><s:textfield name="tc.jobid"
							value="%{#request.Teacher.jobid}"
							cssStyle="border: #CCC 1px solid; width: 300px; height: 30px; font-size: 15px; font-family: youyuan; border-radius: 5px;  outline: none;"></s:textfield></td>
				</tr>
				<tr>
					<td style="font-family: youyuan; font-size: 20px;">密码：</td>
					<td><s:password name="tc.tpass"
							cssStyle="border: #CCC 1px solid; width: 300px; height: 30px; font-size: 15px; font-family: youyuan; border-radius: 5px;  outline: none;">
						</s:password></td>
				</tr>
				<tr>
					<td style="font-family: youyuan; font-size: 20px;">权限：</td>
					<td style="font-family: youyuan; font-size: 20px;"><s:radio
							name="tc.rid" list="%{#{'2':'老师','3':'领导','4':'管理员'}}"
							value="%{#request.Teacher.rid}" theme="simple"></s:radio></td>
				</tr>
				<tr>
					<td style="font-family: youyuan; font-size: 20px;">状态：</td>
					<td style="font-family: youyuan; font-size: 20px;"><s:radio
							name="tc.tstate" list="%{#{'0':'注销','1':'激活'}}"
							value="%{#request.Teacher.tstate}" theme="simple"></s:radio></td>
				</tr>
				<tr>
					<td style="font-family: youyuan; font-size: 20px;">姓名：</td>
					<td><s:textfield name="tc.tname"
							value="%{#request.Teacher.tname}"
							cssStyle="border: #CCC 1px solid; width: 300px; height: 30px; font-size: 15px; font-family: youyuan; border-radius: 5px;  outline: none;"></s:textfield></td>
				</tr>
				<tr>
					<td></td>
					<td colspan="2"><s:submit value="提交"
							style="border: #CCC 1px solid; width: 150px; height: 30px; font-size: 20px; background-color: #6573EB; font-family: youyuan; color: #CCC; font-weight: bold; border-radius: 5px; outline: none;"></s:submit>
						<s:reset value="重置"
							style="border: #CCC 1px solid; width: 150px; height: 30px; font-size: 20px; background-color: #6573EB; font-family: youyuan; color: #CCC; font-weight: bold; border-radius: 5px; outline: none;"></s:reset></td>
				</tr>
			</s:form>
		</table>
	</div>

</body>
</html>