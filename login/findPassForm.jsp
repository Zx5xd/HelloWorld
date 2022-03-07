<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/style2.css">
</head>
<body>

<div class="find-page">
    <h1>Find Password</h1>
<div class="form">
  <form class="fPass-form" name="fPass-form" method="post" action="upPass.jsp">
  	<table>
  	<tr>
  	<td><p><b>아이디 :</b></p></td>
  	<td><p> <input type="text" name="id"></p></td>
      <td colspan="2" rowspan='2'><button>Password<br> 찾기</button></td>
  	</tr>
  	<tr>
	<td><p><b>이메일 :</b></p></td>
    <td><p><input type="text" name="email"></p></td>
  	</tr>
  </table>
  </form>
  </div>
 </div>
</body>
</html>
  	