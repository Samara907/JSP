<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<c:set var="num" value="1000"></c:set>
<c:out value="${num }"></c:out>
${num }

<c:if test="${num > 100 }">
	크다
</c:if>
<c:if test="${num < 100 }">
	작다
</c:if>
<p />

<c:forEach var="x" begin="1" end="10" step="1">
	${x }<br />
</c:forEach>
</body>
</html>