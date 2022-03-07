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
	<script>
	function d(a){
		a.submit;
	}
	</script>
<body>

	<%
	/* System.out.println("IdProc Name: "+user.getName());
	System.out.println("IdProc Phone: "+user.getPhone()); */
	
	
	String getId = loginDao.findId(user.getName(), user.getPhone());
	System.out.println(getId);

	if(getId == null){
		%>
		<script>
		location.href="findIdFailed.jsp";
		</script>
	<%}else{
		%>
		<script>
		location.href="findIdSucc.jsp?id=<%=getId%>";
		</script>
		<!-- <form name="form" action="findIdSucc.jsp" method="post" onsubmit="d(form)">
		<input type="hidden" name="id" value='<%=getId %>'>
		</form> -->
		
		<% }%>
</body>
</html>