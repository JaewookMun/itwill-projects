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
				<li class="pre_btn_on" style="cursor: pointer;"><a href="${pageContext.request.contextPath }/prepare_tips">준비물</a></li>
				<li class="pre_btn" style="cursor: pointer;"><a href="${pageContext.request.contextPath }/prepare_service">서비스</a></li>
				<li class="pre_btn" style="cursor: pointer;"><a href="${pageContext.request.contextPath }/prepare_pass">제주올레<br>패스포트</a></li>
				<li class="pre_btn" style="cursor: pointer;"><a href="${pageContext.request.contextPath }/prepare_benefit">패스포트<br>할인업체</a></li>
				<li class="pre_btn" style="cursor: pointer;"><a href="${pageContext.request.contextPath }/prepare_chall">청년 패스포트<br>베네핏 챌린지</a></li>
			</ul>
		</div>

		<!-- <!-- 준비물 -->
		<div class="info_txt_area mt_30" id="gnb2">

			<div class="keeper_box">
				<p class="sub_bull">
					<span>제주올레는 자유여행입니다.</span>
				</p>
				<br>
				<h5>
					길에서도, 길을 벗어난 곳에서도 개인안전에 각별히 주의해 주세요. 만약의 사고에 대비하여 여행자보험에 가입하는 것이
					좋습니다. <br>제주올레 길에서 발생하는 불측의 사고에 대해 사단법인 제주올레는 법적인 책임이 없음을
					알려드립니다.
				</h5>
			</div>

			<div class="guide_list_wrap">
				<div class="guide_form">
					<div class="guide_img">
						<img src="${pageContext.request.contextPath }/images/prepare/prepare02.png">
					</div>
					<div class="guide_text02">
						① 올레 패스포트와 가이드북
						<p>제주올레 여행의 필수품, 패스포트에 코스별 스탬프를 찍으면서 여행의 추억도 쌓고, 올레꾼을 위한 할인도
							받을 수 있어요.</p>
					</div>
				</div>
				<div class="guide_form">
					<div class="guide_img">
						<img src="${pageContext.request.contextPath }/images/prepare/prepare02_1.png">
					</div>
					<div class="guide_text02">
						② 여행자 보험
						<p>올레길 여행은 안전을 스스로 책임지는 여행입니다. 혹시 모를 사고에 대비해 주세요.</p>
					</div>
				</div>
				<div class="guide_form">
					<div class="guide_img">
						<img src="${pageContext.request.contextPath }/images/prepare/prepare03.png">
					</div>
					<div class="guide_text02">
						③ 개인컵
						<p>제주올레 길에서는 원칙적으로 일회용품 사용을 금하고 있어요. 종이컵 대신 개인 컵을 사용하고, 나무젓가락
							대신 휴대용 수저를 사용하기를 추천해요.</p>
					</div>
				</div>
				<div class="guide_form">
					<div class="guide_img">
						<img src="${pageContext.request.contextPath }/images/prepare/prepare04.png">
					</div>
					<div class="guide_text02">
						④ 적합한 복장
						<p>한 여름이라도 숲길이 많아 반드시 긴 소매와 긴 바지를 입어야 해요. 제주는 하루에도 날씨 변화가 많으니
							가벼운 방수점퍼나 우비도 준비해 주세요.</p>
					</div>
				</div>
				<div class="guide_form">
					<div class="guide_img">
						<img src="${pageContext.request.contextPath }/images/prepare/prepare05.png">
					</div>
					<div class="guide_text02">
						⑤ 트래킹화와 샌들
						<p>트래킹화나 등산화가 가장 좋아요. 걷기에 익숙한 편이고 짧게 한 코스정도만 걷는다면 바닥이 미끄럽지 않은
							운동화 등도 가능해요. 여름철에 바닷가 코스를 걷는다면 샌들을 추가로 챙겨 주세요.</p>
					</div>
				</div>
				<div class="guide_form">
					<div class="guide_img">
						<img src="${pageContext.request.contextPath }/images/prepare/prepare06.png">
					</div>
					<div class="guide_text02">
						⑥ 현금과 교통카드
						<p>은행이나 카드 사용처가 많지 않기 때문에 현금이 필수, 만약의 경우 택시 등을 탈 수 있도록 비상금도 꼭
							챙겨 주세요. 대중교통을 이용할 때에는 교통카드가 편리해요.</p>
					</div>
				</div>
				<div class="guide_form">
					<div class="guide_img">
						<img src="${pageContext.request.contextPath }/images/prepare/prepare07.png">
					</div>
					<div class="guide_text02">
						⑦ 물
						<p>제주올레 길에는 인가나 가게나 드문 길도 많으므로 물을 꼭 챙겨 주세요.</p>
					</div>
				</div>

				<div class="guide_form">
					<div class="guide_img">
						<img src="${pageContext.request.contextPath }/images/prepare/prepare09.png">
					</div>
					<div class="guide_text02">
						⑧ 쓰레기봉투
						<p>자기가 만든 쓰레기는 길에 버리지 말고 꼭 자기가 챙겨서 돌아와야 해요.</p>
					</div>
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
