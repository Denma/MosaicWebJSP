<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginProcess.jsp</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	log("id = " + id);
	log("pw = " + pw);
	
	boolean login = false;	
	if (id.equals("hong")&& pw.equals("1234")) {
		session.setAttribute("LOGIN", "success");
		login = true;
	}
	
%>
<%
	if(login) {
		out.println("<h1>로그인 성공</h1>");
		out.println("<h3>" + id + "님 환영합니다.");
		out.println("<hr>");
		out.println("<a href=\"dept.jsp\">dept.jsp 접속하기</a>");
	} else {
		out.println("<h1>로그인 실패</h1>");
		out.println("<h3>다시 로그인 하세요</h3>");
		out.println("<a href=\"loginForm.jsp\">로그인</a>");
	}
%>


</body>
</html>