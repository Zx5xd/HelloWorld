<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <jsp:useBean id="loginDao" class="login.LoginDao"/>
    
    <jsp:useBean id="user" scope="page" class="login.User">
   		 <jsp:setProperty name="user" property="*"/>
    </jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%
/*System.out.println("update birthday: "+user.getBirthday());
System.out.println("update pwd: "+user.getPass());
System.out.println("update zip: "+user.getZip());
System.out.println("update addr1: "+user.getAddr1());
System.out.println("update addr2: "+user.getAddr2());
System.out.println("update Phone: "+user.getPhone());
System.out.println("update email: "+user.getEmail());
System.out.println("update id: "+user.getId()); */
	int result = loginDao.updateUser(user);
%>
<body>
<% if(result == 1){ %>
<script type="text/javascript">
	alert("ȸ������ ������ �����Ǿ����ϴ�. �α����Ͽ� �ֽʽÿ�.");
	location.href="loginForm.jsp";
</script>
<%} else { %>
<script>
	alert("ȸ������������ �����Ͽ����ϴ�. �ٽ� �����Ͽ� �ֽʽÿ�.");
	location.href="loginForm.jsp";
</script>
<%} %>
</body>
</html>