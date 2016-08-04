<%@page import="java.util.List"%>
<%@page import="com.hybrid.domain.Dept"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="com.hybrid.mapper.DeptMapper"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dept2.jsp</title>
</head>
<body>
<%
	String login = (String)session.getAttribute("LOGIN");
	if (login == null) {
		response.sendRedirect("/session2/loginForm2.jsp");
		return;
	}
%>

<%
	ApplicationContext ctx = WebApplicationContextUtils.getRequiredWebApplicationContext(this.getServletContext());
	DeptMapper mapper = ctx.getBean(DeptMapper.class);
	mapper.delete(65);
	
	mapper.insert(new Dept(65, "xxx", "yyy"));
	List<Dept> depts = mapper.selectAll();
	for (Dept dept : depts) {
		System.out.println(dept);
		out.println(dept + "<br>");
	}
	out.println("===================");
	out.println("<br>");
	mapper.update(new Dept(65, "xxx1", "yyy1"));
	depts = mapper.selectAll();
	for (Dept dept : depts) {
		System.out.println(dept);
		out.println(dept + "<br>");
	}
	out.println("===================");
	out.println("<br>");
	mapper.delete(65);
	depts = mapper.selectAll();
	for (Dept dept : depts) {
		System.out.println(dept);
		out.println(dept + "<br>");
	}
%>

<hr>
<a href="/session/logout.jsp">로그아웃</a>

</body>
</html>