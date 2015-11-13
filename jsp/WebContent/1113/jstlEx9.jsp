<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSTL fmt 예제  - timeZone</title>
</head>
<body>

<c:set var="now" value="<%= new Date() %>"></c:set>

Korea  KST : <fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full"/><br />
UK     GMT : <fmt:timeZone value="GMT">
				<fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full"/><br />
			 </fmt:timeZone>

 
</body>
</html>