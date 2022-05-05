<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="<c:url value="/css/trail.css"/>"
	type="text/css">
<link rel="stylesheet" href="<c:url value="/css/board.css"/>"
	type="text/css">
<style>
.keeper_box, .con_info_box{
	width:100%;
	height:auto;
	position: relative; 
	display:inline-block;
	padding:26px;
	text-align:justify;
	background:#f7f7f7;

}

	.sub_bull, .sub_bull02, .sub_bull03, .sub_bull04{ 
 		width:100%;
        position: relative; 
		display:inline-block;
		overflow:hidden;
		margin-left:0%;
		vertical-align:middle;
    } 
	
		.sub_bull:before, .sub_bull02:before, .sub_bull03:before, .sub_bull04:before{
		position: absolute;
		display:block;
		top:12px;
		width: 6px;
		height: 6px;
		border-radius:50%;
		background-color: #08b2f5;
		content: '';
	}

	.sub_bull:before{
		top:6px;
	}

		.sub_bull span, .sub_bull02 span, .sub_bull04 span{
		font-size:17px;
		font-weight:500;
		margin-left:14px;
		color: #333;
		display:block;
	}

	sub_bull03 span{
		font-size:15px;
		font-weight:500;
		margin-left:20px;
		color: #333;
		display:block;
	}

	.keeper_box h5, con_txt h5{
		font-size:15px;
		color:#555;
		font-weight:300;
		line-height:22px;
		letter-spacing:-0.4px;
		margin-left:15px;
		margin-right:0px;
		margin-top:10px;
		position: relative; 
		display:inline-block;
		border:0px solid yellow;
	}

.keeper_box h4{
		font-size:15px;
		color:#555;
		font-weight:500;
		line-height:22px;
		letter-spacing:-0.4px;
		position: relative; 
		display:inline-block;
		border:0px solid yellow;
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
				<li class="tap02"><a
					href="${pageContext.request.contextPath }/center_info">안내소</a></li>
				<li class="tap02"><a
					href="${pageContext.request.contextPath }/center_center">제주올레 여행자센터</a></li>
				<li class="tap_on02"><a
					href="${pageContext.request.contextPath }/center_ganse">간세라운지 X 관덕정분식</a></li>
			</ul>
		</div>

		<div class="info_txt_area mt_30">
			<div class="center_area">
				<img src="${pageContext.request.contextPath }/images/center/lounge_logo.jpg">
			</div>
			<div class="up  mt_30"></div>
			<div class="con_txt">
				<h2>여행의 시작과 끝은 여기에서</h2>
				<h3>
					제주 여행, 어디서 어떻게 시작하면 좋을지 고민이라고요? 그렇다면 간세라운지 x 관덕정분식을 찾아주세요. <br>17코스
					종점이자 18코스 시작점인 간세라운지 x 관덕정분식은 제주 여행자들의 쉼터 간세라운지와 관덕정분식의 콜라보 매장으로,
					제주 여행자들을 위한 편의 제공 및 제주올레 기념품 판매는 물론 새롭고 건강한 분식을 판매하는 카페 공간도 있어 쉬어가기
					좋습니다.
				</h3>
			</div>
			<div class="dashline_box">
				<div class="keeper_box">
					<p class="sub_bull">
						<span>디자인 & 디스플레이 - 간세라운지</span>
					</p>
					<h5>간세라운지는 제주 여행정보를 나누고 맛있는 음식을 즐기는 제주 원도심 복합 문화공간입니다.</h5>
					<br>
				</div>
				<div class="left_area">
					<div class="con_img02">
						<img src="${pageContext.request.contextPath }/images/center/lounge02.jpg">
					</div>

				</div>
				<div class="right_area">
					<div class="up"></div>
					<div class="con_txt">
						<h2>제주올레 기념품</h2>
						<h3>제주올레 기념품 판매 수익금은 길을 개척하고 유지·관리하는데 사용됩니다. 다양한 여행 관련 도서와 제주
							여행자료가 비치되어 있어 편리하게 이용할 수 있습니다.</h3>
						<ul class="con_list">
							<li>제주올레 길 여행에 필요한 가이드북, 패스포트</li>
							<li>올레 길에서 만나는 돌담, 곶자왈, 들꽃을 모티브로 디자인된 스카프와 멀티두건</li>
							<li>제주올레 26개 코스를 상징하는 스탬프와펜과 스탬프티셔츠</li>
							<li>제주올레 길 표식 간세마그넷, 트래블 네임택, 트레킹 양말</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="dashline_box">

				<div class="keeper_box mb_20">
					<p class="sub_bull ">
						<span>먹거리 & 마실거리 - 관덕정분식</span>
					</p>
					<h5>제주 원도심에 위치한 관덕정분식은 한짓골 옛 떡볶이 골목의 역사와 추억을 현대적으로 재구성한 공간입니다.
						기존 분식의 틀을 벗어난 새로운 맛과 멋을 즐길 수 있습니다.</h5>
				</div>
				<div class="con_img02">
					<img src="${pageContext.request.contextPath }/images/center/lounge03.jpg">
				</div>
			</div>

		</div>
	</div>
</div>

<div class="footer">
	<div class="f_container">
		<div class="f_info">
			<div class="f_logo"></div>
			<div class="f_info_txt">

				<p>단체명 : (사)제주올레 ㅣ 대표자 : 서명숙 &nbsp;&nbsp;ㅣ&nbsp;&nbsp;제주특별자치도
					서귀포시 중정로 22 (서귀동 316-1) 2층 (우)63592</p>
				<p>
					Tel : 064-762-2190 Fax : 064-733-2170 &nbsp;&nbsp;ㅣ&nbsp;&nbsp; <a
						href="mailto:jejuolle@jejuolle.org" target="_blank">E-mail :
						jejuolle@jejuolle.org</a>
				</p>
				<p>사업자등록번호 : 616-82-20414</p>
				<p>제주올레 후원계좌 : 농협 903035-51-073914 예금주 : (사)제주올레</p>
				<p>Copyright ⓒ 제주올레, All Rights Reserved. 사이트에 게재된 모든 컨텐츠의 무단
					전재와 복제를 금합니다</p>
			</div>
			<div class="f_sns">
				<div class="f_info_txt02">
					<a href="/trail/kor/document/use_ko.asp" target="_blank">서비스이용약관</a>&nbsp;&nbsp;&nbsp;&nbsp;ㅣ&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="/trail/kor/document/personal_ko.asp" target="_blank">개인정보보호정책</a>
				</div>

				<a class="p" href="https://pf.kakao.com/_qYLxoxl" target="_blank"></a>
				<a class="blog" href="https://blog.naver.com/jejuolletrail"
					target="_blank"></a> <a class="yt"
					href="https://www.youtube.com/channel/UCfyBsM9Pqxox3PERv_Z6YVg"
					target="_blank"></a> <a class="insta"
					href="https://www.instagram.com/jejuolletrail/" target="_blank"></a>
				<a class="fb" href="https://www.facebook.com/jejuolletrail/"
					target="_blank"></a>
			</div>
			<!--<div class="sponsor_area">

									</div>-->
		</div>
	</div>
</div>