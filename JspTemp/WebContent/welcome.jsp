<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
</head>
<body>

<%
	
	String uname = request.getParameter("uname");
	out.println(uname);

	//response.sendRedirect("https://www.google.com/");
%>

</body>
</html>