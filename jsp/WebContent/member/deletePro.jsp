<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import = "member.MemberDAO" %>
<%@ include file="/view/color.jsp"%>
<html>
<head>
<meta http-equiv="Refresh" content="5;url=main.jsp" >
<title>ȸ��Ż��</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<%
    String id 	   = (String)session.getAttribute("memId");
	String passwd  = request.getParameter("passwd");
	
	MemberDAO manager = MemberDAO.getInstance();
    int check = manager.deleteMember(id,passwd);
	if(check==1){
		session.invalidate();
%>
<body bgcolor="<%=bodyback_c%>">
<form method="post" action="main.jsp" name="userinput" >
<table>
	<tr bgcolor="<%=title_c%>"> 
		<td height="39" align="center">
			<font size="+1" ><b>ȸ�������� �����Ǿ����ϴ�.</b></font>
		</td>
	</tr>
	<tr bgcolor="<%=value_c%>">
		<td align="center">
			<p>����.... �����մϴ�. �ȳ��� ������.</p>
		</td>
	</tr>
	<tr bgcolor="<%=value_c%>">
		<td align="center">
			<input type="submit" value="Ȯ��">
		</td>
	</tr>
</table>
</form>
<%}else {%>
<script type="text/javascript">
	alert("��й�ȣ�� ���� �ʽ��ϴ�.");
	history.go(-1);
</script>
<%}%>
</body>
</html>
