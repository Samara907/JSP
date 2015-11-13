<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSTL core ����  - if, choose, when, otherwise</title>
</head>
<body>

<c:set var="country" value="${'korea' }"></c:set>
<c:if test="${country != null }">
	������: <c:out value="${country }"></c:out>
</c:if>
<p />

<c:choose>
	<c:when test="${country == 'korea' }">
		<c:out value="${country }"></c:out>�� �ܿ��� ���
	</c:when>
	<c:when test="${country == 'canada' }">
		<c:out value="${country }"></c:out>�� �ܿ��� �ʹ� ���
	</c:when>
	<c:otherwise>
		�� ���� ������� �ܿ��� �� �� ����.
	</c:otherwise>
</c:choose>
</body>
</html>