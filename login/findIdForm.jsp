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

<div class="find-page">
    <h1>Find id</h1>
<div class="form">
  <form class="fId-form" name="fId-form" method="post" action="findIdProc.jsp">
  	<table>
  	<tr>
  	<td><p><b>이름 :</b></p></td>
  	<td><p> <input type="text" name="name"></p></td>
      <td colspan="2" rowspan='2'><button>id 찾기</button></td>
  	</tr>
  	<tr>
	<td><p><b>핸드폰 번호 :</b></p></td>
    <td><p><input type="text" name="phone"></p></td>
  	</tr>
  	</table>

  	
  	
  </form>
</div></div>
</body>
</html>