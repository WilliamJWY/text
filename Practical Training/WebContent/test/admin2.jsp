<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.pt.vo.Student,com.pt.vo.Teacher"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>


<body>
<%-- 你好管理员！
<%List<Teacher> teas=(List<Teacher>)request.getAttribute("Teacher"); %>
<%List<Student> stus=(List<Student>)request.getAttribute("Student"); %>
<table  border="0">      
        <tr> 	
        	<td>id</td>
        	<td>用户名</td>
        	<td>角色</td>
        	<td>状态</td>
        </tr>
            <%for(int i=0;i<teas.size();i++){
            	String role = null;	
            	String Tstate = null;
	                    if(teas.get(i).getRid()==1){
	                    	role="学生";
	                    }else if(teas.get(i).getRid()==2){
	                    	role="老师";
	                    }else if(teas.get(i).getRid()==3){
	                    	role="领导";
	                    }else if(teas.get(i).getRid()==4){
	                    	role="管理员";
	                    
				        }
	                    if(teas.get(i).getTstate()==0){
	                    	Tstate="未激活";
	                    }else if(teas.get(i).getTstate()==1){
	                    	Tstate="激活";
	                    }
            %>    
                          
                 <tr>  
                 	<td><%=teas.get(i).getTid()%></td>  
                    <td><%=teas.get(i).getTname()%></td>   
                    <td><%=role%></td> 
                    <td><%=Tstate%></td>   
                    <td>配置角色</td>                        
                  	<td><a href="userinfo?user.id=<%=teas.get(i).getTid()%>">详细信息</a></td>
                    <td><a href="update?user.id=<%=teas.get(i).getTid()%>">修改</a></td>   
        			<td><a href="delete?user.id=<%=teas.get(i).getTid()%>">删除</a></td>          	
                 </tr>  
          <%} %> 
          		 <%for(int l=0;l<stus.size();l++){
            	String role = null;	
            	String Sstate = null;	
	                    if(stus.get(l).getRid()==1){
	                    	role="学生";
	                    }else if(stus.get(l).getRid()==2){
	                    	role="老师";
	                    }else if(stus.get(l).getRid()==3){
	                    	role="领导";
	                    }else if(stus.get(l).getRid()==4){
	                    	role="管理员";
						}
	                    if(stus.get(l).getSstate()==0){
	                    	Sstate="未激活";
	                    }else if(stus.get(l).getSstate()==1){
	                    	Sstate="激活";
	                    }
            %>    
            	 <tr>  
                 	<td><%=stus.get(l).getSid()%></td>  
                    <td><%=stus.get(l).getSname()%></td>   
                    <td><%=role%></td>   
                    <td><%=Sstate%></td> 
                    <td><a href="StuInfo?stu.sid=<%=stus.get(l).getSid()%>">修改用户</a></td>   
                                     
                  	<td><a href="userinfo?user.id=<%=teas.get(i).getTid()%>">详细信息</a></td>
                    <td><a href="update?user.id=<%=teas.get(i).getTid()%>">修改</a></td>   
        			<td><a href="delete?user.id=<%=teas.get(i).getTid()%>">删除</a></td>          	
                 </tr>  
          <%} %> 

   	
</table>
<a href="../test/teaReg.jsp">添加用户</a>
<s:debug/> --%>
<table  border="1">      
        <tr><td>学号/工号</td><td>状态</td><td>用户类型</td><td colspan="3">操作</td></tr>
                <s:iterator value="#request.Student">  
        
                    <tr>  
                    <s:set name="ss" value="sstate"/>
                    <td>
                   <s:property value="sname"/></td>  
                  
                    <td> <s:if test='#ss=="1"'>激活</s:if>
                    <s:else>注销</s:else>
                    </td>  
                    <td>学生</td> 
                   <td colspan="4">
                 
                      <a href="StuInfo?stu.sid=<s:property value="sid"/>">修改信息</a>
                      <a href="EditStu?stu.sid=<s:property value="sid"/>"><s:if test='#ss=="1"'>注销</s:if>
                    <s:else>激活</s:else></a>
                      <s:if test='#ss=="1"'> <a href="javascript:return false;"  style="opacity: 0.2" > 删除</a></s:if>
                      <s:else> <a href="DelStu?stu.sid=<s:property value="sid"/>">删除</a></s:else>
                       </td> 
                    </tr>
                    </s:iterator>
                    <s:iterator value="#request.Teacher">   
                       <tr>  
                    <s:set name="ts" value="tstate"/>
                    <s:set name="rid" value="rid"/>
                    <td>
                   <s:property value="tname"/></td>  
                  
                    <td> <s:if test='#ts=="1"'>激活</s:if>
                    <s:else>注销</s:else>
                    </td>  
                    <td><s:if test="#rid==2">老师</s:if>
                    	<s:elseif test="#rid==3">领导</s:elseif>
                    	<s:elseif test="#rid==4">管理员</s:elseif>
                    </td> 
                   <td colspan="4">
      
                      <a href="TeaInfo?tc.tid=<s:property value="tid"/>">修改信息</a>
                      <a href="EditTea?tc.tid=<s:property value="tid"/>"><s:if test='#ts=="1"'>注销</s:if>
                    <s:else>激活</s:else></a>
                      <s:if test='#ts=="1"'> <a href="javascript:return false;"  style="opacity: 0.2" > 删除</a></s:if>
                      <s:elseif test='rid=="4"'> <a href="javascript:return false;"  style="opacity: 0.2" > 删除</a></s:elseif>
                      <s:else> <a href="DelTea?tc.tid=<s:property value="tid"/>">删除</a></s:else>
                       </td> 
                    </tr>  
                </s:iterator>  
        </table>
</body>
</html>