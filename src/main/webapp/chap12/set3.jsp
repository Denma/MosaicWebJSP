<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Set3.jsp</title>
</head>
<body>

<c:set var="current" value="<%=new Date() %>" scope="session"/>

<%-- <c:set target="${current}" property="year" value="116"/> --%>
<%-- <c:set target="${current}" property="month" value="2"/> --%>
<%-- <c:set target="${current}" property="date" value="28"/> --%>

current = ${current}<br>
current.year = ${current.year + 1900}<br>
current.month = ${current.month+1}<br>
current.date = ${current.date}<br>

<hr>
<a href="/index.jsp">홈으로</a>
</body>
</html>