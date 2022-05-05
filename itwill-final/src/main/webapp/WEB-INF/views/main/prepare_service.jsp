<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 공용 css -->
<link rel="stylesheet" href='<c:url value="/css/ready.css"/>'>
<link rel="stylesheet" href='<c:url value="/css/service.css"/>'>
<div class="sub_wrap">
	<div class="sub_tit">
		<h1>여행준비</h1>
		<div class="under"></div>
	</div>
	<div class="contents_wrap">
		<div class="pre_btn_area">
			<ul>
				<li class="pre_btn" style="cursor: pointer;"><a
					href="${pageContext.request.contextPath }/prepare">제주올레 길<br>표지
				</a></li>
				<li class="pre_btn" style="cursor: pointer;"><a
					href="${pageContext.request.contextPath }/prepare_tips">준비물</a></li>
				<li class="pre_btn_on" style="cursor: pointer;"><a
					href="${pageContext.request.contextPath }/prepare_service">서비스</a></li>
				<li class="pre_btn" style="cursor: pointer;"><a
					href="${pageContext.request.contextPath }/prepare_pass">제주올레<br>패스포트
				</a></li>
				<li class="pre_btn" style="cursor: pointer;"><a
					href="${pageContext.request.contextPath }/prepare_benefit">패스포트<br>할인업체
				</a></li>
				<li class="pre_btn" style="cursor: pointer;"><a
					href="${pageContext.request.contextPath }/prepare_chall">청년
						패스포트<br>베네핏 챌린지
				</a></li>
			</ul>
		</div>

		<!-- 서비스 -->
		<div class="info_txt_area mt_30" id="gnb3">

			<div class="keeper_box">
				<p class="sub_bull">
					<span>마음 가볍게, 올레길을 누리는 방법</span>
				</p>
				<br>
				<h5>
					길이 좋아, 걷는 것이 좋아 제주로 오는 뚜벅이 여행자가 늘고 있습니다. <br>그렇지만 혼자 걷기가 두렵다면
					길 위에 준비된 즐거움을 온전히 누리기 어렵겠지요. 마음 가볍게, 편리하고 안전한 제주여행을 위해 준비했습니다.
				</h5>
				<br> <br>
				<p class="sub_bull">
					<span>제주여행 지킴이 관련 문의</span>
				</p>
				<h5>
					<strong>공항 관광안내소</strong> : 064-742-8866&nbsp;
				</h5>
				<h5>
					<strong>제주항 안내소</strong> : 064-759-3210&nbsp;
				</h5>
				<h5>
					<strong>제주안내 120콜센터</strong> : 064-120
				</h5>

			</div>
			<div class="left_area">
				<div class="up"></div>
				<div class="con_txt">
					<h2>제주여행 지킴이</h2>
					<h3>제주여행 지킴이는 스마트 워치로 손목에 착용해 위급 시 버튼으로 신호를 보내는 단말기입니다. 버튼을
						누르면 현재 위치를 전달해 경찰이 현장으로 출동하는 시스템으로, 도보 여행자의 안전을 책임집니다.</h3>
				</div>
			</div>
			<div class="right_area">
				<div class="up"></div>
				<div class="con_txt">
					<h2>제주여행 지킴이대여 안내</h2>
					<ul class="con_list02">
						<li><h3>대여장소</h3> :<br>① 제주공항 종합관광안내센터(제주국제공항 1층 2번 게이트
							앞) <br>② 제주항 연안여객터미널 및 제주항 국제여객터미널 관광안내센터</li>
						<li><h3>대여료</h3> : 무료 (단, 보증금 50,000원 예치)</li>
						<li><h3>대여기간</h3> : 15일 이내 (전화로 1회 연장 가능, 최대 30일 대여)</li>
						<li><h3>대여방법</h3> : 신청서작성 -> 보증금 예치 -> 단말기 대여 -> 단말기 반납 ->
							보증금 환불 -> 신청서 파기</li>
					</ul>
				</div>

			</div>

			<div class="grey_box">
				<p class="sub_bull">
					<span>제주올레 및 숲길 탐방시, 안전수칙을 지켜주세요!</span>
				</p>
				<br> <br>
				<ul class="red_list">
					<li>혼자 걸으실 경우, 출발 시점에 제주올레 콜센터 064-762-2190로 연락주세요.</li>
					<li>하절기 6시, 동절기 5시 이후 걷기를 자제해 주세요.</li>
					<li>코스를 벗어난 가파른 계곡이나 절벽 등으로의 모험을 피해 주세요.</li>
					<li>제주올레 표식을 놓쳤을 때는 마지막 표식을 본자리로 되돌아가 표식을 다시 찾아보세요.</li>
					<li>간세등판과 플레이트에 있는 남은거리 및 주변 위치정보(건물명 등)를 숙지하며 걸어주세요.</li>
				</ul>
			</div>
		</div>


	</div>
</div>
<script type="text/javascript">
	/* $(".pre_btn").click(function() {
		$(".pre_btn_on").attr("class", "pre_btn");
		$(this).attr("class", "pre_btn_on");
	}); */
</script>
