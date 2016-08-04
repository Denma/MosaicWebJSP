<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" scope="request" class="com.hybrid.domain.MemberInfo"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useObject.jsp</title>
</head>
<body>
<%= member.getName() %>(<%= member.getId() %>) 회원님 안녕하세요.<br>
등록된 이메일은 (<%= member.getEmail() %>)이며<br>
가입 년도 = <%= member.getRegisterDate().getYear()+1900 %><br>
가입 월 = <%= member.getRegisterDate().getMonth()+1 %><br>
가입 일 = <%= member.getRegisterDate().getDay() %><br>
가입 시간 = <%= member.getRegisterDate().getHours() %><br>
가입 분 = <%= member.getRegisterDate().getMinutes() %><br>
가입 초 = <%= member.getRegisterDate().getSeconds() %><br>
가입 시간 = <%= member.getRegisterDate() %> 입니다.

</body>
</html>