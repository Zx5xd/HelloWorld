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
<link rel="stylesheet" type="text/css" href="../css/style2.css">
</head>
<script>
function pwdcheck(c){

    if(c.pass.value == c.pass_ok.value){
        c.submit();
    } else{
        alert("비밀번호가 일치하지 않습니다.");
        c.pass.focus();
    }
	
}
</script>
<body>
	<%
	String id = request.getParameter("id");
	
	int changeResult = loginDao.updatePass(user);
	
	if(changeResult == 0){
		%>
		<script>
		alert("정보가 일치하지 않습니다.");
		location.href="findPassForm.jsp";
		</script>
		<%
	}
	%>
	<div class="find-page">
    <h1>Change Password</h1>
<div class="form">
  <form class="fpass" name="fpass" method="post" action="findPassProc.jsp">
  <input type="hidden" name="id" value="<%=id %>">
  	<table>
  	<tr>
  	<td><p><b>비밀번호 :</b></p></td>
  	<td><p> <input type="password" id="pass" name="pass"></p></td>
      <td colspan="2" rowspan='2'><button type="button" onclick="pwdcheck(fpass)">Password<br> 찾기</button></td>
  	</tr>
  	<tr>
	<td><p><b>비밀번호 확인 :</b></p></td>
    <td><p><input type="password" id="pass_ok"></p></td>
  	</tr>
  </table>
  </form>
  </div>
 </div>
</body>
</html>