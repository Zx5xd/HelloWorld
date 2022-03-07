<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <jsp:useBean id="loginDao" class="login.LoginDao"/>
    
    <jsp:useBean id="user" scope="page" class="login.User">
   		 <jsp:setProperty name="user" property="*"/>
    </jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
System.out.println("insert id: "+user.getId());
System.out.println("insert pwd: "+user.getPass());
System.out.println("inesrt name: "+user.getName());
System.out.println("insert birthday: "+user.getBirthday());
System.out.println("insert Phone: "+user.getPhone());
System.out.println("insert zip: "+user.getZip());
System.out.println("insert addr1: "+user.getAddr1());
System.out.println("insert addr2: "+user.getAddr2());
System.out.println("insert email: "+user.getEmail());
System.out.println("insert regdate: "+user.getRegdate());
user.setRegdate("01");
System.out.println("insert regdate: "+user.getRegdate());

	int result = loginDao.insertUser(user);
	System.out.println("result "+ result);
%>
<body>
<% if(result == 1){ %>
<script type="text/javascript">
	alert("축하합니다! 회원가입이 완료되었습니다. 로그인하여 주십시오.");
	location.href="loginForm.jsp";
</script>
<%} else { %>
<script>
	alert("회원가입이 실패하였습니다. 처음부터 다시 진행하여 주십시오.");
	location.href="loginForm.jsp";
</script>
<%} %>
</body>
</html>