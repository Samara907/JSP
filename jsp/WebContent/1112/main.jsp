<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>mainpage</h2>
	<font size="6">
		${requestScope.result}<br/>
		${msg }<br/>
		${requestScope.num + "100" }<br/>
		${sessionScope.result}<br/>
	</font>
</body>
</html>
