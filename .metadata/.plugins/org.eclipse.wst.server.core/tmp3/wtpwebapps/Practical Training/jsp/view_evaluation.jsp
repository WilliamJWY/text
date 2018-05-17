<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="com.pt.vo.*" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<style type="text/css">
#top_font {
	padding-top: 10px;
	padding-left: 15px;
}

#hr {
	padding-top: 10px;
}
#table {
	width: 100%;
	padding-top: 40px;
}
</style>
<body>
<div id="top_font">
		<span
			style="font-family: youyuan; font-size: 25px; font-weight: bold;">查看评价</span>
	</div>
	<div id="hr">
		<hr>
	</div>

<div id="table">
		<table border="0" width="100%"
			style="text-align: center; font-family: youyuan;">

			<tr>
				<td style="background-color: #A4A4FF; width:30%;">工号</td>
				<td style="background-color: #A4A4FF; width:30%;">教师</td>
				<td style="background-color: #A4A4FF; width:30%;">查看评价</td>
			</tr>
			<% List<Teacher> tc=(List<Teacher>)session.getAttribute("Teacher");
				for(int i=0;i<tc.size();i++){
					if(tc.get(i).getRid()==2){
			%>
			<tr>
			<td><% out.print(tc.get(i).getJobid());%></td>
			<td><% out.print(tc.get(i).getTname());%></td>
			<td><a href="findSER?tid=<% out.print(tc.get(i).getTid());%>" style="text-decoration: none;">学生评价</a><a  style="padding-left:30px; text-decoration: none;" href="findTER?jobid=<% out.print(tc.get(i).getJobid());%>" >教师评价</a></td>
			</tr>
			<%}} %>
			
            </table>
            </div>
</body>
</html>