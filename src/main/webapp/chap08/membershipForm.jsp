<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 입력 폼</title>
</head>
<body>
<form action="processJoining.jsp" method="post">
<table style="border: 1px; cellpadding: 0px; cellspacing: 0px;">
<tr>
	<td>아이디</td>
	<td><input type = "text" name = "id" size = "10"></td>
	<td>암호</td>
	<td><input type = "password" name ="password" size = "20"></td>
</tr>
<tr>
	<td>이름</td>
	<td><input type="text" name="name" size="10"></td>
	<td>E-Mail</td>
	<td><input type="text" name="email" size="20"></td>
</tr>
<tr>
	<td colspan="4" align="center">
	<input type="submit" value="회원가입">
	</td>
</tr>
</table>
</form>
<br>
<a href="/index.jsp">홈으로</a>
</body>
</html>