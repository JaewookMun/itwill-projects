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

.login_area {
    width: 50%;
    margin: 0 auto;
    margin-top: 80px;
    margin-bottom: 80px;
}

.login_area h3 {
    font-weight: 300;
    font-size: 16px;
    color: #555;
    text-align: center;
}

.login_area h2 {
    height: auto;
    border: 0px solid red;
    margin: 0 auto;
    text-align: center;
    font-weight: 400;
    font-size: 28px;
    padding: 40px 0px 40px 0;
    line-height: 80px;
    color: #08b2f5;
}

.to_login:hover {
    background-color: #008fe9;
}

.to_login {
    width: 48%;
    height: 50px;
    line-height: 50px;
    text-align: center;
    color: #ffffff;
    font-size: 16px;
    font-weight: 400;
    position: absolute;
    display: inline-block;
    background-color: #08b2f5;
    margin-top: 10px;
    margin: 0 auto;
    cursor: pointer;
}

<%--
.to_find:hover {
    background-color: #08b2f5;
    color: white;
}

.to_find {
    width: 48%;
    height: 50px;
    line-height: 50px;
    text-align: center;
    color: #08b2f5;
    font-size: 16px;
    font-weight: 400;
    position: relative;
    display: inline-block;
    border: 1px solid #08b2f5;
    margin-top: 10px;
    margin: 0 auto;
    cursor: pointer;
}
--%>
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


					<div class="login_area">
						<h3>조회결과 입력하신 정보와 일치하는 아이디(E-mail)는 다음과 같습니다.</h3>		
						<h2>${id }</h2>
						<div class="to_login"
							onclick="javascript:location.href='${pageContext.request.contextPath}/member/login'">로그인</div>
						<!-- <div class="to_find"
							onclick="javascript:location.href='${pageContext.request.contextPath}/member/find_pw'">비밀번호찾기</div>-->
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>