<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Core Tag c:set</title>
</head>
<body>
<c:forEach var="i" begin="1" end= "10">
<c:out value="${i }"></c:out>
</c:forEach>
</body>
</html>