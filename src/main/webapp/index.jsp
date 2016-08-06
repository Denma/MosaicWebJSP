<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index.html</title>
</head>
<body>
<h1>실행 확인</h1>
<hr>
<ul>
	<li><a href="Hello.html">HTML 실행 확인</a></li>
	<li><a href="Hello.jsp">JSP 실행 확인</a></li>
	<li><a href="HelloServlet">Servlet 실행 확인</a></li>
	<li><a href="dept.jsp">Mybatis 실행 확인</a></li>
	<li>===========5장 실습=============</li>
	<li><a href="chap05/useOutObject.jsp">out 기본 객체 사용</a></li>
	<li><a href="chap05/bufferInfo.jsp">버퍼 정보 확인</a></li>
	<li><a href="chap05/usePageContext.jsp">pageContext 확인</a></li>
	<li><a href="chap05/readInitParameter.jsp">Application 확인</a></li>
	<li><a href="chap05/viewServerInfo.jsp">서버 정보 확인</a></li>
	<li><a href="chap05/useApplicationLog.jsp">어플리케이션 로그메세지 작성</a></li>
	<li><a href="chap05/useJspLog.jsp">jsp 로그메세지 작성</a></li>
	<li><a href="chap05/readFileDirectly.jsp">자원 읽어오기</a></li>
	<li>===========6장 실습=============</li>
	<li><a href="chap06/readParameterNoErrorPage.jsp">에러페이지(기본형)</a></li>
	<li><a href="chap06/readParameterWithTry.jsp">에러페이지(try/catch)</a></li>
	<li><a href="chap06/readParameter.jsp">에러 페이지(지정)</a></li>
	<li>===========7장 실습=============</li>
	<li><a href="chap07/main.jsp">jsp:include 사용</a></li>
	<li><a href="chap07/layout.jsp">layout(include 사용)</a></li>
	<li>===========8장 실습=============</li>
	<li><a href="chap08/makeObject.jsp">jsp:useBean으로 객체만들기</a></li>
	<li><a href="chap08/membershipForm.jsp">jsp:useBean사용하여 회원가입하기</a></li>
	<li>===========9장,10장 실습=============</li>
	<li><a href="cookie/dept.jsp">Cookie Login</a></li>
	<li><a href="session/dept.jsp">Session Login</a></li>
	<li><a href="session2/dept2.jsp">Session Login(복습)</a></li>
	<li><a href="logout.jsp">Logout 화면</a></li>
	<li>===========11장 실습=============</li>
	<li><a href="chap11/el.jsp">EL 사용(소스 참조)</a></li>
	<li><a href="chap11/requestScope.jsp">EL - requestScope 사용</a></li>
	<li><a href="chap11/requestParam.jsp">EL - param,paramValues 사용</a></li>
	<li><a href="chap11/requestHeader.jsp">EL - header,headerValues 사용</a></li>
	<li><a href="chap11/initParam.jsp">EL - initParam 사용</a></li>
	
</ul>

</body>
</html>