<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인정보약관</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/index.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/skip_header.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/header.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/footer.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" type="text/css"
	href="http://fonts.googleapis.com/earlyaccess/notosanskr.css">

<style>
.sub_wrap {
	width: 1100px;
	height: auto;
	position: relative;
	margin: 0 auto;
	padding: 50px;
	margin-bottom: 80px;
	border: 0px solid red;
}

.wrap {
	width: 100%;
	height: auto;
	position: relative;
	font-family: 'Noto Sans KR', sans-serif;
}

.contents_wrap {
	width: 100%;
	height: auto;
	position: relative;
	display: inline-block;
	margin-top: 50px;
	border: 0px solid red;
}

/* 개인정보취급방침*/
.txt_area {
	width: 100%;
	font-size: 16px;
	font-weight: 400;
	line-height: 26px;
	margin-bottom: 100px;
	color: #555;
	padding: 30px 50px;
	text-align: justify;
	clear: both;
}

.subTit {
	width: 100%;
	height: auto;
	padding-top: 20px;
	position: relative;
	display: inline-block;
	text-align: center;
	margin: 0 auto;
	border: 0px solid red;
}

.subTit h2 {
	width: 100%;
	font-size: 36px;
	line-height: 50px;
	font-weight: 500;
	position: relative;
	display: block;
	margin-bottom: 10px;
	text-align: center;
}

.subTit p {
	width: 100%;
	font-size: 18px;
	font-weight: 300;
	position: relative;
	display: block;
	line-height: 40px;
	color: #555;
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

.privacy_txt p, h1 {
	width: 100%;
	font-size: 18px;
	font-weight: 500;
	color: #00a0e9;
	margin-top: 30px;
	margin-bottom: 10px;
}

.txt_area h3 {
	font-size: 15px;
	font-weight: 400;
	line-height: 28px;
	margin-top: 10px;
	margin-left: 0px;
	color: #333;
	position: relative;
	display: inline-block;
}

.txt_area a {
	color: #00a0e9;
	position: relative;
	display: inline-block;
}

.txt_area a:hover {
	color: #00a0e9;
	border-bottom: 1px solid #00a0e9;
	position: relative;
	display: inline-block;
}

.txt_area h4 {
	font-size: 15px;
	font-weight: 300;
	line-height: 28px;
	margin-left: 20px;
	margin-bottom: 8px;
	color: #555;
}

.txt_area h5 {
	font-size: 14px;
	font-weight: 300;
	line-height: 30px;
	margin-left: 40px;
	margin-top: -4px;
	margin-bottom: 8px;
	color: #555;
}

table.standard_p, table.standard_p td {
	border: 1px solid #ddd;
	text-align: center;
	padding: 14px;
	vertical-align: middle;
	overflow-x: auto;
}

table.standard_p {
	width: 100%;
	height: auto;
	margin: 10px 0px;
	background-color: #fff;
}

table.standard_p th {
	line-height: 30px;
	font-size: 15px;
	font-weight: 500;
	text-align: center;
	vertical-align: middle;
	background-color: #78808c;
	color: #fff;
	padding: 6px;
}

table.standard_p th:nth-child(1) {
	width: 20%;
}

table.standard_p th:nth-child(2) {
	width: 20%;
}

table.standard_p th:nth-child(3) {
	width: 20%;
}

table.standard_p th:nth-child(4) {
	width: 40%;
}

table.standard_p td {
	text-align: center;
	font-size: 15px;
	font-weight: 300;
	line-height: 24px;
	color: #555;
}

table.standard_p td a:hover {
	text-decoration: underline #aaa;
}

@media screen and (max-width:980px) {
	.subTit h2 {
		width: 100%;
		font-size: 24px;
		line-height: 50px;
		font-weight: 500;
		position: relative;
		display: block;
		margin-bottom: 10px;
		text-align: center;
	}
	.sub_wrap {
		width: 90%;
		height: auto;
		position: relative;
		margin: 0 auto;
		padding: 50px 0px;
		margin-bottom: 80px;
		border: 0px solid red;
	}
	.txt_area {
		width: 100%;
		font-size: 16px;
		line-height: 26px;
		margin-bottom: 200px;
		color: #555;
		padding: 30px 0px;
		text-align: justify;
		clear: both;
	}
	.txt_area h3 {
		font-size: 15px;
		font-weight: 400;
		line-height: 28px;
		margin-top: 10px;
		margin-left: 0px;
		color: #333;
	}
	.txt_area a {
		color: #00a0e9;
	}
	.txt_area a:hover {
		color: #00a0e9;
		border-bottom: 1px solid #00a0e9;
	}
	.txt_area h4 {
		font-size: 15px;
		font-weight: 300;
		line-height: 26px;
		margin-left: 0px;
		margin-bottom: 8px;
		color: #555;
	}
	.txt_area h5 {
		font-size: 14px;
		font-weight: 300;
		line-height: 26px;
		margin-left: 16px;
		margin-top: 0px;
		margin-bottom: 8px;
		color: #555;
	}
}
</style>
</head>
<body>

	<div class="sub_wrap">
		<div class="container cf">
			<div class="subTit">
				<h2>SMS 및 이메일 수신동의</h2>
				<div class="under"></div>
			</div>
		</div>

		<!-- subTitle end -->
		<div class="contents_wrap">
			<div class="txt_area">
				<p class="privacy_txt">
				<h1>SMS 및 이메일 수신동의 안내</h1>
				<h3>
					사단법인 제주올레(는) 후원 관련 안내 및 상담 또는 캠페인 및 행사 참여기회 제공을 위하여 입력해 주신 개인정보를
					이용합니다.<br> 회원님께서는 캠페인 및 행사 안내를 위한 정보 수집 및 이용에 관한 동의를 거부할 수
					있으나, 동의를 거부하실 경우 캠페인 및 행사 안내 등의 서비스가 제한됩니다. <br>단, 공지사항, 후원
					내역, 기부금영수증 관련 소식은 동의에 상관 없이 발송될 수 있습니다.
				</h3>
				</p>

			</div>
		</div>
	</div>
</body>
</html>