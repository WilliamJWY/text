<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.pt.vo.Role,java.util.*"%>
           <%@taglib prefix="s" uri="/struts-tags" %>
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

#new {
	float: right;
}

input[type=button],textarea {
	border-radius: 10px;
	border: 0px solid #000;
	outline: none;
	background-color: #A4A4FF;
}

#table {
	width: 100%;
	padding-top: 40px;
}

td {

}
a{ text-decoration:none;}
a:hover{ text-decoration:none;}
.tcdPageCode{padding: 15px 20px;text-align: left;color: #ccc;text-align:center;}
.tcdPageCode a{display: inline-block;color: #428bca;display: inline-block;height: 25px;	line-height: 25px;	padding: 0 10px;border: 1px solid #ddd;	margin: 0 2px;border-radius: 4px;vertical-align: middle;}
.tcdPageCode a:hover{text-decoration: none;border: 1px solid #428bca;}
.tcdPageCode span.current{display: inline-block;height: 25px;line-height: 25px;padding: 0 10px;margin: 0 2px;color: #fff;background-color: #428bca;	border: 1px solid #428bca;border-radius: 4px;vertical-align: middle;}
.tcdPageCode span.disabled{	display: inline-block;height: 25px;line-height: 25px;padding: 0 10px;margin: 0 2px;	color: #bfbfbf;background: #f2f2f2;border: 1px solid #bfbfbf;border-radius: 4px;vertical-align: middle;}
</style>
<body>
	<div id="top_font">
		<span
			style="font-family: youyuan; font-size: 25px; font-weight: bold;">角色管理</span>
	</div>
	<div id="hr">
		<hr>
	</div>
	<div id="new">
		<input type="button" value="新建用户"
			style="font-family: youyuan; width: 120px; height: 25px; font-size: 16px; " onClick="location.href='addNewRole.jsp'" >
	</div>
	<div id="table">
		<table border="0" width="100%"
			style="text-align: center; font-family: youyuan;">
			<tr>
				<td style="background-color: #A4A4FF;">角色名称</td>

				<td style="background-color: #A4A4FF;">状态</td>

				<td style="background-color: #A4A4FF;">角色功能</td>

				<td style="background-color: #A4A4FF;">操作</td>

			</tr>
			<s:iterator value="#request.List1">

				<tr>
					<s:set name="ss" value="rstate" />
					<td><s:property value="name" /></td>

					<td><s:if test='#ss=="1"'>激活</s:if> <s:else>注销</s:else></td>
					<td><s:checkboxlist
							list="#{' 0':'修改密码',' 1':'学生评价',' 2':'同行评价',' 3':'自我评价',' 4':'查看评价',' 5':'领导评价',' 6':'用户管理',' 7':'角色管理',' 8':'问卷管理',' 9':'指标管理'}"
							value="function" name="function" disabled="true" /></td>
					<td colspan="4"><a
						href="selectbyrid?rid=<s:property value="rid"/>">配置权限</a> <a
						href="editRstate?rid=<s:property value="rid"/>"><s:if
								test='#ss=="1"'>注销</s:if> <s:else>激活</s:else></a> <s:if
							test='#ss=="1"'>
							<a href="javascript:return false;" > 删除</a>
						</s:if> <s:else>
							<a href="deleteRole?rid=<s:property value="rid"/>">删除</a>
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