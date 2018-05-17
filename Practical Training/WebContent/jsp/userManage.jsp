<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.pt.vo.Role,java.util.*"%>
<%@taglib prefix="s" uri="/struts-tags"%>
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

#search {
	border-radius: 10px;
	outline: none;
	height: 20px;
}

input[type=button],textarea {
	border-radius: 10px;
	border: 0px solid #000;
	outline: none;
	background-color: #A4A4FF;
}

#top_search {
	float: right;
}

#table {
	width: 100%;
	padding-top: 40px;
}
a{ text-decoration:none;}
a:hover{ text-decoration:none;}
.tcdPageCode{padding: 15px 20px;text-align: left;color: #ccc;text-align:center; }
.tcdPageCode a{display: inline-block;color: #428bca;display: inline-block;height: 25px;	line-height: 25px;	padding: 0 10px;border: 1px solid #ddd;	margin: 0 2px;border-radius: 4px;vertical-align: middle;}
.tcdPageCode a:hover{text-decoration: none;border: 1px solid #428bca;}
.tcdPageCode span.current{display: inline-block;height: 25px;line-height: 25px;padding: 0 10px;margin: 0 2px;color: #fff;background-color: #428bca;	border: 1px solid #428bca;border-radius: 4px;vertical-align: middle;}
.tcdPageCode span.disabled{	display: inline-block;height: 25px;line-height: 25px;padding: 0 10px;margin: 0 2px;	color: #bfbfbf;background: #f2f2f2;border: 1px solid #bfbfbf;border-radius: 4px;vertical-align: middle;}
</style>
<body>
	<div id="top_font">
		<span
			style="font-family: youyuan; font-size: 25px; font-weight: bold;">用户管理</span>
	</div>
	<div id="hr">
		<hr>
	</div>
	<div id="top_search" style="padding-right:20px;">
		<span style="font-family: youyuan; font-size: 20px;">关键字词:</span> <input
			name="search" id="search" type="text"> <input type="button"
			value="查询"
			style="font-family: youyuan; width: 70px; height: 25px; font-size: 16px;">
		
	</div>
	<div id="table">
		<table border="0" width="100%"
			style="text-align: center; font-family: youyuan;">

			<tr>
				<td style="background-color: #A4A4FF;">学号/工号</td>
				<td style="background-color: #A4A4FF;">状态</td>
				<td style="background-color: #A4A4FF;">用户类型</td>
				<td style="background-color: #A4A4FF;">操作</td>
			</tr>
		<s:iterator value="#session.Student">
			<tr>
				<s:set name="ss" value="sstate" />
				<td><s:property value="sname" /></td>

				<td><s:if test='#ss=="1"'>激活</s:if> <s:else>注销</s:else></td>
				<td>学生</td>
				<td colspan="4"><a
					href="StuInfo?stu.sid=<s:property value="sid"/>">修改信息</a> <a
					href="EditStu?stu.sid=<s:property value="sid"/>"><s:if
							test='#ss=="1"'>注销</s:if> <s:else>激活</s:else></a> <s:if
						test='#ss=="1"'>
						<a href="javascript:return false;" style="opacity: 0.2"> 删除</a>
					</s:if> <s:else>
						<a href="DelStu?stu.sid=<s:property value="sid"/>">删除</a>
					</s:else></td>
			</tr>
		</s:iterator>
			<s:iterator value="#session.Teacher">
			<tr>
				<s:set name="ts" value="tstate" />
				<s:set name="rid" value="rid" />
				<td><s:property value="tname" /></td>

				<td><s:if test='#ts=="1"'>激活</s:if> <s:else>注销</s:else></td>
				<td><s:if test='#rid=="2"'>老师</s:if> <s:elseif test='#rid=="3"'>领导</s:elseif>
					<s:elseif test='#rid=="4"'>管理员</s:elseif></td>
				<td colspan="4"><a
					href="TeaInfo?tc.tid=<s:property value="tid"/>">修改信息</a> <a
					href="EditTea?tc.tid=<s:property value="tid"/>"><s:if
							test='#ts=="1"'>注销</s:if> <s:else>激活</s:else></a> <s:if
						test='#ts=="1"'>
						<a href="javascript:return false;" style="opacity: 0.2"> 删除</a>
					</s:if> <s:elseif test='rid=="4"'>
						<a href="javascript:return false;" style="opacity: 0.2"> 删除</a>
					</s:elseif> <s:else>
						<a href="DelTea?tc.tid=<s:property value="tid"/>">删除</a>
					</s:else></td>
			</tr>
		</s:iterator>
		</table>
	</div>
	<hr style="margin-top:50px;">
    
    <div class="tcdPageCode"></div>
	<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
    <script type="text/javascript" src="../js/jquery.page.js"></script>
    <script>
    $(".tcdPageCode").createPage({
        pageCount:1,
        current:1,
        backFn:function(p){
            console.log(p);
        }
    });
</script>
</body>
</html>