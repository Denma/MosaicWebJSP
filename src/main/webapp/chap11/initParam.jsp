<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>initParam.jsp</title>
</head>
<body>
	logEnabled = <%= application.getInitParameter("logEnabled") %>
	<br>
	debugLevel = <%= application.getInitParameter("debugLevel") %>
	<br>
	xxx = <%=application.getInitParameter("xxx") %>
	<hr>
	logEnabled = ${initParam.logEnabled}
	<br>
	debugLevel = ${initParam.debugLevel}
	<br>
	xxx = ${initParam.xxx}
	<hr>
	
<br>
<a href="/index.jsp">홈으로</a>
</body>
</html>