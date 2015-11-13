<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSTL core 예제 - forEach</title>
</head>
<body>
<h3>Header 정보:</h3>

<c:forEach var="head" items="${headerValues }">
	param: <c:out value="${head.key }"></c:out><br />
	values :
	<c:forEach var="val" items="${head.value }">
		<c:out value="${val }"></c:out>
	</c:forEach>
	<p />
</c:forEach>
</body>
</html>