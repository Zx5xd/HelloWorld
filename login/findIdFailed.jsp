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
<script>
function goIdForm(){
	location.href="findIdForm.jsp";
}
</script>
<div class="find-page">
    
<div class="form">
  <form class="fId-form" name="fId-form">
  	<h1>Find id 실패</h1>
  	<hr>
  	고객님이 입력하신 정보와 일치하는 아이디가 없습니다.
  	<p><button type="button" onclick="goIdForm()">다시 시도</button></p>
  	
  	<br>
  	</table>

  	
  	
  </form>
</div></div>
</body>
</html>