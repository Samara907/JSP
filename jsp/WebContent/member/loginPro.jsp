<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import = "member.MemberDAO" %>
<%
	request.setCharacterEncoding("euc-kr");

	MemberDAO manager = MemberDAO.getInstance();
    String id 	   = request.getParameter("id");
	String passwd  = request.getParameter("passwd");
    int    check   = manager.userCheck(id,passwd);

	if(check==1){
		session.setAttribute("memId",id);
		response.sendRedirect("main.jsp");
	}else if(check==0) { 
%>
<script type="text/javascript">
	alert("비밀번호가 맞지 않습니다.");
	history.go(-1);
</script>
<%	
	} else { 
%>
<script type="text/javascript">
	alert("아이디가 맞지 않습니다..");
	history.go(-1);
</script>
<%
	}
%>	