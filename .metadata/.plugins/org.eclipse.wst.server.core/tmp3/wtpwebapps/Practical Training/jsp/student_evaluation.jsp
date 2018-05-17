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
			style="font-family: youyuan; font-size: 25px; font-weight: bold;">学生评价</span>
	</div>
	<div id="hr">
		<hr>
	</div>

<div id="table">
		<table border="0" width="100%"
			style="text-align: center; font-family: youyuan;">

			<tr>
				<td style="background-color: #A4A4FF; width:25%;">问卷类型</td>
				<td style="background-color: #A4A4FF; width:25%;">班级</td>
				<td style="background-color: #A4A4FF; width:25%;">教师</td>
                <td style="background-color: #A4A4FF; width:25%;">评教</td>
			</tr>
			<% Student s=(Student)session.getAttribute("st");
			int[] x=s.getTid();
			if(x!=null){
			   for(int i=0;i<x.length;i++){   %>
			<tr>
			<td>学生问卷</td>
			<td><% out.print(s.getClassid()); %></td>
			<% List<Teacher> tc=(List<Teacher>)session.getAttribute("Teacher"); 
			   for(int j=0;j<tc.size();j++){
				   if(x[i]==tc.get(j).getTid()){%>
			   
			
			<td><% out.print(tc.get(j).getTname()); %></td>
			<%}} %>
			<td ><a href="stuquestionnaire.jsp?tid=<%=x[i]%>" style="text-decoration: none;">评价</a></td>
			</tr>
			<%}} %>
            </table>
            </div>
</body>
</html>