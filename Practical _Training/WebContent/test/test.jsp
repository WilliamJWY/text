<%@ page language="java" contentType="textml; charset=UTF-8"
    pageEncoding="UTF-8" import="com.pt.vo.Role,java.util.*"%>
           <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="textml; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.disableCss{ 

pointer-events:none; 
color:#afafaf; 
cursor:default 
} 
</style>
</head>
<body>
<table  border="1">      
        <tr><td>用户名称</td><td>状态</td><td>角色功能</td><td colspan="3">操作</td></tr>
                <s:iterator value="#request.List1">  
        
                    <tr>  
                    <s:set name="ss" value="rstate"/>
                    <td>
                   <s:property value="name"/></td>  
                  
                    <td> <s:if test='#ss=="1"'>激活</s:if>
                    <s:else>注销</s:else>
                    </td>  
                    <td><s:property value="pass"/></td> 
                   <td colspan="4">
                   <a href="edit?id=<s:property value="rid"/>">配置权限</a>
                      <a href="select?id=<s:property value="rid"/>">详细信息</a>
                      <a href="editRstate?rid=<s:property value="rid"/>"><s:if test='#ss=="1"'>注销</s:if>
                    <s:else>激活</s:else></a>
                      <s:if test='#ss=="1"'> <a href="javascript:return false;"  style="opacity: 0.2" > 删除</a></s:if>
                      <s:else> <a href="">删除</a></s:else>
                       </td> 
                    </tr>  
                </s:iterator>  
        </table>
</body>
<ml>
