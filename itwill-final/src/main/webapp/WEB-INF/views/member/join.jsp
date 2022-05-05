<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
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

.join_area {
	width: 50%;
	margin: 0 auto;
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

.join_info {
	width: 100%;
	height: auto;
	position: relative;
}

.e_mail, .name01, basic {
	display: block;
	position: relative;
}

.join_info input, textarea, fieldset input {
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

.warn_area {
	font-size: 13px;
	font-weight: 400;
	position: relative;
	top: -10px;
	left: 0px;
	border: 0px solid red;
}

.pw01, .pw02 {
	display: inline-block;
	width: 49%;
}

.pw02 {
	float: right;
}

.birth01 {
	display: block;
	width: 100%;
	float: left;
}

.m_area {
	display: inline-block;
	width: 100%;
}

.country_code {
	display: inline-block;
	width: 14%;
}

.number01, .number02 {
	display: inline-block;
	width: 22%;
	margin-left: 14px;
	margin-right: 14px;
}

.number02 {
	margin-right: 0px;
	float: right;
}

.add_area {
	display: inline-block;
	width: 100%;
}

.zip_code {
	position: relative;
	display: inline-block;
	width: 49%;
}

.address_btn {
	position: absolute;
	display: inline-block;
	width: 20%;
	background-color: #78808c;
	text-align: center;
	font-size: 15px;
	color: #fff;
	line-height: 50px;
	margin-left: -20%;
	cursor: pointer;
	z-index: 10;
}

.address_btn:hover {
	background-color: #08b2f5;
}

.add_01 {
	position: relative;
	display: inline-block;
	width: 49%;
	float: right;
}

.add_02 {
	display: block;
	width: 100%;
}

.agree_box {
	width: 100%;
	height: auto;
	font-weight: 500;
	font-size: 14px;
	color: #555;
	padding: 16px;
	position: relative;
	display: inline-block;
	background: #f3f3f3;
	margin-top: 15px;
}

ol, ul {
	list-style: none;
}

.join_agree {
	width: 100%;
	height: 30px;
	line-height: 28px;
	position: relative;
	display: block;
	border: 0px solid red;
}

.join_agree input[type='checkbox'] {
	margin-left: 0px;
	margin-right: 6px;
	-webkit-appearance: checkbox;
}

.join_agree a {
    position: relative;
    display: inline-block;
    border: 0px solid red;
    font-size: 14px;
    line-height: 22px;
    font-weight: 300;
    color: #888;
    border-bottom: 1px solid #aaa;
    float: right;
}

.btn_join {
	font-size: 15px;
	width: 160px;
	height: 50px;
	line-height: 50px;
	text-align: center;
	color: #fff;
	background-color: #08b2f5;
	margin: 0 auto;
	margin-top: 30px;
	cursor: pointer;
}

.btn_join:hover {
	background-color: #008fe9;
}
</style>
</head>
<body>
	<div class="wrap">

		<div class="container">
			<div class="sub_wrap">
				<div class="sub_tit">
					<h1>회원가입</h1>
					<div class="under"></div>
				</div>

				<div class="contents_wrap">
					<div class="join_area">
						<div class="join_tit">
							<p class="sub_bull">
								<span>기본정보</span>
							</p>
						</div>

						<form name="f" method="post">
							<input type="hidden" name="chk_email"> 
							<input type="hidden" name="p_lang" value="ko"> 
							<input type="hidden" name="p_gubun" value="T">

							<div class="join_info">
								<div class="e_mail">
									<label for="id"></label> <input type="email" name="id" value="${member.id }"
										placeholder="이메일" onclick="clickEmail();"
										onblur="isEmail(this.name.value)">
								</div>
								<div id="info_email" class="warn_area">
									<table style="width:780, text-align: right;">
										<tr>
										  <td width="20"></td>
										  <td style="color: red; text-align: center;">${message }</td>			
										</tr>
									</table>
								</div>

								<div class="name01">
									<label for="name"></label> <input type="text" name="name" value="${member.name }"
										placeholder="이름">
								</div>

								<div class="pw01">
									<label for="pw"></label> <input type="password" name="pw" value="${member.pw }"
										placeholder="비밀번호">
								</div>

								<div class="pw02">
									<label for="pw"></label> <input type="password" name="pw_re"
										placeholder="비밀번호 확인">
								</div>

								<div class="birth01">
									<label for="birth"></label> <input type="text"
										name="birth" value="${member.birth }" placeholder="생년월일 ex)19910118"
										onblur="return chk_num(this.name);">
								</div>

								<div class="m_area">
									<label for="phone"></label>
									<div class="country_code">
										<input type="tel" name="f_phone0" value="+82"
											readonly="readonly">
									</div>
									<div class="number01">
										<input type="tel" name="f_phone1" value="010" id="phone1">
									</div>
									-
									<div class="number01">
										<input type="tel" name="f_phone2" id="phone2"
											onblur="return chk_num(this.name);">
									</div>
									-
									<div class="number02">
										<input type="tel" name="f_phone3" id="phone3"
											onblur="return chk_num(this.name);">
									</div>
									<div class="number03">
										<input type="hidden" name="phone" value="${member.phone }" id="phone4">
									</div>
									
								</div>
								<div class="add_area">
									<div class="zip_code">
										<label for="zipcode"></label> <input type="zipcode"
											name="zipcode" value="${member.zipcode }" id="zipNo" readonly="readonly">

									</div>
									<div class="address_btn" onclick="daum.Postcode();">주소검색</div>
									<div class="add_01">
										<label for="mainAddress"></label> <input type="text"
											name="mainAddress" value="${member.mainAddress }" id="roadAddrPart1" readonly="readonly">
									</div>
									<div class="add_02">
										<label for="detailAddress"></label> <input type="text"
											name="detailAddress" value="${member.detailAddress }" placeholder="상세주소" id="addrDetail">
									</div>
								</div>

							</div>

							<div class="agree_box">
								<ul>
									<li class="join_agree"><input type="checkbox"
										name="chk_personal" value="N" /> <label for="chk_personal">개인정보
											취급방침</label> <span><a
											href="${pageContext.request.contextPath}/member/personal" target="_blank">전문보기</a></span></li>
									<li class="join_agree"><input type="checkbox"
										name="chk_join" value="N" /> <label for="chk_join">이용약관
											동의</label> <span><a href="${pageContext.request.contextPath}/member/contract"
											target="_blank">전문보기</a></span></li>
									<li class="join_agree"><input type="checkbox"
										name="chk_sms" value="Y" /> <label for="chk_join">SMS
											및 이메일 수신동의(선택)</label> <span><a
											href="${pageContext.request.contextPath}/member/sms" target="_blank">전문보기</a></span>
									</li>
								</ul>
							</div>
						</form>
						<div class="btn_join" onclick="chk_form();">가입하기</div>
					</div>
				</div>
			</div>
		</div>
	</div>


<%--주소API --%>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
	$(".address_btn").click(
		function() {
			new daum.Postcode({
				oncomplete : function(data) {
					document.getElementById('zipNo').value = data.zonecode; //5자리 새 우편번호 사용
					document.getElementById('roadAddrPart1').value = data.roadAddress;
					document.getElementById('addrDetail').focus();
				}
			}).open();
		});
	
	
	<%--유효성 검사--%>
	var obj = document.f;

	function chk_form(){
				
		if (obj.id.value==""){
					alert("이메일 주소를 입력 바랍니다.");
					obj.id.focus();
					return;
		}
		if (obj.name.value==""){
					alert("이름을 입력 바랍니다.");
					obj.name.focus();
					return;
		}

		var pattern = /[`~!@#$%^&*|\\\'\";:\/?]/gi;	// 문자 
		var name = obj.name.value;

		if (pattern.test(name)==true){
					alert("이름이 바르지 않습니다.");
					obj.name.value="";
					return;
		}

		if (obj.pw.value==""){
					alert("비밀번호를 입력 바랍니다.");
					obj.pw.focus();
					return;
		}
		if (obj.pw_re.value==""){
					alert("비밀번호 확인을 입력 바랍니다.");
					obj.pw_re.focus();
					return;
		}
		if (!(obj.pw.value==obj.pw_re.value)){
					alert("비밀번호를 확인바랍니다.");
					obj.pw.value="";
					obj.pw_re.value="";
					obj.pw.focus();
					return;
		}
		if (obj.birth.value==""){
					alert("생년월일을 입력 바랍니다.");
					obj.birth.focus();
					return;
		}

		if (!(obj.birth.value.length==8)){
					alert("생년월일을 다시 입력 바랍니다.");
					obj.birth.value="";
					obj.birth.focus();
					return;
		}

		if (obj.phone1.value==""){
					alert("휴대전화 번호를 입력 바랍니다.");
					obj.phone1.focus();
					return;
		}
		if (obj.phone2.value==""){
					alert("휴대전화 번호를 입력 바랍니다.");
					obj.phone2.focus();
					return;
		}
		if (obj.phone3.value==""){
					alert("휴대전화 번호를 입력 바랍니다.");
					obj.phone3.focus();
					return;
		}
		
		//폰 번호 하나로 합침
		var phone1= $("#phone1").val();
		var phone2= $("#phone2").val();
		var phone3= $("#phone3").val();
		
		var phone4= phone1 + phone2 + phone3;
		
		$("#phone4").attr("value", phone4);
		
		

		if (obj.zipcode.value==""){
					alert("주소를 검색해주세요.");
					obj.zipcode.focus();
					return;
		}
		if (obj.mainAddress.value==""){
					alert("주소를 검색해주세요.");
					obj.mainAddress.focus();
					return;
		}
		if (obj.detailAddress.value==""){
					alert("상세주소를 입력 바랍니다.");
					obj.detailAddress.focus();
					return;
		}


		if (obj.chk_personal.checked==false){
					alert("개인정보보호정책 동의가 필요합니다.");
					obj.chk_personal.focus();
					return;
		}else{
					obj.chk_personal.value = "Y";
		}

		if (obj.chk_join.checked==false){
					alert("이용약관 동의가 필요합니다.");
					obj.chk_join.focus();
					return;
		}else{
					obj.chk_join.value = "Y";
		}

		if (obj.chk_email.value=="N"){
					alert("이메일 주소를 확인 바랍니다.");
					obj.id.value="";
					obj.id.focus();
					return;
		}

		var msg = confirm("회원가입 하시겠습니까?")
		if (msg== true){
					obj.action = "${pageContext.request.contextPath}/member/join";
					obj.submit();
					alert("회원가입을 축하합니다! 로그인 페이지로 이동합니다.");
		}
	}
	
	
	
	// 이메일
	function clickEmail(){
				obj.chk_email.value = "N";
	}
	

	//이메일
	function isEmail(){

		var value_email = obj.id.value;
		var findvalue_email = value_email.match(/[\w.-]+@[\w.]+\.[a-zA-Z]+/);

		//이메일 공백체크
		if (obj.id.value==""){
					document.getElementById("info_email").innerHTML = "<font color='#FF0000'>이메일을 입력바랍니다.</font>";
					return;
		}

		// 이메일 형식체크
		if (value_email == findvalue_email){
					obj.chk_email.value = "Y";
					document.getElementById("info_email").innerHTML = "";
		}else{
					obj.chk_email.value = "N";
					document.getElementById("info_email").innerHTML = "<font color='#FF0000'>이메일 형식이 아닙니다.</font>";
					return;
		}
	}

	//숫자형 입력인지 체크
	function chk_num(obj){
		if (isNaN(eval("document.f."+obj+".value"))){
					alert("숫자만 가능합니다.");
					eval("document.f."+obj+".value=''");
					return;
		}
	}
	
	</script>
	</body>
</html>