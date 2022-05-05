<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 및 비밀번호 찾기</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/skip_header.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/footer.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" type="text/css"
	href="http://fonts.googleapis.com/earlyaccess/notosanskr.css">

<style type="text/css">

.sub_wrap, .sub_wrap03 {
    width: 1100px;
    height: auto;
    position: relative;
    margin: 0 auto;
    padding: 50px;
    margin-bottom: 80px;
    border: 0px solid red;
}

.sub_tit {
    width: 100%;
    height: auto;
    padding-top: 20px;
    position: relative;
    display: inline-block;
    text-align: center;
    margin: 0 auto;
    border: 0px solid red;
}	

.sub_tit h1 {
    width: 100%;
    font-size: 36px;
    font-weight: 500;
    position: relative;
    display: block;
    margin-bottom: 10px;
    text-align: center;
}

.under {
    width: 60px;
    height: 6px;
    background: #08b2f5;
    position: relative;
    display: inline-block;
    margin: 0 auto;
}

.contents_wrap {
    width: 100%;
    height: auto;
    position: relative;
    display: inline-block;
    margin-top: 50px;
    border: 0px solid red;
}

.find_id {
    width: 48%;
    height: auto;
    position: relative;
    display: inline-block;
    margin-top: 50px;
    margin-bottom: 50px;
}

.join_tit {
    width: 100%;
    height: auto;
    position: relative;
    display: inline-block;
    margin-bottom: 10px;
}

.sub_bull, .sub_bull02, .sub_bull03, .sub_bull04 {
    width: 100%;
    position: relative;
    display: inline-block;
    overflow: hidden;
    margin-left: 0%;
    vertical-align: middle;
}

.sub_bull:before {
    top: 6px;
    position: absolute;
    display: block;
    width: 6px;
    height: 6px;
    border-radius: 50%;
    background-color: #08b2f5;
    content: '';
}

.sub_bull span, .sub_bull02 span, .sub_bull04 span {
    font-size: 17px;
    font-weight: 500;
    margin-left: 14px;
    color: #333;
    display: block;
}

.join_tit h5 {
    font-size: 14px;
    color: #666;
    line-height: 24px;
    letter-spacing: 0px;
    display: inline-block;
    font-weight: 300;
    margin-bottom: 6px;
}

.find_area {
    width: 100%;
    height: auto;
    background: #f3f3f3;
    position: relative;
    display: inline-block;
    padding: 30px;
    margin-top: 23px;
}

.find_id {
    width: 48%;
    height: auto;
    position: relative;
    display: inline-block;
    margin-top: 50px;
    margin-bottom: 50px;
}

.find_pw {
    width: 48%;
    height: auto;
    position: relative;
    display: inline-block;
    margin-top: 50px;
    margin-bottom: 50px;
    float: right;
}

.find_area02 {
    width: 100%;
    height: auto;
    background: #f3f3f3;
    position: relative;
    display: inline-block;
    padding: 30px;
}

input[type="text"], input[type="password"], select {
    display: table-cell;
    vertical-align: middle;
    height: 32px;
    line-height: 25px;
    padding: 0 10px;
    background: #fff;
    box-sizing: border-box;
    border: 1px solid #ddd;
    color: #333;
    font-weight: normal;
}

fieldset input {
	width: 100%;
    height: 50px;
    border: 1px solid #ddd;
    display: inline-block;
    margin-bottom: 10px;
    color: #666;
    font-size: 15px;
    font-weight: 300;
    padding: 10px;
    line-height: normal;
    border-radius: 0;
    clear: both;
    outline-style: none;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
}

.btn_login:hover {
    background-color: #008fe9;
}

.btn_login {
    width: 100%;
    height: 50px;
    line-height: 50px;
    text-align: center;
    color: #ffffff;
    font-size: 16px;
    font-weight: 400;
    background-color: #08b2f5;
    margin-top: 10px;
    margin: 0 auto;
    cursor: pointer;
}

</style>
</head>
<body>
	<div class="wrap">

		<div class="container">
			<div class="sub_wrap">
				<div class="sub_tit">
					<h1>아이디 및 비밀번호 찾기</h1>
					<div class="under"></div>
				</div>

				<div class="contents_wrap">
					<div class="find_id">
						<div class="join_tit ">
							<p class="sub_bull mb_10">
								<span>아이디 찾기(E-mail)</span>
							</p>
							<h5>- 회원가입 시 입력한 이름, 생년월일을 통해 ID(e-mail)를 찾을 수 있습니다.</h5>
						</div>
						<table style="width: 780; border: 0; cellpadding: 0; cellspacing: 0">
							<tr>
							  <td width="20"></td>
							  <td style="color: red; text-align: center;">${message }</td>			
							</tr>
						</table>						
						<div class="find_area">
							<form name="f1" method="post">
								<fieldset>
									<label for="name"></label> 
										<input type="text" name="name" placeholder="이름"  value="${member.id }"> 
									<label for="birth"></label> 
										<input type="text" name="birth" placeholder="생년월일 ex)19910118"  value="${member.birth }"
										onblur="return chk_num(this.name);">
									<div class="btn_login" onclick="chk_id();">확인</div>
								</fieldset>
							</form>
						</div>
					</div>

					<div class="find_pw">
						<div class="join_tit">
							<p class="sub_bull mb_10">
								<span>비밀번호 찾기</span>
							</p>
							<h5>
								- 회원가입 시 등록된 이름과 아이디(e-mail)를 입력해 주세요. <br>- 등록된 회원일 시 비밀번호를 다시
								설정 할 수 있습니다.
							</h5>
						</div>
						<div class="find_area02">
							<form name="f2" method="post">
								<input type="hidden" name="chk_email">
								<fieldset>
									<label for="name"></label> 
										<input type="text" name="name" placeholder="이름" value="${member.name }"> 
									<label for="id"></label> 
										<input type="text" name="id" placeholder="아이디(E-MAIL)"
										onclick="clickEmail();" onblur="isEmail(this.name.value)" value="${member.id }">
									<label for="pw"></label> 
										<input type="password" name="pw" placeholder="새 비밀번호 " value="${member.pw }" /> 
									<label for="newPw"></label> 
										<input type="password" name="pw_re" placeholder="새 비밀번호 확인" />
									<span id="info_email"></span>
									<div class="btn_login" onclick="fnPopup();">확인</div>
								</fieldset>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
 
<script type="text/javascript">

//아이디 찾기
var obj = document.f1;

function chk_id(){
			if (document.f1.name.value==""){
						alert("이름을 입력바랍니다.");
						document.f1.name.focus();
						return;
			}
			
			var pattern = /[`~!@#$%^&*|\\\'\";:\/?]/gi;	// 문자 
			var name = obj.name.value;

			if (pattern.test(name)==true){
						alert("이름이 바르지 않습니다.");
						obj.name.value="";
						return;
			}
			
			if (obj.birth.value==""){
						alert("생년월일을 입력바랍니다.");
						document.f1.birth.focus();
						return;
			}
			
			if (!(obj.birth.value.length==8)){
				alert("생년월일을 형식에 맞게 입력 바랍니다. 예)19910118");
				obj.birth.value="";
				obj.birth.focus();
				return;
			}
			
			obj.action = "${pageContext.request.contextPath}/member/find_id";

			obj.submit();
}

//숫자형 입력인지 체크
function chk_num(obj){
			if (isNaN(eval("document.f."+obj+".value"))){
						alert("숫자만 가능합니다.");
						eval("document.f."+obj+".value=''");
					return;
			}
}



// 비번 찾기
var obj2 = document.f2;

//이메일
function clickEmail(){
	obj2.chk_email.value = "N";
}

function fnPopup(){

			if (obj2.name.value==""){
						alert("이름을 입력바랍니다.");
						document.f2.name.focus();
						return;
			}
			
			var value_email = obj2.id.value;
			var findvalue_email = value_email.match(/[\w.]+@[\w.]+\.[a-zA-Z]+/);
			
			//이메일 공백체크
			if (obj2.id.value==""){
						alert("이메일을 입력바랍니다.");
						return;
			}
			
			// 이메일 형식체크
			if (value_email == findvalue_email){
						document.getElementById("info_email").innerHTML = "";
			}else{
						alert("이메일 형식이 아닙니다.");
						return;
			}
			
			// 비밀번호 체크
			if (obj2.pw.value==""){
				alert("비밀번호를 입력 바랍니다.");
				obj2.pw.focus();
				return;
			}
			
			if (obj2.pw_re.value==""){
					alert("비밀번호 확인을 입력 바랍니다.");
					obj2.pw_re.focus();
					return;
			}
			
			if (!(obj2.pw.value==obj2.pw_re.value)){
					alert("비밀번호를 확인바랍니다.");
					obj2.pw.value="";
					obj2.pw_re.value="";
					obj2.pw.focus();
					return;
			}
			
			//alert("비밀번호가 성공적으로 변경되었습니다. 로그인 페이지로 이동합니다.");
			
			obj2.action = "${pageContext.request.contextPath}/member/find_pw";

			obj2.submit();
}	

</script>
