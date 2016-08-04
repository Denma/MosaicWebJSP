<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	div {
		border: solid 3px black;
		padding: 5px;
	}
</style>
<meta charset="UTF-8">
<title>loginForm2.jsp</title>
</head>
<body>
<form action="/session2/loginProcess2.jsp" method="post">
	<div>
		<label for="id">ID : </label>
		<input id="id" name="id" type="text">
		<hr>
		<label for="pw">Password : </label>
		<input id="pw" name="pw" type="password">
	</div>
	<sec:csrfInput/>
	<input type="submit" value="로그인">
</form>
</body>
</html>