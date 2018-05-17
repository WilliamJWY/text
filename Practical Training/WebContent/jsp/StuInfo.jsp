<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.pt.vo.*" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<html>
<head>
<title><s:text name="stuinfo"></s:text></title>
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
		<table>
			<s:form action="UpdateStu" method="post">
				<s:hidden value="%{stu.sid}" name="sid"></s:hidden>
				<tr>
					<td style="font-family: youyuan; font-size: 20px;">学号：</td>
					<td><s:textfield name="stu.sname"
							value="%{#session.Student.sname}"
							cssStyle="border: #CCC 1px solid; width: 300px; height: 30px; font-size: 15px; font-family: youyuan; border-radius: 5px;  outline: none;"></s:textfield></td>
				</tr>
				<tr>
					<td style="font-family: youyuan; font-size: 20px;">密码：</td>
					<td><s:password name="stu.spass"
							cssStyle="border: #CCC 1px solid; width: 300px; height: 30px; font-size: 15px; font-family: youyuan; border-radius: 5px;  outline: none;">
						</s:password></td>
				</tr>
				<tr>
					<td style="font-family: youyuan; font-size: 20px;">权限：</td>
					<td style="font-family: youyuan; font-size: 20px;"><s:radio
							name="stu.rid" list="%{#{'1':'学生'}}"
							value="%{#session.Student.rid}" theme="simple"></s:radio></td>
				</tr>
				<tr>
					<td style="font-family: youyuan; font-size: 20px;">状态：</td>
					<td style="font-family: youyuan; font-size: 20px;"><s:radio
							name="stu.sstate" list="%{#{'0':'注销','1':'激活'}}"
							value="%{#session.Student.sstate}" theme="simple"></s:radio></td>
				</tr>
				<tr>
					<td style="font-family: youyuan; font-size: 20px;">姓名：</td>
					<td><s:textfield name="stu.suser"
							value="%{#session.Student.suser}"
							cssStyle="border: #CCC 1px solid; width: 300px; height: 30px; font-size: 15px; font-family: youyuan; border-radius: 5px;  outline: none;"></s:textfield></td>
				</tr>
				<tr>
				<tr>
					<td style="font-family: youyuan; font-size: 20px;">任课教师：</td>
					<td style="font-family: youyuan; font-size: 20px;">
							<% List<Teacher> lt=(List<Teacher>)session.getAttribute("Teacher");
							for(int i=0;i<lt.size();i++){
								if(lt.get(i).getRid()==2){%>
							
							<input type="checkbox" value="<% out.print(lt.get(i).getTid());%>" name="stu.tid"><% out.print(lt.get(i).getTname());}}%>
						</td>
				</tr>
				<tr>
					<td></td>
					<td colspan="2"><s:submit value="提交"
							style="border: #CCC 1px solid; width: 150px; height: 30px; font-size: 20px; background-color: #6573EB; font-family: youyuan; color: #CCC; font-weight: bold; border-radius: 5px; outline: none;"></s:submit>
						<s:reset value="重置"
							style="border: #CCC 1px solid; width: 150px; height: 30px; font-size: 20px; background-color: #6573EB; font-family: youyuan; color: #CCC; font-weight: bold; border-radius: 5px; outline: none;"></s:reset></td>
			</s:form>
		</table>
	</div>


</body>
</html>