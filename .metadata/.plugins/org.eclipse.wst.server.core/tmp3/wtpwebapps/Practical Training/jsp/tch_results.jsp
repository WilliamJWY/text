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
			style="font-family: youyuan; font-size: 25px; font-weight: bold;">领导评价</span>
	</div>
	<div id="hr">
		<hr>
	</div>

<div id="table">
		<table border="0" width="100%"
			style="text-align: center; font-family: youyuan;">

			<tr>
				<td style="background-color: #A4A4FF;">教师姓名</td>
				<td style="background-color: #A4A4FF;">工号</td>
				<td style="background-color: #A4A4FF;">问卷类型</td>
                <td style="background-color: #A4A4FF;">评分</td>
			</tr>
			
			<% List<Teacher_evaluation_results> lter=(List<Teacher_evaluation_results>)session.getAttribute("lter");
			List<Teacher> lt=(List<Teacher>)session.getAttribute("Teacher");
			for(int i=0;i<lter.size();i++){
			%>
			<tr>
			<% for(int j=0;j<lt.size();j++){
				if(lt.get(j).getJobid().equals(lter.get(i).getJobid())){
			%>
			<td><% out.print(lt.get(j).getTname());}} %></td>
			<td><% out.print(lter.get(i).getJobid());%></td>
			<td><% out.print(lter.get(i).getTertype());%></td>
			<td><% out.print(lter.get(i).getScore());%></td>
			</tr>
<%} %>
<tr>
<tr>
<td style="height:70px;'">
</td>
</tr>
<tr>

			<td style="background-color: #A4A4FF;">平均分</td>
			<%DecimalFormat df = new DecimalFormat( "0.0 "); 
			double x=0;
			for(int i=0;i<lter.size();i++){
				
				double y=lter.get(i).getScore();
				x=x+y;
				
				
			}
			double avg=x/lter.size();
				%>
			
			<td colspan="3" style="background-color: #A4A4FF;"><% out.print(df.format(avg));%></td>
			</tr>

</table>
</div>
</body>
</html>