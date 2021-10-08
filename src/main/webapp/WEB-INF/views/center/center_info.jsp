<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="<c:url value="/css/trail.css"/>"
	type="text/css">
<link rel="stylesheet" href="<c:url value="/css/board.css"/>"
	type="text/css">
<style>
.guide_form {
	width: 229px;
	height: auto;
	position: relative;
	text-align: center;
	display: inline-block;
	margin-right: 28px;
	margin-bottom: 20px;
	border: 0px solid red;
}

.guide_img {
	width: 229px;
	height: auto;
	position: relative;
	display: inline-block;
	border: 0px solid #ddd;
	overflow: hidden;
}

.guide_img img {
	width: 229px;
	height: 182px;
	position: relative;
	display: inline-block;
	background-size: no-repeat center;
	object-fit: cover;
}

.guide_list_wrap .guide_form:nth-child(4n) {
	margin-right: 0px;
}

.guide_text {
	font-size: 16px;
	line-height: 24px;
	color: #333;
	font-weight: 500;
	position: relative;
	display: inline-block;
	margin: 10px 0;
}

.guide_text p {
	font-size: 15px;
	font-weight: 300;
	line-height: 24px;
	margin-top: 10px;
	text-align: center;
	letter-spacing: -0.8px;
	color: #555;
}

.keeper_box, .con_info_box {
	width: 100%;
	height: auto;
	position: relative;
	display: inline-block;
	padding: 26px;
	text-align: justify;
	background: #f7f7f7;
}

.sub_bull, .sub_bull02, .sub_bull03, .sub_bull04 {
	width: 100%;
	position: relative;
	display: inline-block;
	overflow: hidden;
	margin-left: 0%;
	vertical-align: middle;
}

.sub_bull:before, .sub_bull02:before, .sub_bull03:before, .sub_bull04:before
	{
	position: absolute;
	display: block;
	top: 12px;
	width: 6px;
	height: 6px;
	border-radius: 50%;
	background-color: #08b2f5;
	content: '';
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

sub_bull03 span {
	font-size: 15px;
	font-weight: 500;
	margin-left: 20px;
	color: #333;
	display: block;
}

.keeper_box h5, con_txt h5 {
	font-size: 15px;
	color: #555;
	font-weight: 300;
	line-height: 22px;
	letter-spacing: -0.4px;
	margin-left: 15px;
	margin-right: 0px;
	margin-top: 10px;
	position: relative;
	display: inline-block;
	border: 0px solid yellow;
}

.keeper_box h4 {
	font-size: 15px;
	color: #555;
	font-weight: 500;
	line-height: 22px;
	letter-spacing: -0.4px;
	position: relative;
	display: inline-block;
	border: 0px solid yellow;
}

table.infocenter, table.infocenter td {
	border: 1px solid #ddd;
	height: 40px;
	font-size: 15px;
	text-align: center;
	padding: 10px;
	line-height: 22px;
	color: #555;
	vertical-align: middle;
	overflow-x: auto;
}

table.infocenter {
	width: 100%;
	height: auto;
	margin: 30px 0px 20px 0px;
	background-color: #fff;
}

table.infocenter th {
	line-height: 24px;
	font-size: 15px;
	font-weight: 500;
	text-align: center;
	vertical-align: middle;
	border-right: 1px solid #aaa;
	background-color: #78808c;
	color: #fff;
	padding: 6px;
}

table.infocenter th:nth-child(1) {
	width: 10%;
}

table.infocenter th:nth-child(2) {
	width: 30%;
}

table.infocenter th:nth-child(3) {
	width: 60%;
}

table.infocenter td:nth-child(3) {
	width: 60%;
	text-align: left;
}

table.infocenter td {
	font-size: 15px;
	font-weight: 300;
	line-height: 24px;
	padding: 14px;
	vertical-align: middle;
	text-align: center;
	border: 1px solid #ddd;
	color: #555;
}
</style>
<div class="sub_wrap">
	<div class="sub_tit">
		<h1>올레센터</h1>
		<div class="under"></div>
	</div>
	<div class="contents_wrap">
		<div class="tap_area">
			<ul>
				<li class="tap_on02"><a
					href="${pageContext.request.contextPath }/center_info">안내소</a></li>
				<li class="tap02"><a
					href="${pageContext.request.contextPath }/center_center">제주올레 여행자센터</a></li>
				<li class="tap02"><a
					href="${pageContext.request.contextPath }/center_ganse">간세라운지 X 관덕정분식</a></li>
			</ul>
		</div>

		<div class="info_txt_area mt_30">
			<div class="center_area">
				<img
					src="${pageContext.request.contextPath }/images/center/info.jpg">
			</div>
			<div class="up"></div>
			<div class="con_txt" style="margin-bottom: 30px;">
				<h2>현장에서 듣는 올레길 생생 정보</h2>
				<h3>
					제주올레 공식 안내소에는 제주올레의 모든 것을 알고 있는 안내사들이 있습니다. <br>척척박사 안내사에게
					제주올레의 탄생과 역사에 관해 설명도 듣고, 제주올레가 제공하는 올레길의 다양한 자료도 받아 가세요.
				</h3>
			</div>
			<div class="dashline_box">
				<div class="con_txt02">
					<h1>공식안내소</h1>
				</div>
				<div class="guide_list_wrap">
					<div class="guide_form">
						<div class="guide_img">
							<img
								src="${pageContext.request.contextPath }/images/center/info02.png">
						</div>
						<div class="guide_text">
							1코스 공식안내소
							<p>
								서귀포시 성산읍 시흥리 2665-1<br>점심시간 : 12시 ~ 13시<br>(08:00~17:00,
								명절 설, 추석 당일 휴무)
							</p>
						</div>
					</div>
					<div class="guide_form">
						<div class="guide_img">
							<img
								src="${pageContext.request.contextPath }/images/center/info03.png">
						</div>
						<div class="guide_text">
							4코스 공식안내소
							<p>
								서귀포시 표선면 표선리 40<br>점심시간 : 12시 ~ 13시<br>(08:00~17:00,
								명절 설, 추석 당일 휴무)
							</p>
						</div>
					</div>
					<div class="guide_form">
						<div class="guide_img">
							<img
								src="${pageContext.request.contextPath }/images/center/info04.png">
						</div>
						<div class="guide_text">
							5코스 공식안내소
							<p>
								서귀포시 남원읍 남태해안로 140<br>점심시간 : 12시 ~ 13시<br>(08:00~17:00,
								명절 설, 추석 당일 휴무)
							</p>
						</div>
					</div>
					<div class="guide_form">
						<div class="guide_img">
							<img
								src="${pageContext.request.contextPath }/images/center/info05.png">
						</div>
						<div class="guide_text">
							7코스 제주올레 여행자센터
							<p>
								서귀포시 중정로 22<br>(08:00~23:00, 연중무휴)
							</p>
						</div>
					</div>
					<div class="guide_form">
						<div class="guide_img">
							<img
								src="${pageContext.request.contextPath }/images/center/info06.png">
						</div>
						<div class="guide_text">
							7-1코스 서귀포시외버스터미널
							<p>
								서귀포시 일주동로 9217<br>점심시간 : 12시 ~ 13시<br>(08:00~17:00, 명절
								설, 추석 당일 휴무)
							</p>
						</div>
					</div>
					<div class="guide_form">
						<div class="guide_img">
							<img
								src="${pageContext.request.contextPath }/images/center/info07.png">
						</div>
						<div class="guide_text">
							10코스 공식안내소
							<p>
								서귀포시 안덕면 화순리 813-9<br>점심시간 : 12시 ~ 13시<br>(08:00~17:00,
								명절 설, 추석 당일 휴무)
							</p>
						</div>
					</div>
					<div class="guide_form">
						<div class="guide_img">
							<img
								src="${pageContext.request.contextPath }/images/center/info08.png">
						</div>
						<div class="guide_text">
							11코스 공식안내소
							<p>
								서귀포시 대정읍 하모리 2140<br>점심시간 : 12시 ~ 13시<br>(08:00~17:00,
								명절 설, 추석 당일 휴무)
							</p>
						</div>
					</div>
					<div class="guide_form">
						<div class="guide_img">
							<img
								src="${pageContext.request.contextPath }/images/center/info11.png">
						</div>
						<div class="guide_text">
							14코스/14-1코스 공식안내소
							<p>
								제주시 한경면 저지리 1843-4<br>점심시간 : 12시 ~ 13시<br>(08:00~17:00,
								명절 설, 추석 당일 휴무)
							</p>
						</div>
					</div>
					<div class="guide_form">
						<div class="guide_img">
							<img
								src="${pageContext.request.contextPath }/images/center/info12.png">
						</div>
						<div class="guide_text">
							15코스 공식안내소
							<p>
								제주시 한림읍 대림리 2019-17<br>점심시간 : 12시 ~ 13시<br>(08:00~17:00,
								명절 설, 추석 당일 휴무)
							</p>
						</div>
					</div>
					<div class="guide_form">
						<div class="guide_img">
							<img
								src="${pageContext.request.contextPath }/images/center/info13.png">
						</div>
						<div class="guide_text">
							16코스 공식안내소
							<p>
								제주시 애월읍 고내리 1103-1<br>점심시간 : 12시 ~ 13시<br>(08:00~17:00,
								명절 설, 추석 당일 휴무)
							</p>
						</div>
					</div>
					<div class="guide_form">
						<div class="guide_img">
							<img
								src="${pageContext.request.contextPath }/images/center/info10.png">
						</div>
						<div class="guide_text">
							18코스 간세라운지
							<p>
								제주시 관덕로8길 7-9<br>점심시간 : 12시 ~ 13시<br>(08:00-17:00, 명절
								설, 추석 당일 휴무)
							</p>
						</div>
					</div>
					<div class="guide_form">
						<div class="guide_img">
							<img
								src="${pageContext.request.contextPath }/images/center/info14.png">
						</div>
						<div class="guide_text">
							18-1코스 공식안내소
							<p>
								제주시 추자면 대서리 19-1<br>점심시간 : 12시 ~ 13시<br>(09:00-18:00,
								명절 설, 추석 당일 휴무)
							</p>
						</div>
					</div>
				</div>
				<div class="guide_form">
					<div class="guide_img">
						<img
							src="${pageContext.request.contextPath }/images/center/info15.png">
					</div>
					<div class="guide_text">
						19코스 공식안내소
						<p>
							제주시 조천읍 조천리 2859-1<br>점심시간 : 12시 ~ 13시<br>(08:00-17:00,
							명절 설, 추석 당일 휴무)
						</p>
					</div>
				</div>
				<div class="guide_form">
					<div class="guide_img">
						<img
							src="${pageContext.request.contextPath }/images/center/info16.png">
					</div>
					<div class="guide_text">
						21코스 공식안내소
						<p>
							제주시 구좌읍 상도리 471-43<br>점심시간 : 12시 ~ 13시<br>(08:00-17:00,
							명절 설, 추석 당일 휴무)
						</p>
					</div>
				</div>
				<div class="guide_form">
					<div class="guide_img">
						<img
							src="${pageContext.request.contextPath }/images/center/info09.png">
					</div>
					<div class="guide_text">
						제주국제공항 안내소
						<p>
							제주시 용담2동 2002<br>제주국제공항 1층 도착 출구 맞은편 1번 게이트 옆<br>(08:00~21:00,
							연중무휴)
						</p>
					</div>
				</div>

			</div>

			<div class="dashline_box">
				<div class="con_txt02">
					<h1>족은안내소</h1>
				</div>
				<div class="keeper_box">
					<p class="sub_bull">
						<span>작지만 필요한 건 다 있다</span>
					</p>
					<h5>제주올레 공식 안내소가 없는 올레길에는 마을 분들이 가게 한 켠을 무상으로 내주어 안내 공간으로 쓰도록
						배려한 족은(작은) 안내소가 있습니다. 마을 한가운데 있는 만큼 지역 밀착형 정보와 각종 행사 소식을 듣고, 제주올레
						길에 관한 자료도 받을 수 있어요.</h5>
					<br>
				</div>

				<div class="up mt_30"></div>
				<div class="con_txt">
					<h2>위치 및 주소</h2>
					<table class="infocenter">
						<tr>
							<th>코스</th>
							<th>족은안내소</th>
							<th>주소</th>
						</tr>

						<tr>
							<td>1-1코스</td>
							<td>노닐다 게스트하우스</td>
							<td>제주시 우도면 우도해안길 84-3</td>
						</tr>

						<tr>
							<td>2코스</td>
							<td>돌담쉼팡</td>
							<td>서귀포시 성산읍 오조로 75</td>
						</tr>

						<tr>
							<td>2코스</td>
							<td>화잠레더 성산점</td>
							<td>서귀포시 성산읍 고성동서로 33 107동 1층</td>
						</tr>

						<tr>
							<td>3코스</td>
							<td>신산리 마을카페</td>
							<td>서귀포시 성산읍 환해장성로 33</td>
						</tr>

						<tr>
							<td>4코스</td>
							<td>알토산 고팡</td>
							<td>서귀포시 표선면 토산중앙로16번길 1</td>
						</tr>

						<tr>
							<td>6코스</td>
							<td>쇠소깍안내센터</td>
							<td>서귀포시 쇠소깍로 142</td>
						</tr>

						<tr>
							<td>7코스</td>
							<td>솔빛바다</td>
							<td>서귀포시 서홍동 795-1</td>
						</tr>

						<tr>
							<td>8코스</td>
							<td>송이슈퍼</td>
							<td>서귀포시 월평하원로 11</td>
						</tr>

						<tr>
							<td>9코스</td>
							<td>난드르삼거리마트</td>
							<td>서귀포시 안덕면 창천리 831-1</td>
						</tr>

						<tr>
							<td>12코스</td>
							<td>무릉외갓집</td>
							<td>서귀포시 대정읍 중산간서로 28521</td>
						</tr>

						<tr>
							<td>13코스</td>
							<td>카페 차귀놀</td>
							<td>제주시 한경면 한경해안로 136 1층</td>
						</tr>

						<tr>
							<td>14코스<br>14-1코스
							</td>
							<td>길동무</td>
							<td>제주시 한경면 중산간서로 3689</td>
						</tr>

						<tr>
							<td>16코스</td>
							<td>베리제주</td>
							<td>제주시 애월읍 고내로7길 45-14</td>
						</tr>

						<tr>
							<td>17코스</td>
							<td>광령식당</td>
							<td>제주시 광성로 299</td>
						</tr>

						<tr>
							<td>17코스</td>
							<td>해올렛</td>
							<td>제주시 용해로 50</td>
						</tr>

						<tr>
							<td>19코스</td>
							<td>카페힐섬</td>
							<td>제주시 조천읍 조천북 6길 58</td>
						</tr>

						<tr>
							<td>20코스</td>
							<td>고래고래게스트하우스</td>
							<td>제주시 구좌읍 김녕항3길 32-4</td>
						</tr>

						<tr>
							<td>21코스</td>
							<td>괜찮아게스트하우스</td>
							<td>제주시 구좌읍 해녀박물관길 27</td>
						</tr>

					</table>

				</div>

			</div>

		</div>
	</div>
</div>