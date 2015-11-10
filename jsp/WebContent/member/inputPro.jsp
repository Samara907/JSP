<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import = "member.MemberDAO" %>
<%@ page import = "java.sql.Timestamp" %>
<% request.setCharacterEncoding("euc-kr");%>
<jsp:useBean id="member" class="member.MemberDTO">
    <jsp:setProperty name="member" property="*" />
</jsp:useBean>

<%
    member.setReg_date(new Timestamp(System.currentTimeMillis()) );
	MemberDAO manager = MemberDAO.getInstance();
    manager.insertMember(member);

    response.sendRedirect("loginForm.jsp");
%>