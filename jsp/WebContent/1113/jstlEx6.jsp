<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<fmt:requestEncoding value="euc-kr"/>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSTL fmt ���� - requestEncoding</title>
</head>
<body>
	�Ķ����:<c:out value="${param.id }"></c:out>
	<form action="jstlEx6.jsp" method="post">
		<input type="text" name="id">
		<input type="submit" value="Ȯ��">
	</form>
</body>
</html>