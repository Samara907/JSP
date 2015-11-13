<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSTL core 예제  - if, choose, when, otherwise</title>
</head>
<body>

<c:set var="country" value="${'korea' }"></c:set>
<c:if test="${country != null }">
	국가명: <c:out value="${country }"></c:out>
</c:if>
<p />

<c:choose>
	<c:when test="${country == 'korea' }">
		<c:out value="${country }"></c:out>의 겨울은 춥다
	</c:when>
	<c:when test="${country == 'canada' }">
		<c:out value="${country }"></c:out>의 겨울은 너무 춥다
	</c:when>
	<c:otherwise>
		그 외의 나라들의 겨울은 알 수 없다.
	</c:otherwise>
</c:choose>
</body>
</html>