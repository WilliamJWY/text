<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="com.pt.vo.*" import="java.util.*" import="java.text.DecimalFormat"%>
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
				<td style="background-color: #A4A4FF; width:30%;">学生姓名</td>
				<td style="background-color: #A4A4FF; width:30%;">班级</td>
                <td style="background-color: #A4A4FF; width:30%;">评分</td>
			</tr>
			
			<% List<Student_evaluation_results> lser=(List<Student_evaluation_results>)session.getAttribute("lser");
			List<Student> ls=(List<Student>)session.getAttribute("Student");
			for(int i=0;i<lser.size();i++){
			%>
			<tr>
			<% for(int j=0;j<ls.size();j++){
				if(lser.get(i).getSid()==ls.get(j).getSid()){
			%>
			<td><% out.print(ls.get(j).getSuser());}} %></td>
			<td><% out.print(lser.get(i).getClassid());%></td>
			<td><% out.print(lser.get(i).getScore());%></td>
			</tr>
			
<%} %>


<tr>
<td style="height:70px;'">
</td>
</tr>
<tr>

			<td style="background-color: #A4A4FF;">平均分</td>
			<%DecimalFormat df = new DecimalFormat( "0.0 "); 
			double x=0;
			for(int i=0;i<lser.size();i++){
				
				double y=lser.get(i).getScore();
				x=x+y;
				
				
			}
			double avg=x/lser.size();
				%>
			
			<td colspan="2" style="background-color: #A4A4FF;"><% out.print(df.format(avg));%></td>
			</tr>

</table>
</div>
</body>
</html>