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
	<s:form action="register" name="ע���" method="post">
		<table border="1">
			<tr>
				<td>�û���:</td><td><s:textfield name="user.username" label="�û���"></s:textfield>
				</td>
			</tr>
			<tr>

				<td>����:</td><td><s:password name="user.pass" label="����"></s:password></td>
			</tr>
			<tr>

				<td>�Ա�:</td><td><s:radio list="#{'1':'��','0':'Ů'}" name="user.sex"
						value="1" label="�Ա�"></s:radio></td>
			</tr>

			<tr>

				<td>����:</td><td><s:checkboxlist
						list="#{'0':'��Ϸ','1':'��ʳ','2':'����','3':'����'}" name="user.hobby"
						value="0"></s:checkboxlist></td>
			</tr>

			<tr>
				<td>�������ڣ�</td><td><sx:datetimepicker name="user.date"
						displayFormat="yyyy-MM-dd" accesskey="false" language="utf-8"></sx:datetimepicker></td>

			</tr>
			<tr>
				<td></td><td><s:submit value="�ύ"></s:submit> <s:reset value="����"></s:reset></td>
			</tr>
		</table>

	</s:form>

</body>
</html>
