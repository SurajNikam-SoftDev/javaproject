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
<H1>Core Tag c:set and c:remove</H1>

<c:set var="i" value="${30}" scope = "application"></c:set>
<c:out value="${i }"></c:out>
<br>
<hr>
<c:remove var="i"/>
<c:out value="${i }">Null</c:out>
</body>
</html>