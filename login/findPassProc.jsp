<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <jsp:useBean id="loginDao" class="login.LoginDao"/>
    <jsp:useBean id="user" class="login.User">
        <jsp:setProperty property="*" name="user"/>
    </jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	
	/*
	System.out.println("PassProc Id: " + user.getId());
	System.out.println("PassProc Pass: " + user.getPass());
	*/
	
	int updateResult = loginDao.updatePass(user);
	
	if(updateResult == 0){
		%>
		<script>
			alert("비밀번호 변경 실패. 처음부터 다시 시작하십시오");
			location.href="loginForm.jsp";
		</script>
		<%
	} else{
		%>
		<script>
			alert("비밀번호 변경 성공하셨습니다. 로그인창으로 넘어갑니다.");
			location.href="loginForm.jsp";
		</script>
		<%
	}
	
	%>
</body>
</html>