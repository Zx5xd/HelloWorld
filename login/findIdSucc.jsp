<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>id 찾기</title>
<link rel="stylesheet" type="text/css" href="../css/style2.css">
</head>
<body>
<%
 String id = request.getParameter("id");
%>
<script>
function btnclick(){
	location.href="loginForm.jsp";
}
</script>
<div class="find-page">
    
<div class="form">
  <form class="fId-form" name="fId-form">
  	<h1>Find id</h1>
  	<hr>
  	고객님의 정보와 일치하는 아이디는 아래와 같습니다.
  	<br>
  	<p id="getid">아이디 : <%=id %><p>
  	<p><button type="button" onclick="btnclick()">로그인 화면</button></p>
  	
  </form>
</div></div>
</body>
</html>