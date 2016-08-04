<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" scope="request" class="com.hybrid.domain.MemberInfo"/>
<meta charset="UTF-8">
<%
	Date registerDate = new Date();
	member.setId("hgs2888");
	member.setName("황교선");
	member.setEmail("hgs2888@naver.com");
	member.setRegisterDate(registerDate);
%>
<jsp:forward page="useObject.jsp"/>
