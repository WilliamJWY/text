<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<sx:head extraLocales="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

</head>
<body>
	<s:form action="tianjia" name="ע���" method="post">
		<table>
			<tr>
				<td>�û���:<s:textfield name="user.username" label="�û���"></s:textfield>
			
			</tr>
			<tr>

				<td>����:<s:password name="user.pass" label="����"></s:password></td>
			</tr>
			
			
			<tr>
				<td><s:submit value="�ύ"></s:submit> <s:reset value="����"></s:reset></td>
			</tr>
		</table>

	</s:form>

</body>
</html>

