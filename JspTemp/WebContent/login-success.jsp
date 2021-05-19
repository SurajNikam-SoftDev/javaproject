<%@page import="com.demo.model.LoginBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
You are successfully login
<%
	LoginBean bean=(LoginBean)request.getAttribute("bean");  
	out.print("Welcome, "+bean.getName());  
%>
</body>
</html>