<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="com.pt.vo.*" import="java.util.*"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
    <%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>自我评价</title>
</head>
<body>
<div id="top_font">
		<span
			style="font-family: youyuan; font-size: 25px; font-weight: bold ; padding-top: 10px; padding-left: 15px;;">评价</span>
			<div style="float:right; font-family:youyuan; margin-top: 10px;">
开始时间<s:property value="#session.q.star_time"/>
----- 结束时间<s:property value="#session.q.end_time"/>
</div>
	</div>
	
	<div id="hr">
		<hr>
	</div>
<form action="addTER1" method="post" target="_parent">


<% Teacher tch=(Teacher)session.getAttribute("tc"); %>
<input type="text" value="<% out.print(tch.getJobid());%>" name="ter.jobid" hidden="">

<%
List<Index_c> listc=(List<Index_c>)session.getAttribute("icsl"); //权重表

double  score=0.0;
%>

<input type="text" name="ter.qid" value="<% out.print(listc.get(0).getPid());%>" hidden="">

<% for(int i=0;i<listc.size();i++){ %>

<div style="width:100%; height:30px; background-color:#FFF; border-radius: 5px; margin-top:15px;">
<span style="line-height:30px; font-family:youyuan; margin-left:20px;" ><%out.print(i+1); %>.<%out.print(listc.get(i).getIname()); %></span>
</div>
	
	<%List<Option> op=(List<Option>)session.getAttribute("option");//选项
	
	double v=Double.parseDouble(listc.get(i).getWeight());
	for(int j=0;j<op.size();j++){
	 
	if(listc.get(i).getIid()==op.get(j).getIid()){
	%>
	<div style="width:100%; height:50px; background-color:#CCC; line-height:50px; border-radius: 5px;">
	    <input type="text"  value="<%=listc.get(i).getWeight()%>" id="<%=op.get(j).getOid()%>" hidden=""/>
		<input type="radio"  style="margin-left:20px;"  name="<%  out.print(op.get(j).getOid());%>" value="10" onclick="jisuan(this)"/><%  out.print(op.get(j).getA());%>
		<input type="radio" name="<%  out.print(op.get(j).getOid());%>" value="8.5" onclick="jisuan(this)"/><%  out.print(op.get(j).getB());%>
		<input type="radio" name="<%  out.print(op.get(j).getOid());%>" value="6.5" onclick="jisuan(this)"/><%  out.print(op.get(j).getC());%>
		<input type="radio" name="<%  out.print(op.get(j).getOid());%>" value="4.5" onclick="jisuan(this)"/><%  out.print(op.get(j).getD());}%>
		</div>
		
		<%}%>
	

	



<%} %>
<input type="text" name="ter.tertype" value="自我评价
问卷" hidden="">
<input type="text" name="ter.score" id="score" hidden="">
<div style="width:100%; height40px; text-align:center; margin-top:15px;">
<input type="submit" value="提交" style="border: #CCC 1px solid; width: 200px; height: 40px; font-size: 20px; background-color: #6573EB; font-family: youyuan; color: #CCC; font-weight: bold; border-radius: 10px; "/>
</div>
</form>


</body>
<script type="text/javascript">
 var grade=0;
 function  jisuan(v){
	var name=v.name;
	var weight=document.getElementById(name).value;
	grade=grade+weight*v.value;
	document.getElementById("score").value=grade;
 }

</script>
</html>