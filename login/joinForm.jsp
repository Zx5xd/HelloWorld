<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>회원인증</title>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" type="text/css" href="../css/joinStyle.css">

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="./jquery-ui-1.12.1/datepicker-ko.js"></script>

<script type="text/javascript">

$(document).ready(function(){
		$( "#birth" ).datepicker({
	    	dateFormat: 'yy-mm-dd',
	    	changeMonth: true,
	        changeYear: true,
	        yearRange: "1950:2015"
	    });

});

function DaumPostcode() {
	new daum.Postcode({
		oncomplete: function(data) {
			var addr = '';
			var extraAddr = '';
			if (data.userSelectedType === 'R') { 
				addr = data.roadAddress;
				} else {
				addr = data.jibunAddress;
				}
			if(data.userSelectedType === 'R'){
				if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
					extraAddr += data.bname;
					}
				if(data.buildingName !== '' && data.apartment === 'Y'){
					extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
					}
				if(extraAddr !== ''){
					extraAddr = ' (' + extraAddr + ')';
					}
				document.getElementById("addr2").value = extraAddr; // 상세주소
				} else {
					document.getElementById("addr2").value = ''; // 상세주소
					}
			document.getElementById("zip").value = data.zonecode; // 우편번호
			document.getElementById("addr1").value = addr; // 기본주소
			document.getElementById("addr2").focus(); // 상세주소
			}
	}).open();
}

function Check_id() {
   if (joinForm.id.value.length < 1){
		alert("아이디를 입력하세요.");
		joinForm.id.focus();
		return false;
   }
   browsing_window = window.open("checkid.jsp?id="+joinForm.id.value, "_idcheck","height=190,width=300, menubar=no,directories=no, resizable=no,status=no,scrollbars=yes");
   browsing_window.focus();
}

function Check_Form() 
{
   if (joinForm.pass.value != joinForm.pass_re.value){
		alert("패스워드가 일치하지 않습니다.");
		joinForm.pass.focus();
		return false;
   }
   if (joinForm.re_id.value.length < 1){
		alert("ID 중복검사가 실시되지 않았습니다.");
		joinForm.id.focus();
		return false;
   }
   return true;
}
</script>

</head>

<body>
<form id="fregisterform" name='joinForm' method="post"  Action='joinProc.jsp' onsubmit='return Check_Form()' >

<table width="600px" cellpadding="0" cellspacing="0" align=center>
  <tr><td><img src="../img/cont_joinform.gif" border=0></td></tr>
</table>

<table width="600px" cellpadding="0" cellspacing="0" align=center class="table01">
<colgroup>
  <col width="150">
  <col width="*">
</colgroup>
  <tr>
    <td class="tle">아이디</td>
	<td class="cont">
	<input  maxlength=20 size=20 id='reg_mb_id' name="id" class="ed" required />
	<span id='msg_mb_id'><a href="#" OnClick='Check_id()' class="cmt mg_t5"> * ID 중복검사</a></span>
	<p class="cmt mg_t5"> * 영문자, 숫자, _ 만 입력 가능. 최소 3자이상 입력하세요.</p>
    <input type="hidden" name="re_id">
	</td>
  </tr>
  <tr>
    <td class="tle">비밀번호</td>
	<td class="cont"><input class=ed type=password name="pass" size=20 maxlength=20 "required  placeholder="password-1"></td>
  </tr>
  <tr>
    <td class="tle">비밀번호 확인</td>
	<td class="cont"><input class=ed type=password name="pass_re" size=20 maxlength=20 required placeholder="password-2"></td>
  </tr>
  <tr>
    <td class="tle">이름</td>
	<td class="cont"><input name="name" placeholder="name" class=ed2":"class=ed"> <span class='cmt'>* 공백없이 한글만 입력 가능</span>
	</td>
  </tr>

  <tr>
    <td class="tle">E-mail</td>
	<td class="cont">
	<input class=ed type=text id='reg_mb_email' name='email' size=38 maxlength=100  value=''>
	<span id='msg_mb_email'></span>
	</td>
  </tr>
  <tr>
    <td class="tle">생년월일</td>
	<td class="cont"><input class='ed' type='text' id='birth' name='birthday' size='10' maxlength='10' minlength='10' required numeric value='' title='옆의 달력 아이콘을 클릭하여 날짜를 입력하세요.'></td>
  </tr>
  
  <tr>
    <td class="tle">전화번호</td>
	<td class="cont"><input class=ed type=text name='phone' size=21 maxlength=20 required placeholder='전화번호' value=''></td>
  </tr>

  <tr>
    <td class="tle">주소</td>
	<td class="cont">
	<table width="330" border="0" cellspacing="0" cellpadding="0" class="nobd">
	  <tr>
	    <td height="25" class="nobd">
		<input class=ed type=text id="zip" name="zip" required >  
		
		<a href="javascript:;" Onclick='DaumPostcode()'><img src="../img/btn_postsearch.gif" border=0 align=absmiddle></a>
		</td>
	  </tr>
	  <tr>
	    <td height="25" colspan="2" class="nobd"><input class=ed type=text id="addr1" name="addr1" size=60  required ></td>
	  </tr>
	  <tr>
	    <td height="25" colspan="2" class="nobd"><input class=ed type=text id='addr2' name='addr2' size=60 required ></td>
	  </tr>
	</table>
	</td>
  </tr>

</table>

<div align=center class="mg_t20"><input type=image src="../img/btn_confirm.gif" border=0 accesskey='s'></div>

</form>

</body>
</html>
