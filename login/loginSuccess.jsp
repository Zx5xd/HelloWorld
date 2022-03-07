<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
</head>
<%
String name = request.getParameter("name");
String id = request.getParameter("id");
%>
<%
System.out.println("LoginSuccess.jsp ==> 로그인 성공 화면 ");
%>

<body>
<div align="center" class="body">
	<h2>사용자별 로그인 화면</h2>
	<br>
	<h3>환영합니다... <%=name %> 님!</h3>
	<br><br><br>
	<a href="editForm.jsp?id=<%=id %>">[회원정보 수정]</a>
</div>
</body>
</html>