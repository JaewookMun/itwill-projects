<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 변경</title>
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
}

.sub_bull span, .sub_bull02 span, .sub_bull04 span {
    font-size: 17px;
    font-weight: 500;
    margin-left: 14px;
    color: #333;
    display: block;
}

input, select, textarea, button {
    vertical-align: middle;
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
    width: 412px;
    margin-left: 14px;
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

.popup_btn {
    width: 70%;
    height: auto;
    position: relative;
    margin: 0 auto;
    margin-top: 30px;
    margin-bottom: 10px;
}

.popup_modify {
    width: 48%;
    height: 50px;
    line-height: 50px;
    text-align: center;
    color: #ffffff;
    font-size: 16px;
    font-weight: 400;
    position: relative;
    display: inline-block;
    background-color: #08b2f5;
    margin-top: 10px;
    margin: 0 auto;
    cursor: pointer;
}

.popup_modify:hover {
    background-color: #008fe9;
}

.popup_cancel {
    width: 48%;
    height: 50px;
    line-height: 50px;
    text-align: center;
    color: #fff;
    font-size: 16px;
    font-weight: 400;
    position: relative;
    display: inline-block;
    background-color: #78808c;
    margin-top: 10px;
    margin: 0 auto;
    cursor: pointer;
}

.popup_cancel:hover {
    background-color: red;
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

input[type="text"], select {
    vertical-align: middle;
    box-sizing: border-box;
}

div, label{
	margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    vertical-align: baseline;
    background: transparent;
}
</style>
</head>
<body>
	<div class="wrap">

		<div class="container">
			<div class="sub_wrap">
				<div class="sub_tit">
					<h1>회원정보 변경</h1>
					<div class="under"></div>
				</div>

				<div class="contents_wrap">
					<div class="join_area">
						<div class="join_tit">
							<p class="sub_bull">
								<span>회원정보</span>
							</p>
						</div>

						<form name="f" method="post">
							<input type="hidden" name="member_idx" value="151338">

							<div class="join_info">
								<div class="e_mail">
									<label for="id"></label> <input type="tel" name="id"
										value="${member.id }" readonly="readonly">
								</div>
								<div id="info_email" class="warn_area"></div>

								<div class="name01">
									<label for="memberImg"></label> <input type="file" name="memberImg"
										value="${member.memberImg }">
								</div>

								<div class="name01">
									<label for="name"></label> <input type="text" name="name"
										value="${member.name }">
								</div>

								<div class="birth01">
									<label for="birth"></label> <input type="text"
										name="birth" value="${member.birth }"
										onblur= "return chk_num(this.name);">
								</div>

								<div class="m_area">
									<label for="phone"></label>
									<div class="country_code">
										<input type="tel" name="f_phone0" value="+82"
											readonly="readonly">
									</div>
									<div class="number01">
										<input type="tel" name="phone" value="${member.phone }"
											onblur="return chk_num(this.name);">
									</div>
									
								</div>
								<div class="add_area">
									<div class="zip_code">
										<label for="zipcode"></label> <input type="zipcode"
											name="zipcode" id="zipNo" value="${member.zipcode }">

									</div>
									<div class="address_btn" onclick="daum.Postcode();">주소검색</div>
									<div class="add_01">
										<label for="mainAddress"></label> <input type="text"
											name="mainAddress" id="roadAddrPart1" value="${member.mainAddress }">
									</div>
									<div class="add_02">
										<label for="detailAddress"></label> <input type="text"
											name="detailAddress" value="${member.detailAddress }" id="addrDetail">
									</div>
								</div>
								<div class="popup_btn">
									<div class="popup_modify" onclick="chk_form();">저장하기</div>
									<div class="popup_cancel" onclick="chk();">회원탈퇴</div>
								</div>
							</div>
						</form>
						
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
//주소검색
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

//유효성검사
var obj = document.f;

function chk_form(){
			
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

	if (obj.phone.value==""){
				alert("휴대전화 번호를 입력 바랍니다.");
				obj.phone.focus();
				return;
	}

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

	var msg = confirm("회원정보를 수정 하시겠습니까?")
	if (msg== true){
				obj.action = "${pageContext.request.contextPath}/member/edit";
				obj.submit();
	}
}

//회원탈퇴
function chk() {
	var msg = confirm("정말로 탈퇴 하시겠습니까?")
	if (msg== true){
				alert("성공적으로 회원탈퇴 처리 되었습니다. 로그인 페이지로 이동합니다.");
				location.href = "${pageContext.request.contextPath}/member/out";
	}
	return;
}


</script>