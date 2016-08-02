<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="sitemesh"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
html {
	padding: 0px;
	margin: 0px;
}
body{
	font-family:"맑은 고딕", "고딕", "굴림";
}
header {
	width: 80%;
	margin-right: auto;
	margin-left: auto;
	background-color: #069;
	padding: 10px;
	overflow: hidden;
}
header h1{
	width:40%;
	float:left;	
	color:#ffffff;
}
header nav {
	width:60%;
	float:right;	
}
nav ul{
	list-style-type:none;	
}
nav ul li{
	display: inline;
	float: left;
	margin: 15px;
}
nav ul li a{
	color:white;
	text-decoration:none;	
}
section {
	width: 80%;
	border: 5px solid red;
	background-color: #069;
	margin-left: 9%;
	margin-right: 9%;
}
</style>
<meta charset="UTF-8">
<title><sitemesh:write property="title"/></title>
</head>
<body>
<header>
	<nav>
		<ul>
			<li><a href="/../index.jsp">Home</a></li>
			<li><a href="x.jsp">5장 실습</a></li>
			<li><a href="y.jsp">6장 실습</a></li>
			<li><a href="z.jsp">7장 실습</a></li>
		</ul>
	</nav>
</header>
<hr>
<section>
	
<sitemesh:write property="body"/>

</section>
<hr>
<footer>
<p>Copyright Choongang 602</p>
</footer>
</body>
</html>