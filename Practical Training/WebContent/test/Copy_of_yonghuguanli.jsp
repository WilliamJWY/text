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
<%List<Student> stus=(List<Student>)request.getAttribute("Student"); %>
<table  border="0">      
        <tr> 	
        	<td>id</td>
        	<td>学生</td>
        	<td>密码</td> 	
        </tr>
            <%for(int i=0;i<stus.size();i++){ %>
                 <tr>  
                 	<td><%=stus.get(i).getSid()%></td>  
                    <td><%=stus.get(i).getSname()%></td>  
                    <td><%=stus.get(i).getSpass() %></td>   
                  <%-- 	<td><a href="userinfo?user.id=<%=teas.get(i).getTid()%>">详细信息</a></td>
                    <td><a href="update?user.id=<%=teas.get(i).getTid()%>">修改</a></td>   
        			<td><a href="delete?user.id=<%=teas.get(i).getTid()%>">删除</a></td>         --%>  	
                 </tr>  
          <%} %>       	
</table>
<a href="../test/teaReg.jsp">添加用户</a>
<s:debug/>
</body>
</html>