<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scope.jsp</title>
</head>
<body>
<h1>scope.jsp</h1>
<%
	Integer rnum = (Integer)request.getAttribute("rnum");
	request.setAttribute("rnum", ++rnum);
	
	Integer snum = (Integer)session.getAttribute("snum");
	session.setAttribute("snum", ++snum);
%>


rnum = <%= request.getAttribute("rnum") %><br>
snum = <%= session.getAttribute("snum") %>


</body>
</html>