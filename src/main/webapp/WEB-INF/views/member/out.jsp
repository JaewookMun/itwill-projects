<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/skip_header.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/footer.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" type="text/css"
	href="http://fonts.googleapis.com/earlyaccess/notosanskr.css">

<style type="text/css">

.sub_wrap, .sub_wrap03 {
    width: 90%;
    height: auto;
    position: relative;
    margin: 0 auto;
    padding: 0px;
    padding-top: 40px;
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

.join_agree {
    width: 100%;
    height: 30px;
    line-height: 28px;
    position: relative;
    display: block;
    border: 0px solid red;
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

.agree_box02 {
    width: 100%;
    height: auto;
    font-weight: 500;
    font-size: 14px;
    color: #555;
    padding: 16px;
    position: relative;
    display: inline-block;
    background: #f3f3f3;
    margin-top: 10px;
    margin-bottom: 30px;
}

.agree_box02 h3 {
    font-size: 15px;
    font-weight: 300;
    line-height: 24px;
    text-align: justify;
    letter-spacing: -0.5px;
    color: #555;
}

ol, ul {
    list-style: none;
}

.popup_btn {
    width: 70%;
    height: auto;
    position: relative;
    margin: 0 auto;
    margin-top: 30px;
    margin-bottom: 10px;
}

.popup_modify:hover {
    background-color: #008fe9;
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

.popup_cancel:hover{
	background-color: red;
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


</style>
</head>
<body>
	<div class="wrap">

		<div class="container">
			<div class="sub_wrap">
				<div class="sub_tit">
					<h1>회원 탈퇴</h1>
					<div class="under"></div>
				</div>

				<div class="contents_wrap">
					<div class="join_area">
						<div class="join_tit ">
							<p class="sub_bull">
								<span>회원 탈퇴 안내</span>
							</p>
						</div>
						<div class="agree_box02">
							<h3>
								회원 탈퇴를 하시면 해당 아이디로 작성하신 
								<font style="font-weight: 500; color: red;">게시물, 댓글 등의 자료와
									개인 정보가 모두 삭제되며, 복구가 불가능</font>합니다. <br>
							</h3>
						</div>
			
							<div class="popup_btn">
								<div class="popup_modify" onclick="javascript:history.back();">취소하기</div>
								<div class="popup_cancel" onclick="chk()">회원탈퇴</div>
							</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<script type="text/javascript">
function chk() {
	var msg = confirm("정말로 탈퇴 하시겠습니까?")
	if (msg== true){
		obj.action = "${pageContext.request.contextPath}/member/login";
	}
}

</script>	
	
</body>
</html>