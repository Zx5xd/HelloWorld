<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% session.invalidate(); %>

<script>
alert("로그아웃하셨습니다! 로그인으로 이동");
location.href="loginForm.jsp";
</script>
</body>
</html>