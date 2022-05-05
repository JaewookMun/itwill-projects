<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 공용 css -->
<link rel="stylesheet" href='<c:url value="/css/ready.css"/>'>
<div class="sub_wrap">
	<div class="sub_tit">
		<h1>여행준비</h1>
		<div class="under"></div>
	</div>
	<div class="contents_wrap">
		<div class="pre_btn_area">
			<ul>
				<li class="pre_btn" style="cursor: pointer;"><a href="${pageContext.request.contextPath }/prepare">제주올레 길<br>표지</a></li>
				<li class="pre_btn" style="cursor: pointer;"><a href="${pageContext.request.contextPath }/prepare_tips">준비물</a></li>
				<li class="pre_btn" style="cursor: pointer;"><a href="${pageContext.request.contextPath }/prepare_service">서비스</a></li>
				<li class="pre_btn_on" style="cursor: pointer;"><a href="${pageContext.request.contextPath }/prepare_pass">제주올레<br>패스포트</a></li>
				<li class="pre_btn" style="cursor: pointer;"><a href="${pageContext.request.contextPath }/prepare_benefit">패스포트<br>할인업체</a></li>
				<li class="pre_btn" style="cursor: pointer;"><a href="${pageContext.request.contextPath }/prepare_chall">청년 패스포트<br>베네핏 챌린지</a></li>
			</ul>
		</div>

		<!-- 제주 올레 패스포트 -->
		<div class="info_txt_area mt_30" id="gnb4">
			<div class="keeper_box">
				<p class="sub_bull">
					<span>제주올레 여행자를 위한 여행 증명서</span>
				</p>
				<br>
				<h5>
					그저 걷기만 해도 좋은 제주올레 길.<br>하지만 내가 걸어 온 발자취를 확인하는 즐거움, 다음 행선지로 향하는
					설레임을 한눈에 확인할 수 있다면 더 좋겠지요. 제주올레 패스포트는 걸을 때는 스탬프를 찾아 찍는 재미를, 걸은 뒤에는
					오래오래 되새길 추억거리를 선물합니다.
				</h5>
			</div>
			<div class="left_area">
				<div class="con_img02">
					<img src="${pageContext.request.contextPath }/images/prepare/passport.jpg">
				</div>
			</div>
			<div class="right_area">
				<div class="up"></div>
				<div class="con_txt">
					<h2>스탬프도 찍고 다양한 정보도 챙긴다</h2>
					<h3>제주올레 패스포트는 일반 여권 크기로 제주올레 각 코스별 지도와 완주 확인 스탬프 페이지, 메모장 등이
						수록되어 있으며 패스포트 할인업체에서는 교통, 입장료, 숙소, 식당 등 다양한 할인혜택을 받을 수 있습니다.</h3>
					<br> <br>
					<p class="sub_bull04">
						<span>구입 안내</span>
					</p>
					<ul class="con_list">
						<li><h3>사양</h3> : 85X125mm (여권 사이즈)</li>
						<li><h3>가격</h3> : 20,000원</li>
					</ul>
					<br>
					<p class="sub_bull04">
						<span>구입처</span>
					</p>
					<ul class="con_list">
						<li><h3>온라인</h3> : <a
							href="https://smartstore.naver.com/ollestore" target="_blank">올레스토어</a></li>
						<li><h3>오프라인</h3> : <a href="" target="_blank">제주별책부록</a> / <a
							href="https://www.jejuolle.org/trail/kor/support/center.asp?p_menu=center"
							target="_blank">제주올레 여행자센터</a> / <a
							href="https://www.jejuolle.org/trail/kor/support/info.asp?p_menu=info"
							target="_blank">제주올레 공식 안내소</a></li>
					</ul>
				</div>
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
