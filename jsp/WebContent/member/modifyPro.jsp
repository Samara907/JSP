<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import = "member.MemberDAO" %>
<%@ include file="/view/color.jsp"%>
<meta http-equiv="Refresh" content="5;url=main.jsp" >
<% request.setCharacterEncoding("euc-kr");%>

<jsp:useBean id="member" class="member.MemberDTO">
    <jsp:setProperty name="member" property="*" />
</jsp:useBean>
<%
    String id = (String)session.getAttribute("memId");
	member.setId(id);
	MemberDAO manager = MemberDAO.getInstance();
    manager.updateMember(member);
 %>
<link href="style.css" rel="stylesheet" type="text/css">

<table>
	<tr bgcolor="<%=title_c%>"> 
		<td height="39"  align="center">
			<font size="+1" ><b>ȸ�������� �����Ǿ����ϴ�.</b></font>
		</td>
	</tr>
	<tr>
		<td bgcolor="<%=value_c%>" align="center"> 
			<p>�Է��Ͻ� ������ ������ �Ϸ�Ǿ����ϴ�.</p>
		</td>
	</tr>
	<tr>
		<td bgcolor="<%=value_c%>" align="center"> 
			<form>
				<input type="button" value="��������" onclick="window.location='main.jsp'">
			</form>
			5���Ŀ� �������� �̵��մϴ�.
		</td>
	</tr>
</table>
</body>
</html>
