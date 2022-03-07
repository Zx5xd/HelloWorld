<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>회원인증</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
<div class="login-page">
<div class="form">
  <form class="login-form" name="login-form" method="post" action="loginProc.jsp">

     <p align="left"><span class="fieldError"></span></p>
     <input name='id' type="text" placeholder="username" required /> 
     
     <p align="left"><span class="fieldError"></span></p>
     <input name='pass' type="password" placeholder="password" required />
     
     <button type="submit">login</button>
     <p class="message"><ul id="ullog">
	  <li id="lilogb"><a href="joinForm.jsp">회원가입</a></li>|
	  <li id="lilog"><a href="findIdForm.jsp">아이디/</a> 
               <a href="findPassForm.jsp" class="pwd">비밀번호 찾기</a></li>
     </ul></p>
     
  </form>
</div></div>
</body>
</html>
