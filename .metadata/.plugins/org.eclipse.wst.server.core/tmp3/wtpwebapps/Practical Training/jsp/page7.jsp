<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" import="com.pt.vo.Index_p" import="com.pt.vo.Index_c"
	pageEncoding="utf-8"%>
	<%@taglib prefix="s" uri="/struts-tags" %>
	<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/SimpleTree.css" />
<script type="text/javascript" src="../js/SimpleTree.js"></script>
</head>

<style type="text/css">
#top_font {
	padding-top: 10px;
	padding-left: 15px;
}

#hr {
	padding-top: 10px;
}
#right{
	width:81%;
	height:600px;
	
	position:absolute;
	left:18%;	
	}
.st_tree{
	width:18%;
float:left;}
#div1 { position:absolute; display:none;}
#div1 ul { position:absolute; float:left; border:1px solid #979797;background:#f1f1f1; padding:2px; box-shadow:2px 2px 2px rgba(0, 0, 0, .6); width:100px; overflow:hidden; }
#div1 ul li { float:left; clear:both; height:24px; cursor:pointer; line-height:24px; white-space:nowrap; padding:0 30px; width:100%; display:inline-block; }
#div1 ul li:hover { border:0px solid #B4D2F6; color:#CCC;}
a:hover{text-decoration: none;}
</style>

<script type="text/javascript">

	$(function(){ 
		$(".st_tree").SimpleTree({
		});
	$(document).on("contextmenu",function(e){  
		return false;
	});
	$("ul>ul>ul>li").mousedown(function(e) { 
		e.preventDefault();
		//右键为3
		if (3 == e.which) {
			
			
			
			var oEvent = e||event;
			var oDiv = $('#div1');   
			var id=$(this).children().eq(1);
			var del=$("#div1").children().eq(0).children().children();
			oDiv.css("display","block").css("left",e.pageX + "px").css("top",e.pageY + "px");
			del.attr("href","DelOption?i.iid="+id.val());
		} else if (1 == e.which) {
			//左键为1
			var oDiv = $('#div1'); 
			oDiv.css("display","none")   
		} 
		return false;
	});
	
});

function test(){
	alert("test");
}
</script>

<body>
	<div id="top_font">
		<span
			style="font-family: youyuan; font-size: 25px; font-weight: bold;">指标管理</span>
				<a href="addi.jsp"
			style="border: #CCC 1px solid; width: 150px; height: 30px; font-size: 15px; background-color: #A4A4FF; font-family: youyuan; font-weight: bold; border-radius: 15px; outline: none; 20 px; float: right; margin-right: 50px; text-decoration: none; text-align: center; line-height: 30px;">添加父级指标</a>
	<a href="NewFile.jsp"
			style="border: #CCC 1px solid; width: 150px; height: 30px; font-size: 15px; background-color: #A4A4FF; font-family: youyuan; font-weight: bold; border-radius: 15px; outline: none; 20 px; float: right; margin-right: 50px; text-decoration: none; text-align: center; line-height: 30px;">添加子级指标</a>
	</div>
	<div id="hr">
		<hr>
	</div>

	<div class="st_tree" >
		<ul>
			<li> 指标管理 </li>

			<ul>

<%
List<Index_p> listp=(List<Index_p>)session.getAttribute("ip");
for(int i=0;i<listp.size();i++){
%>


				<li><% out.print(listp.get(i).getPname());%> </li>

				<ul show="true">
				
					<%
					List<Index_c> list=(List<Index_c>)session.getAttribute("ic");
					for(int j=0;j<list.size();j++){
					if(listp.get(i).getPid()==list.get(j).getPid()){
					
					%>
                      
					<li><a id="son"  href="findO?iid=<%=list.get(j).getIid()%>" target="page1"><%out.print(list.get(j).getIname());}%></a><input type="hidden" value="<%=list.get(j).getIid()%>"></li>					
					<% }%>

				</ul>
				<% }%>
               </ul>

	</div>
    <div id="right">
	<iframe name="page1" src="tree_page.jsp" width="100%" height="100%"></iframe>
    </div>
    
<div id="div1" class="0" >
      <ul  style="border-radius:5px; border:0px solid #666; font-family:youyuan;">
           <li style="display: block"><a>删除</a></li>
     </ul>
</div>
</body>
</html>