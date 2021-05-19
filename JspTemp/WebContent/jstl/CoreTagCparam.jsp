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
<c:url value = "/index.jsp" var = "completeURL">
<c:param name="tid" value = "101"></c:param>
<c:param name="password" value = "admin"></c:param>
</c:url>
<c:out value = "${completeURL }"></c:out>
</body>
</html>