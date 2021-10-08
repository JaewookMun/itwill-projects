<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인정보약관</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/skip_header.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/footer.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" type="text/css"
	href="http://fonts.googleapis.com/earlyaccess/notosanskr.css">

<style>

 .sub_wrap{
	width:1100px; 
	height:auto;
	position:relative;
	margin:0 auto;
	padding:50px;
	margin-bottom:80px;
	border:0px solid red;
}


.wrap{
	width:100%;
	height:auto;
	position:relative;
	font-family: 'Noto Sans KR', sans-serif;
}

.contents_wrap{
	width:100%;
	height:auto;
	position:relative;
	display:inline-block;
	margin-top:50px;
	border:0px solid red;
}

/* 개인정보취급방침*/
.txt_area{
			width:100%;		
			font-size:16px;
			font-weight:400;
			line-height: 26px;
			margin-bottom:100px;
			color:#555;
			padding:30px 50px;
			text-align:justify;
			clear: both;
}

.subTit{
	width:100%;
	height:auto;
	padding-top:20px;
	position:relative;
	display:inline-block;
	text-align:center;
	margin:0 auto;
	border:0px solid red;
}

.subTit h2{
	width:100%;
	font-size:36px;
	font-weight:500;
	position:relative;
	display:block;
	margin-bottom:10px;
	text-align:center;
}

.subTit p{
	width:100%;
	font-size:18px;
	font-weight:300;
	position:relative;
	display:block;
	line-height:40px;
	color:#555;
	margin-bottom:10px;
	text-align:center;
}

.under{
	width:60px;
	height:6px;
	background:#08b2f5;
	position:relative;
	display:inline-block;
	margin:0 auto;
}

.privacy_txt p, h1{
	width:100%;
	font-size:18px;
	font-weight: 500;
	color:#00a0e9;
	margin-top:30px;
	margin-bottom:10px;
}

.txt_area h3{
	font-size:15px;
	font-weight:400;
	line-height: 28px;
	margin-top:10px;
	margin-left:0px;
	color:#333;
		position:relative;
	display:inline-block;
}

.txt_area a{
	color:#00a0e9;
		position:relative;
	display:inline-block;


}

.txt_area a:hover{
	color:#00a0e9;
	border-bottom:1px solid #00a0e9;
		position:relative;
	display:inline-block;
}

.txt_area h4{
	font-size:15px;
	font-weight:300;
	line-height: 28px;
	margin-left:20px;
	margin-bottom:8px;
	color:#555;
}

.txt_area h5{
	font-size:14px;
	font-weight:300;
	line-height: 30px;
	margin-left:40px;
	margin-top:-4px;
	margin-bottom:8px;
	color:#555;
}

table.standard_p, table.standard_p td{
            border:1px solid #ddd;
			text-align:center;
			padding:14px;
			vertical-align:middle;
			overflow-x:auto;
        }
        table.standard_p{
            width:100%;
            height:auto;
			margin:10px 0px;
            background-color:#fff;
		}
		
		table.standard_p th{
			line-height:30px;
			font-size:15px;
			font-weight:500;
			text-align:center;
			vertical-align:middle;
			background-color:#78808c;
			color:#fff;
            padding:6px; 
        }
		
		table.standard_p th:nth-child(1){width:20%;}
		table.standard_p th:nth-child(2){width:20%;}
		table.standard_p th:nth-child(3){width:20%;}
		table.standard_p th:nth-child(4){width:40%;}

        table.standard_p td{
			text-align:center;
			font-size:15px;
			font-weight:300;
			line-height:24px;
			color:#555;
        }
		
		table.standard_p td a:hover{
			text-decoration:underline #aaa;
        }
@media screen and (max-width:980px){

 .sub_wrap{
	width:90%; 
	height:auto;
	position:relative;
	margin:0 auto;
	padding:50px 0px;
	margin-bottom:80px;
	border:0px solid red;
}

.subTit h2{
	width:100%;
	font-size:24px;
	line-height:50px;
	font-weight:500;
	position:relative;
	display:block;
	margin-bottom:10px;
	text-align:center;
}

.txt_area{
			width:100%;		
			font-size:16px;
			line-height: 26px;
			margin-bottom:200px;
			color:#555;
			padding:30px 0px;
			text-align:justify;
			clear: both;
}

.txt_area h3{
				font-size:15px;
				font-weight:400;
				line-height: 28px;
				margin-top:10px;
				margin-left:0px;
				color:#333;
}


.txt_area a{
				color:#00a0e9;

}

.txt_area a:hover{
				color:#00a0e9;
				border-bottom:1px solid #00a0e9;
}


.txt_area h4{
				font-size:15px;
				font-weight:300;
				line-height: 26px;
				margin-left:0px;
				margin-bottom:8px;
				color:#555;
}

.txt_area h5{
				font-size:14px;
				font-weight:300;
				line-height: 26px;
				margin-left:16px;
				margin-top:0px;
				margin-bottom:8px;
				color:#555;
}

}

</style>
</head>
<body>


	<div class="sub_wrap">
		<div class="subTit">
			<h2>개인정보 취급방침</h2>
			<div class="under"></div>
		</div>

		<!-- subTitle end -->
		<div class="contents_wrap">
			<div class="txt_area">
				사단법인 제주올레 (이하 '제주올레')는 이용자의 개인정보 보호 및 권익을 보호하고 개인정보와 관련한 이용자의 고충을
				원활하게 처리할 수 있도록 다음과 같이 개인정보 처리방침을 두고 있습니다. <br>
				<br> 이 개인정보 처리방침은 시행일부터 적용되며, 법령 및 방침에 따른 변경내용의 추가, 삭제 및 정정이 있는
				경우에는 가능한 변경사항의 시행 7일 전부터 홈페이지 공지사항(또는 개별공지)을 통하여 고지할 것입니다.
				<p class="privacy_txt">
				<h1>제 1조 개인정보의 처리 목적</h1>
				제주올레는 수집한 개인정보를 다음의 목적을 위해 활용합니다 <br>
				<h3>(1) 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산</h3>
				<h4>콘텐츠 제공, 구매 및 요금 결제, 물품배송 또는 청구지 등 발송, 금융거래(결제 등) 본인 인증 및 금융
					서비스</h4>
				<h3>(2) 회원 관리</h3>
				<h4>회원제 서비스 이용에 따른 본인확인, 개인 식별, 불량회원의 부정 이용 방지와 비인가 사용 방지, 가입
					의사 확인, 연령확인, 불만처리 등 민원 처리, 고지사항 전달</h4>
				<h3>(3) 마케팅 및 광고에 활용</h3>
				<h4>신규 서비스(제품) 개발 및 특화, 이벤트 등 광고성 정보 전달, 인구통계학적 특성에 따른 서비스 제공 및
					광고 게재, 접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계 활용.</h4>
				</p>
				<p class="privacy_txt">
				<h1>제 2조 개인정보의 처리 항목</h1>
				제주올레는 회원가입, 서비스(후원 등) 신청 및 해지, 콘텐츠 작성(글쓰기) 등을 위해 아래와 같은 개인정보를 수집하고
				있습니다. <br>
				<h3>(1) 회원</h3>
				<h4>
					① 공통: [필수항목] 이름, 비밀번호, 휴대전화번호, 주소, 이메일 <br> ② 개인회원: [필수항목]
					생년월일, 성별 <br> ③ 기업회원: [필수항목] 회사명, 부서명, 회사 전화번호, 주소 <br> ④
					만14세 미만 아동일 경우: [필수항목]법정대리인 정보(법정대리인의 이름, 가입인증 휴대폰번호)
				</h4>
				<h3>(2) 홈페이지 이용과정 수집될 수 있는 정보의 범위</h3>
				<h4>이용기록, 접속 로그, 쿠키, 접속 IP정보, 지불정보 및 기록</h4>
				</p>
				<p class="privacy_txt">
				<h1>제 3조 개인정보의 처리 및 보유 기간</h1>
				회사는 법령에 따른 개인정보 보유·이용기간 또는 이용자로부터 개인정보를 수집 시에 동의 받은 개인정보 보유·이용기간 내에서
				개인정보를 처리 및 보유합니다.<br>관계법령에 의거하여 제주올레에서 보존하는 개인정보 항목 및 기간은 다음과
				같습니다. <br>
				<h3>(1) 전자상거래 등에서의 소비자 보호에 관한 법률</h3>
				<h4>
					① 계약 또는 청약철회 등에 관한 기록: 5년 <br>② 대금결제 및 재화 등의 공급에 관한 기록: 5년 <br>③
					소비자의 불만 또는 분쟁처리에 관한 기록: 3년
				</h4>
				<h3>(2) 통신비밀보호법</h3>
				<h4>로그인 기록(방문기록): 3개월</h4>
				</p>
				<p class="privacy_txt">
				<h1>제 4조 개인정보의 파기</h1>
				제주올레는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 파기절차 및 방법은
				다음과 같습니다.<br>
				<h3>(1) 파기절차</h3>
				<h4>
					① 홈페이지의 이용자로서 제주올레가 제공하는 서비스를 받는 동안 회원님의 개인정보는 회사가 지속적으로 보유하며 회원님께
					회사의 서비스를 제공하기 위하여 이용합니다. <br>② 회원님께서 가입 해지를 요청한 경우 및 회원자격을 상실한
					경우 개인정보 중에 해지관련 통계 관리를 위한 최소한의 정보만을 남기고 회원 개인을 식별할 수 있는 고유한 정보들은 즉시
					삭제되며, 어떤 이유나 방법으로도 재생되거나 이용할 수 없도록 처리됩니다. <br>③ 단, 제품고객으로 등록된
					회원의 경우에는 제품번호와 함께 제품번호와 일치하는 최소한의 개인정보를 남겨둬 제품 이용 관련 고객지원 서비스 제공에
					문제가 발생하지 않도록 처리됩니다. <br>④ 그 밖에 개인정보의 수집목적 또는 제공받은 목적이 달성된 때에도
					회사는 회원님의 개인정보를 지체 없이 파기합니다. <br>⑤ 또한, 수집목적 또는 제공받은 목적이 달성된
					경우에도 상법 등 법령의 규정에 의하여 보존할 필요성이 있는 경우에 한하여 회원님의 개인정보를 보유할 수 있습니다. 이
					경우 해당 개인 정보는 보관의 목적으로만 관리합니다.
				</h4>

				<h3>(2) 파기방법</h3>
				<h4>
					종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.<br>전자적 파일형태로 저장된 개인정보는
					기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.
				</h4>
				</p>
				<p class="privacy_txt">
				<h1>제 5조 개인정보의 제 3자 제공</h1>
				제주올레는 이용자의 개인정보를 원칙적으로 외부에 제공하지 않습니다. 다만, 아래의 경우에는 예외로 합니다.<br>
				<h3>
					(1) 이용자가 사전에 동의한 경우 <br>(2) 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와
					방법에 따라 수사기관의 요구가 있는 경우
				</h3>
				<h4>
					종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.<br>전자적 파일형태로 저장된 개인정보는
					기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.
				</h4>
				<h3>
					<font style="color: #00a0e9;">※ 제주올레는 이용자의 사전 동의를 얻은 경우에
						한하여, 아래의 업체에게 개인정보를 제공할 수 있습니다.</font>
				</h3>
				<table class="standard_p">
					<tr>
						<th>제공받는 자</th>
						<th>제공목적</th>
						<th>제공하는 항목</th>
						<th>개인정보의 보유 및 이용기간</th>
					</tr>
					<tr>
						<td>잇다 커뮤니케이션</td>
						<td>회원정보 제공에 동의한 이용자에 대하여 제휴 서비스 회원가입을 위한 로그인 인증</td>
						<td>아이디<br>비밀번호
						</td>
						<td>회원탈퇴 또는 제휴 서비스 해지·탈퇴 시, 가입 제휴사의 이용약관 및 개인정보처리방침에 명시된 목적
							달성 시까지, 제3자 제공 동의 철회 시까지.</td>
					</tr>
				</table>
				</p>
				<p class="privacy_txt">
				<h1>제 6조 개인정보처리의 위탁</h1>
				제주올레는 원활한 서비스 이행을 위해 다음과 같이 개인정보 처리업무를 외부 전문 업체에 위탁하고 있습니다.
				<table class="standard_p">
					<tr>
						<th>수탁업체</th>
						<th>위탁업무 내용</th>
						<th>개인정보의 보유 및 이용기간</th>
					</tr>
					<tr>
						<td>㈜페이게이트</td>
						<td>결제처리(휴대폰, 무통장입금, 계좌이체, 신용카드 등 결제수단)</td>
						<td rowspan="2">회원 탈퇴 시 혹은 위탁 계약 종료 시 또는 관계 법령에 따라 보유 기간이 명시된
							날 까지</td>
					</tr>
					<tr>
						<td>잇다 커뮤니케이션</td>
						<td>시스템 인프라 운영 및 서비스의 유지보수</td>
					</tr>
				</table>
				<br> 제주올레는 개인정보 처리업무 위탁 계약 시 개인정보가 안전하게 관리될 수 있도록 필요한 사항을 규정,
				수탁자가 개인정보를 안전하게 처리하는지 감독하고 있습니다. <br>위탁업무의 내용이나 수탁자가 변경될 경우
				지체없이 본 개인정보 처리방침을 통하여 공개하도록 하겠습니다.
				</p>
				<p class="privacy_txt">
				<h1>제 7조 이용자 및 법정대리인의 권리·의무와 그 행사방법</h1>
				이용자는 제주올레에 대하여 언제든지 다음 각 호의 개인정보 보호 관련 권리를 행사할 수 있습니다. <br>
				<h3>
					(1) 개인정보 열람요구<br>(2) 오류 등이 있을 경우 정정 요구<br>(3) 삭제요구<br>
					(4) 처리정지 요구
				</h3>
				<h4>
					① 홈페이지를 통한 방법<br> 회원은 홈페이지를 통해 언제든지 본인의 개인정보를 열람, 수정 그리고
					삭제(탈퇴) 할 수 있습니다.<br>개인정보의 열람 및 수정은 마이페이지 내 "회원정보수정" 메뉴를 통하여
					본인임이 확인되었을 경우, 회원님께서 원하시는 내용대로 변경하실 수 있고 더 이상 제주올레 홈페이지 회원이기를 거부할
					경우, 홈페이지 내에서 회원 탈퇴도 가능합니다. <br>② 이메일, 서면, 전화를 통한 방법<br>
					홈페이지를 통해 개인정보에 대한 열람, 정정, 삭제, 처리정지 요청을 할 수 없는 경우 '개인정보 보호법 시행규칙 별지
					제8호 서식'을 서면, 전자우편, 모사전송(FAX) 등을 통해 발송하여 권리를 행사 하실 수 있습니다. <br>③
					권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있으며, 회사는 권리 행사 요청을 받는
					경우 회원 본인이거나 정당한 대리인인지 확인하기 위하여 신분증, 주민등록등본, 가족관계 증명서 등을 추가로 요청할 수
					있습니다.
				</h4>
				</p>
				<p class="privacy_txt">
				<h1>제 8조 개인정보 자동수집 장치의 설치, 운영 및 그 거부에 관한 사항</h1>
				제주올레는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 파기절차 및 방법은
				다음과 같습니다. <br>
				<h3>
					(1) 제주올레는 이용자에게 보다 적절하고 유용한 서비스를 제공하기 위하여 회원이 로그인하는 인증 부분에서
					쿠키(Cookie)를 사용합니다. <br> (2) 쿠키란 제주올레의 사이트 접속 시 자동으로 회원의 컴퓨터로
					전송되는 텍스트 파일을 말합니다. <br> (3) 쿠키는 회원이 로그아웃(Log-out) 후, 사용 중인
					브라우저를 닫으면 PC에 저장되지 않고 자동 삭제됩니다. <br> (4) 회원은 쿠키 사용여부를 선택할 수
					있습니다. <br> (5) 쿠키 설정 거부방법
				</h3>
				<h4>사용하시는 웹 브라우저의 옵션을 선택함으로써 모든 쿠키를 허용하거나 쿠키를 저장할 때마다 확인을 거치거나,
					모든 쿠키의 저장을 거부할 수 있습니다. 단, 쿠키의 저장을 거부할 경우에는 로그인이 필요한 일부 서비스의 이용에 제한이
					생길 수 있으며 이에 대한 책임은 전적으로 본인에게 있음을 유의하시기 바랍니다.</h4>
				</p>
				<p class="privacy_txt">
				<h1>제 9조 개인정보에 대한 민원서비스</h1>
				회사는 고객의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 관련 부서 및 개인정보관리책임자를
				지정하고 있습니다.
				<table class="standard_p" style="">
					<colgroup>
						<col style="width: 20%">
						<col style="width: 38%">
						<col style="width: 42%">
					</colgroup>
					<tr>
						<th></th>
						<th>개인정보 보호책임자</th>
						<th>개인정보 열람청구 접수 및 처리 부서</th>
					</tr>
					<tr>
						<th>성명</th>
						<td>서명숙</td>
						<td>이영일</td>
					</tr>
					<tr>
						<th>소속 및 직책</th>
						<td>사단법인 제주올레 이사장</td>
						<td>사단법인 제주올레 사무국장</td>
					</tr>
					<tr>
						<th>e-Mail</th>
						<td>jejuolle@jejuolle.org</td>
						<td>201@jejuolle.org</td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td>064-762-2170</td>
						<td>064-762-2173</td>
					</tr>
				</table>
				<br> 이용자께서는 회사의 모든 서비스를 이용하시면서 발생한 모든 개인정보 보호 관련 문의, 불만처리, 피해구제
				등에 관한 사항을 개인정보 보호책임자 및 담당부서로 문의하실 수 있습니다. 회사는 정보주체의 문의에 대해 지체 없이 답변
				및 처리해드릴 것입니다.
				</p>
				<p class="privacy_txt">
				<h1>제 10조 권익침해 구제방법</h1>
				정보주체는 아래의 기관에 대해 개인정보 침해에 대한 피해구제, 상담 등을 문의하실 수 있습니다. <br>아래의
				기관은 회사와는 별개의 기관으로서, 회사의 자체적인 개인정보 불만처리, 피해구제 결과에 만족하지 못하시거나 보다 자세한
				도움이 필요하시면 문의하여 주시기 바랍니다. <br>
				<h3>
					개인정보침해신고센터 (<a href="http://privacy.kisa.or.kr">http://privacy.kisa.or.kr</a>
					/ 국번 없이 118) <br>개인정보분쟁조정위원회 (<a
						href="http://www.kopico.go.kr">http://www.kopico.go.kr</a> /
					1833-6972) <br>대검찰청 사이버수사과 (<a href="http://www.spo.go.kr">http://www.spo.go.kr</a>
					/ 국번 없이 1301) <br>경찰청 사이버안전국 (<a
						href="http://cyberbureau.police.go.kr">http://cyberbureau.police.go.kr</a>
					/ 국번 없이 182)
				</h3>

				</p>

			</div>
		</div>
	</div>
</body>
</html>