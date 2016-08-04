<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout.jsp</title>
</head>
<body>
<%
	session.invalidate();				//session 삭제 (변수값도 같이 삭제)
	
	response.sendRedirect("/");
%>

</body>
</html>