<%@page import="login.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.net.URLEncoder" %>
    <% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="loginDao" class="login.LoginDao"/>

<jsp:useBean id="user" scope="page" class="login.User">
	<jsp:setProperty name="user" property="*"/>
</jsp:useBean>

<%
	// loginForm에서 전송해온 결과 확인
	System.out.println("아이디: "+ user.getId());
	System.out.println("패스워드: "+user.getPass());
	
	User loginUser = loginDao.getUser(user.getId());
	/*
	System.out.println("Name: "+loginUser.getName());
	System.out.println("id: "+loginUser.getId());
	System.out.println("pwd: "+loginUser.getPass());
	System.out.println("zip: "+loginUser.getZip());
	System.out.println("addr1: "+loginUser.getAddr1());
	System.out.println("addr2: "+loginUser.getAddr2());
	System.out.println("birthday: "+loginUser.getBirthday());
	System.out.println("email: "+loginUser.getEmail());
	System.out.println("phone: "+loginUser.getPhone());
	System.out.println("regdate: "+loginUser.getRegdate());
	*/
	
	String name = loginUser.getName();
	String id = loginUser.getId();
	String pwdIn = user.getPass();
	String pwdReg = loginUser.getPass();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
<% if(name == null){%>
<script>
	alert("등록되지 않은 아이디입니다.");
	location.href="loginForm.jsp";
</script>
<% }
else if(pwdIn.equals(pwdReg)){
	name = URLEncoder.encode(name, "UTF-8");
	session.setAttribute("userId", id);
	session.setAttribute("name", name);

%>
<script>
alert("로그인에 성공하였습니다.");
// location.href="loginSuccess.jsp?name=<%=name%>&id=<%=id%>"; 
location.href="../board/bbsList_Bean1.jsp";
</script>
<%} else{%>
<script>
	alert("패스워드가 일치하지 않습니다.");
	location.href="loginForm.jsp";
</script>
<%} %>
</body>
</html>
