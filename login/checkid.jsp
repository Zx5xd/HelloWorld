<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 체크</title>

<link rel="stylesheet" type="text/css" href="../css/joinStyle.css">
<SCRIPT language="JavaScript">
function strData(re_id, id) {
	opener.document.joinForm.re_id.value= re_id; 
    opener.document.joinForm.id.value= id; 
	window.close();
}
</SCRIPT>
</head>

<jsp:useBean id="loginDao" class="login.LoginDao"  />

<body>
<%
	String id = request.getParameter("id");
	String re_id="";	
	boolean check = false;
%>
<br> 
<table width="250px" cellpadding="0" cellspacing="0" align="center" class="table02">
<%
	check = loginDao.checkId(id);

	if(check == true){  //사용 가능한 아이디 
%>
		<TR>
		   <TD align='center' bgcolor='#DADADA'><font size='2'>ID : <%=id%></font></TD>
		</TR>
		<TR>
	       <TD align='center' bgcolor='#fcfcfc' ><font size='2'> 사용 가능한 아이디 입니다.</font>	</TD>   
		</TR>
	    <% re_id = id; %> 
<%
	}
	else {
%>
		<TR>
			<TD align='center' bgcolor='#DADADA'><font size='2'>ID : <%=id%></TR>
		<TR>				
		   <TD align='center' bgcolor='#FFDDDD'>
			<font size='2'>사용할 수 없는 아이디 입니다.</font></TD>
		</TR>
		 <% re_id= "";id=""; %>
<% } %>
</TABLE>
  <p align="center" > <input type="button" class='btn1' value="닫기" onclick="javascript:strData('<%=re_id %>','<%=id%>')"> </p> 
</body>
</html>