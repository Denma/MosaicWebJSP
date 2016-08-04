<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="memberInfo" class="com.hybrid.domain.MemberInfo"/>
<jsp:setProperty name="memberInfo" property="*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가입</title>
</head>
<body>
<table style="width: 400; border: 1px; cellpadding: 0px; cellspacing: 0px;">
<tr>
	<td>아이디</td>
	<td><jsp:getProperty property="id" name="memberInfo"/>
	<td>암호</td>
	<td><jsp:getProperty property="password" name="memberInfo"/></td>
</tr>
<tr>
	<td>이름</td>
	<td><jsp:getProperty property="name" name="memberInfo"/>
	<td>E-Mail</td>
	<td><jsp:getProperty property="email" name="memberInfo"/></td>
</tr>

</table>
</body>
</html>