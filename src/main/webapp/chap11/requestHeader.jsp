<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>requestHeader.jsp</title>
</head>
<body>
	<%= request.getHeader("User-Agent") %>
	<hr>
	${header.User-Agent}
	<hr>
	${header["User-Agent"]}
		
<br>
<a href="/index.jsp">홈으로</a>
</body>
</html>