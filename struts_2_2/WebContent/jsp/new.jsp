<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<s:set var="bookname" value="'name'"></s:set>

	<s:property value="#request.bookname"></s:property>
	<s:property value="#bookname" />
	<s:set var="name" value="'ddd'" scope="session"></s:set>
	<s:property value="#session.name" />
	<br>




	<s:bean name="dog.dog_name" var="dog">
		<br>
		<s:param name="name" value="'wangcai'"></s:param>
		<s:param name="id" value="'123'"></s:param>
	</s:bean>
	<s:property value="#dog.name" />
	<s:property value="#dog.id" />
	<br>

	<s:include value="success.jsp"></s:include>
	<br>
	<s:set var="incfile" value="success.jsp" />
	include1:
	<s:include value="#incfile" />
	<br /> include2:
	<s:include value="%{#incfile}" />


	<s:set var="age" value="10" />
	<s:if test="#age>60"> 老年人</s:if>
	<s:elseif test="#age>30">中年人</s:elseif>
	<hr />

	<s:if test="#age>18">成年人</s:if>
	<s:else>儿童</s:else>
	<br>


	<!--  如果x>0.y=3x+5 如果x==0 y=-2 如果x<0 y=10  -->
	<s:set var="x" value="-3" />
	<s:if test="#x>0">
		<s:property value="#x*3+5" />
	</s:if>
	<s:elseif test="#x==0">
		<s:property value="#y=-2" />
	</s:elseif>

	<s:elseif test="#x<0">
		<s:property value="#y=10" />
	</s:elseif>
	<s:else>y=10</s:else>



	<br>
	<s:iterator value="{1,2,3}">
		<s:property />
	</s:iterator>

	<s:iterator value="{'a', 'b', 'c'}" var="x">
		<s:property value="#x" />
	</s:iterator>

	<hr />
	<s:iterator value="{'aa', 'bb', 'cc'}" status="s">
		<s:property />
    遍历过元素的总数<s:property value="#s.count" />
    当前元素的索引<s:property value="#s.index" />
    当前元素是偶数吗<s:property value="#s.even" />
    当前元素是奇数吗  <s:property value="#s.odd" />
    是最后一个元素吗<s:property value="#s.last" />
    是第一个元素吗<s:property value="#s.first" />
		<br />
	</s:iterator>


	<s:debug></s:debug>
</body>
</html>