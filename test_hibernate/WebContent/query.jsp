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
<script type="text/javascript">
	function register() {
		var url = "tianjia.jsp";
		window.location.href = url;
	}
</script>
<body>
	<s:form action="edit_register" name="ע���" method="post">
		<table border="1">
			<tr>
				<td>�û���:</td><td><s:textfield name="user.username" label="�û���" value="%{#request.user.username}" disabled="true"></s:textfield>
				</td>
			</tr>
			<tr>

				<td>����:</td><td><s:textfield name="user.pass" label="����" value="%{#request.user.pass}" disabled="true"></s:textfield></td>
			</tr>
			<tr>

				<td>�Ա�:</td><td><s:radio list="#{'1':'��','0':'Ů'}" name="user.sex"
						value="%{#request.user.sex}" label="�Ա�" disabled="true"></s:radio></td>
			</tr>

			<tr>

				<td>����:</td><td><s:checkboxlist
						list="#{'0':'��Ϸ','1':'��ʳ','2':'����','3':'����'}" name="user.hobby"
						value="%{#request.user.hobby}" disabled="true"></s:checkboxlist></td>
			</tr>

			<tr>
				<td>�������ڣ�</td><td><sx:datetimepicker name="user.date"
						displayFormat="yyyy-MM-dd" accesskey="false" language="utf-8" value="%{#request.user.date}" disabled="true"></sx:datetimepicker></td>

			</tr>
			<tr>
				<td></td><td><a href="tianjia.jsp">����</a></td>
			</tr>
		</table>

	</s:form>

</body>
</html>

