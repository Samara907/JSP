<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import = "member.*" %>
<%@ include file="/view/color.jsp"%>
<html>
<head>
<title>ȸ����������</title>
<link href="style.css" rel="stylesheet" type="text/css">


<script type="text/JavaScript">
	function checkIt() {
		var userinput = eval("document.userinput");
		
		if(!userinput.passwd.value ) {
			alert("��й�ȣ�� �Է��ϼ���");
            return false;
        }
        if(userinput.passwd.value != userinput.passwd2.value)
        {
            alert("��й�ȣ�� �����ϰ� �Է��ϼ���");
            return false;
        }
        if(!userinput.username.value) {
            alert("����� �̸��� �Է��ϼ���");
            return false;
        }
        if(!userinput.jumin1.value  || !userinput.jumin2.value )
        {
            alert("�ֹε�Ϲ�ȣ�� �Է��ϼ���");
            return false;
        }
    }
</script>

<%
    String	  id      = (String)session.getAttribute("memId");
    MemberDAO manager = MemberDAO.getInstance();
    MemberDTO c       = manager.selectMember(id);
	try{
%>

<body bgcolor="<%=bodyback_c%>">
<form method="post" action="modifyPro.jsp" name="userinput" onsubmit="return checkIt()">
	<table border="1">
		<tr>
			<td colspan="2" height="39" bgcolor="<%=title_c%>" align="center">
				<font size="+1" ><b>ȸ�� ��������</b></font>
			</td>
		</tr>
	<tr>
		<td colspan="2" class="normal" align="center">
			ȸ���� ������ �����մϴ�.
		</td>
	</tr>
	<tr>
		<td width="200" bgcolor="<%=value_c%>"><b>���̵� �Է�</b></td>
		<td width="400" bgcolor="<%=value_c%>">&nbsp;</td>
    <tr>  
    <tr>
    	<td width="200">
    		����� ID
    	</td>
    	<td width="400">
    		<%=c.getId()%>
    	</td>
    </tr>
    <tr>
    	<td width="200">
    		��й�ȣ
    	</td>
    	<td width="400">
    		<input type="password" name="passwd" size="10" maxlength="10" value="<%=c.getPw()%>">
    	</td>
    </tr>
    <tr>
    	<td  width="200" bgcolor="<%=value_c%>">
    		<b>�������� �Է�</b>
    	</td>
    	<td width="400" bgcolor="<%=value_c%>">
    		&nbsp;
    	</td>
    </tr>  
    <tr>
    	<td width="200">
    		����� �̸�
    	</td>
    	<td width="400"> 
    		<input type="text" name="name" size="15" maxlength="20" value="<%=c.getName()%>">
    	</td>
    </tr>  
    <tr>
    	<td colspan="2" align="center" bgcolor="<%=value_c%>"> 
    		<input type="submit" name="modify" value="��   ��" >
    		<input type="button" value="��  ��" onclick="javascript:window.location='main.jsp'">
    	</td>
    </tr>
  </table>
</form>
</body>
<%}catch(Exception e){}%>
</html>