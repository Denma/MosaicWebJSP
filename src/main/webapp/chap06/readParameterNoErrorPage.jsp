<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터 출력</title>
</head>
<body>

name 파라미터 값: <%= request.getParameter("name").toUpperCase() %>

<br>
<a href="/index.jsp">홈으로</a>
</body>
</html>