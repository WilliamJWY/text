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
<%List<Teacher> teas=(List<Teacher>)request.getAttribute("Teacher"); %>
<table  border="0">      
        <tr> 	
        	<td>id</td>
        	<td>老师</td>
        	<td>密码</td> 	
        </tr>
            <%for(int i=0;i<teas.size();i++){ %>
                 <tr>  
                 	<td><%=teas.get(i).getTid()%></td>  
                    <td><%=teas.get(i).getTname()%></td>  
                    <td><%=teas.get(i).getTpass() %></td>   
                  <%-- 	<td><a href="userinfo?user.id=<%=teas.get(i).getTid()%>">详细信息</a></td>
                    <td><a href="update?user.id=<%=teas.get(i).getTid()%>">修改</a></td>   
        			<td><a href="delete?user.id=<%=teas.get(i).getTid()%>">删除</a></td>         --%>  	
                 </tr>  
          <%} %> 
            <tr>

   	
</table>
<a href="../test/teaReg.jsp">添加用户</a>
<s:debug/>
</body>
</html>