<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSTL core ���� - set, out, remove</title>
</head>
<body>

browser ������ ����
<c:set var="browser" value="${header['User-Agent'] }"></c:set>
<c:out value="${browser }"></c:out>
browser ������ ���� ��
<c:remove var="browser"/>
<c:out value="${browser }"></c:out>
</body>
</html>