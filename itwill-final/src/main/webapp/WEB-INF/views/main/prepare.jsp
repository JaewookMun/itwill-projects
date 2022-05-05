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
				<li class="pre_btn_on" style="cursor: pointer;"><a href="${pageContext.request.contextPath }/prepare">제주올레 길<br>표지</a></li>
				<li class="pre_btn" style="cursor: pointer;"><a href="${pageContext.request.contextPath }/prepare_tips">준비물</a></li>
				<li class="pre_btn" style="cursor: pointer;"><a href="${pageContext.request.contextPath }/prepare_service">서비스</a></li>
				<li class="pre_btn" style="cursor: pointer;"><a href="${pageContext.request.contextPath }/prepare_pass">제주올레<br>패스포트</a></li>
				<li class="pre_btn" style="cursor: pointer;"><a href="${pageContext.request.contextPath }/prepare_benefit">패스포트<br>할인업체</a></li>
				<li class="pre_btn" style="cursor: pointer;"><a href="${pageContext.request.contextPath }/prepare_chall">청년 패스포트<br>베네핏 챌린지</a></li>
			</ul>
		</div>

		<!-- 제주 올레길 표시 -->
		<div class="info_txt_area mt_30" id="gnb1">
			<div class="keeper_box">
				<p class="sub_bull">
					<span>제주올레는 자유여행입니다.</span>
				</p>
				<br>
				<h5>
					처음 걷는 이도, 혼자 걷는 이도, 제주올레 길에서는 길을 잃을 염려가 없습니다. 곳곳에 설치된 표지들이 친절하게 길을
					안내하기 때문이지요.<br> 풍광에 홀려, 향기에 취해, 깜빡 길을 잘못 들어도 걱정 없습니다. <br>마지막
					표지를 보았던 지점으로 돌아가 찬찬히 주변을 살피면 금세 반가운 표지를 발견할 수 있으니까요.
				</h5>
			</div>
			<div class="up mt_30"></div>
			<div class="con_txt">
				<h2>제주올레 길을 이끄는 안내표지</h2>
			</div>
			<div class="olle_list_wrap">
				<div class="olle_list01">
					<div class="olle_thumb">
						<img src="${pageContext.request.contextPath }/images/prepare/olle_list01.jpg">
					</div>
					<div class="olle_txt_area01">
						<div class="olle_tit">
							<h1>간세</h1>
						</div>
						<div class="olle_summary">간세는 제주올레의 상징인 조랑말 이름입니다. 느릿느릿한
							게으름뱅이라는 뜻인 제주어 ‘간세다리’에서 따 왔습니다. 갈림길에서는 간세가 길을 안내합니다. 시작점에서 종점을 향해
							정방향으로 걷는 경우, 간세 머리가 향하는 쪽이 길의 진행 방향입니다.</div>
					</div>
				</div>
				<div class="olle_list02">
					<div class="olle_thumb">
						<img src="${pageContext.request.contextPath }/images/prepare/olle_list02.jpg">
					</div>
					<div class="olle_txt_area01">
						<div class="olle_tit">
							<h1>리본</h1>
						</div>
						<div class="olle_summary">제주의 푸른 바다를 상징하는 파란색 리본과 제주 대표 특산품
							감귤을 상징하는 주황색의 리본 두 가닥을 한데 묶어 주로 전봇대와 나뭇가지에 매달아 놓았습니다. 멀리서도 눈에 잘
							띄므로 리본만 잘 따라 걸어도 길을 잃을 염려가 없습니다.</div>
					</div>
				</div>

				<div class="olle_list01">
					<div class="olle_thumb">
						<img src="${pageContext.request.contextPath }/images/prepare/olle_list03.jpg">
					</div>
					<div class="olle_txt_area01">
						<div class="olle_tit">
							<h1>화살표</h1>
						</div>
						<div class="olle_summary">화살표는 돌담, 전봇대 등에 붙어 길의 진행 방향을
							알려줍니다. 파란색 화살표는 정방향으로 걸을 때의 진행 방향을, 주황색 화살표는 역방향으로 걸을 때의 진행 방향을
							가리킵니다.</div>
					</div>
				</div>

				<div class="olle_list02">
					<div class="olle_thumb">
						<img src="${pageContext.request.contextPath }/images/prepare/olle_list05.jpg">
					</div>
					<div class="olle_txt_area01">
						<div class="olle_tit">
							<h1>플레이트</h1>
						</div>
						<div class="olle_summary">
							가로 세로 16㎝ 크기의 판으로 도심 지역의 전봇대, 숲 속의 나무 등에 붙어 있습니다.<br>플레이트에는
							정방형으로 걸을 때의 현재 거리와 총 거리가 표시되어 있습니다.
						</div>
					</div>
				</div>
				<div class="olle_list01">
					<div class="olle_thumb">
						<img src="${pageContext.request.contextPath }/images/prepare/olle_list06.jpg">
					</div>
					<div class="olle_txt_area01">
						<div class="olle_tit">
							<h1>스탠드(우회 및 위험 안내)</h1>
						</div>
						<div class="olle_summary">
							특별히 주의가 필요한 위험 구간이나, 일시적으로 우회해야 하는 곳에 설치되어 있습니다. <br>우회로의
							경로와 시간, 거리 등을 알려줍니다. 우회로에는 특별히 주황색 리본 두 가닥을 매달아 길을 안내합니다.
						</div>
					</div>
				</div>

				<div class="olle_list02">
					<div class="olle_thumb">
						<img src="${pageContext.request.contextPath }/images/prepare/olle_list07.jpg">
					</div>
					<div class="olle_txt_area01">
						<div class="olle_tit">
							<h1>시작점 표지석</h1>
						</div>
						<div class="olle_summary">
							제주올레 각 코스의 시작과 끝을 알리는 표지석은 제주를 대표하는 돌 현무암으로 만들었습니다.<br> 각
							코스의 전체 경로와 경유지, 화장실 위치 등이 상세히 그려져 있습니다.
						</div>
					</div>
				</div>

				<div class="olle_list01">
					<div class="olle_thumb">
						<img src="${pageContext.request.contextPath }/images/prepare/olle_list08.jpg">
					</div>
					<div class="olle_txt_area01">
						<div class="olle_tit">
							<h1>휠체어 구간</h1>
						</div>
						<div class="olle_summary">간세 안장의 S는 시작점, F는 종점을 뜻하며 간세 머리가
							향한 쪽이 진행방향입니다.</div>
					</div>
				</div>

				<div class="olle_list02">
					<div class="olle_thumb">
						<img src="${pageContext.request.contextPath }/images/prepare/olle_list09.jpg">
					</div>
					<div class="olle_txt_area01">
						<div class="olle_tit">
							<h1>스탬프 간세</h1>
						</div>
						<div class="olle_summary">각 코스를 상징하는 스탬프가 담긴 간세모양의 스탬프 박스는
							시작점, 중간지점, 종점에 설치 되어있습니다. 제주올레 패스포트에 각 코스 스탬프 3종을 모두 찍으면 제주올레
							여행자센터에서 완주증과 완주메달을 받을 수 있습니다.</div>
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
