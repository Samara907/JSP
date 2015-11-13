<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSTL core 예제 - set, out, remove</title>
</head>
<body>

browser 변수값 설정
<c:set var="browser" value="${header['User-Agent'] }"></c:set>
<c:out value="${browser }"></c:out>
browser 변수값 제거 후
<c:remove var="browser"/>
<c:out value="${browser }"></c:out>
</body>
</html>