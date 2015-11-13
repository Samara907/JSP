<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSTL core 예제 - forTokens</title>
</head>
<body>

<c:forTokens var="car" items="a0b0c0" delims="0">
	<c:out value="${car }"></c:out><br />
</c:forTokens>
</body>
</html>