<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSTL fmt 예제 - formatNumber, formatDate</title>
</head>
<body>

number : <fmt:formatNumber value="12345.678" type="number"></fmt:formatNumber><br />
currency: <fmt:formatNumber value="12345.678" type="currency" currencySymbol="$"></fmt:formatNumber><br />
percent : <fmt:formatNumber value="12345.678" type="percent"></fmt:formatNumber><br />
pattern=".0": <fmt:formatNumber value="12345.678" pattern=".0"></fmt:formatNumber><p />

<c:set var="now" value="<%= new Date() %>"></c:set>
<c:out value="${now }"></c:out><br />

date : <fmt:formatDate value="${now }" type="date"/><br />
time : <fmt:formatDate value="${now }" type="time"/><br />
both : <fmt:formatDate value="${now }" type="both"/>
</body>
</html>