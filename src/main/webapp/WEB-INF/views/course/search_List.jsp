<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/course.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	//코스 전체보기 레이어드 창 띄우기
	$(document).ready(function() {
		$('.all_arw').click(function() {
			$('#view_course').css('display', 'block');
		});

		$('.course_slc_close').click(function() {
			$('#view_course').hide();
		});
	});
</script>
<style>
.service {
	text-align: center;
	font-size: 20px;
	color: red;
}
</style>
<body>
	<div class="wrap">
		<c:if test="${empty(search_List) } ">
			<h1>서비스 준비 중입니다.</h1>
		</c:if>
		<c:forEach var="courseForm" items="${search_List }">
			<div class="container">
				<div class="sub_warp">
					<!-- 각 코스 제목 -->
					<div class="sub_tit">
						<h1>${courseForm.titleNo }</h1>
					<div class="nuder"></div>
					</div>
					<!-- 컨텐츠 시작 -->
					<!-- 왼쪽 박스 -->
					<div class="contents_warp">
						<div class="con_tit_area">
							<div class="course_all">
								<span class="all_arw" onclick="chk_course">
									<p style="text-align: center">코스 전체보기</p>
								</span>
							</div>
						</div>
						<!-- 코스 전체보기 -->
						<div id="view_course" class="course_slc cf" style="display: none;">
							<div class="course_slc_close" onclick="chk_course_x();"></div>
							<div class="course_list">
								<div class="course_list_tit">
									<p class="sub_bull">
										<span style="font-weight: 400; color: #fff;">코스 전체보기</span>
									</p>
								</div>
								<ul>
									<li class="course"><a
										href="${pageContext.request.contextPath }/courses?category=1">
											<img
											src="${pageContext.request.contextPath }/img/course/all_course/wapen_1.png">
											1 코스
									</a></li>
									<li class="course"><a
										href="${pageContext.request.contextPath }/courses?category=2">
											<img
											src="${pageContext.request.contextPath }/img/course/all_course/wapen_2.png">
											1-1 코스
									</a></li>
									<li class="course"><a
										href="${pageContext.request.contextPath }/courses?category=3">
											<img
											src="${pageContext.request.contextPath }/img/course/all_course/wapen_3.png">
											2 코스
									</a></li>
									<li class="course"><a
										href="${pageContext.request.contextPath }/courses?category=4">
											<img
											src="${pageContext.request.contextPath }/img/course/all_course/wapen_4.png">
											3-A 코스
									</a></li>
									<li class="course"><a
										href="${pageContext.request.contextPath }/courses?category=5">
											<img
											src="${pageContext.request.contextPath }/img/course/all_course/wapen_5.png">
											3-B 코스
									</a></li>
								</ul>
								<ul>
									<li class="course"><a
										href="${pageContext.request.contextPath }/courses?category=6">
											<img
											src="${pageContext.request.contextPath }/img/course/all_course/wapen_6.png">
											4 코스
									</a></li>
									<li class="course"><a
										href="${pageContext.request.contextPath }/courses?category=7">
											<img
											src="${pageContext.request.contextPath }/img/course/all_course/wapen_7.png">
											5 코스
									</a></li>
									<li class="course"><a
										href="${pageContext.request.contextPath }/courses?category=8">
											<img
											src="${pageContext.request.contextPath }/img/course/all_course/wapen_8.png">
											6 코스
									</a></li>
									<li class="course"><a
										href="${pageContext.request.contextPath }/courses?category=9">
											<img
											src="${pageContext.request.contextPath }/img/course/all_course/wapen_9.png">
											7 코스
									</a></li>
									<li class="course"><a
										href="${pageContext.request.contextPath }/courses?category=10">
											<img
											src="${pageContext.request.contextPath }/img/course/all_course/wapen_10.png">
											7-1 코스
									</a></li>
								</ul>
								<ul>
									<li class="course"><a
										href="${pageContext.request.contextPath }/courses?category=11">
											<img
											src="${pageContext.request.contextPath }/img/course/all_course/wapen_11.png">
											8 코스
									</a></li>
									<li class="course"><a
										href="${pageContext.request.contextPath }/courses?category=12">
											<img
											src="${pageContext.request.contextPath }/img/course/all_course/wapen_12.png">
											9 코스
									</a></li>
									<li class="course"><a
										href="${pageContext.request.contextPath }/courses?category=13">
											<img
											src="${pageContext.request.contextPath }/img/course/all_course/wapen_13.png">
											10 코스
									</a></li>
									<li class="course"><a
										href="${pageContext.request.contextPath }/courses?category=14">
											<img
											src="${pageContext.request.contextPath }/img/course/all_course/wapen_14.png">
											10-1 코스
									</a></li>
									<li class="course"><a
										href="${pageContext.request.contextPath }/courses?category=15">
											<img
											src="${pageContext.request.contextPath }/img/course/all_course/wapen_15.png">
											11 코스
									</a></li>
								</ul>
								<ul>
									<li class="course"><a
										href="${pageContext.request.contextPath }/courses?category=16">
											<img
											src="${pageContext.request.contextPath }/img/course/all_course/wapen_16.png">
											12 코스
									</a></li>
									<li class="course"><a
										href="${pageContext.request.contextPath }/courses?category=17">
											<img
											src="${pageContext.request.contextPath }/img/course/all_course/wapen_17.png">
											13 코스
									</a></li>
									<li class="course"><a
										href="${pageContext.request.contextPath }/courses?category=18">
											<img
											src="${pageContext.request.contextPath }/img/course/all_course/wapen_18.png">
											14 코스
									</a></li>
									<li class="course"><a
										href="${pageContext.request.contextPath }/courses?category=19">
											<img
											src="${pageContext.request.contextPath }/img/course/all_course/wapen_19.png">
											14-1 코스
									</a></li>
									<li class="course"><a
										href="${pageContext.request.contextPath }/courses?category=20">
											<img
											src="${pageContext.request.contextPath }/img/course/all_course/wapen_20.png">
											15-A 코스
									</a></li>
								</ul>
								<ul>
									<li class="course"><a
										href="${pageContext.request.contextPath }/courses?category=21">
											<img
											src="${pageContext.request.contextPath }/img/course/all_course/wapen_21.png">
											15-B 코스
									</a></li>
									<li class="course"><a
										href="${pageContext.request.contextPath }/courses?category=22">
											<img
											src="${pageContext.request.contextPath }/img/course/all_course/wapen_22.png">
											16 코스
									</a></li>
									<li class="course"><a
										href="${pageContext.request.contextPath }/courses?category=23">
											<img
											src="${pageContext.request.contextPath }/img/course/all_course/wapen_23.png">
											17 코스
									</a></li>
									<li class="course"><a
										href="${pageContext.request.contextPath }/courses?category=24">
											<img
											src="${pageContext.request.contextPath }/img/course/all_course/wapen_24.png">
											18 코스
									</a></li>
									<li class="course"><a
										href="${pageContext.request.contextPath }/courses?category=25">
											<img
											src="${pageContext.request.contextPath }/img/course/all_course/wapen_25.png">
											18-1 코스
									</a></li>
								</ul>
								<ul>
									<li class="course"><a
										href="${pageContext.request.contextPath }/courses?category=26">
											<img
											src="${pageContext.request.contextPath }/img/course/all_course/wapen_26.png">
											19 코스
									</a></li>
									<li class="course"><a
										href="${pageContext.request.contextPath }/courses?category=27">
											<img
											src="${pageContext.request.contextPath }/img/course/all_course/wapen_27.png">
											20 코스
									</a></li>
									<li class="course"><a
										href="${pageContext.request.contextPath }/courses?category=28">
											<img
											src="${pageContext.request.contextPath }/img/course/all_course/wapen_28.png">
											21 코스
									</a></li>
								</ul>
							</div>
						</div>
						<!-- 코스맵 -->
						<div class="course_view_area">
							<!-- 이미지 추가하면 css도 추가 -->
							<img src="${pageContext.request.contextPath }/img/course/${courseForm.mapImg }" style="height: 498px;">
							<div class="course_info">
								<div class="location">
									<img src="${pageContext.request.contextPath }/img/course/${courseForm.thumb }">
								</div>
								<div class="icon_info">
									<img src="${pageContext.request.contextPath }/img/course/all_course/icon_info.jpg">
								</div>
								<div class="btn_audio" onclick="chk_audio('01')">
									<p class="icon_audio">
										<span>오디오가이드듣기</span>
									</p>
								</div>
								<audio controls="controls" style="display: none;" id="myAudio">
									<source src="" type="audio/mp3" style="width: 50px;">
								</audio>
							</div>
						</div>

						<!-- 비주얼 맵 -->
						<div class="visual_map">
							<!-- 이미지 추가하면 css도 추가 -->
							<img src="${pageContext.request.contextPath }/img/course/${courseForm.vmap }">
						</div>

						<!-- 코스개요 -->
						<div class="info_txt_area">
							<div class="left_area">
								<div class="level_info">
									<span>총길이</span> : ${courseForm.totLoad }&nbsp;&nbsp; <span>소요시간</span>
									: ${courseForm.totTime }&nbsp;&nbsp; <span>난이도</span> :
									<div class="level_star">
										<img src="${pageContext.request.contextPath }/img/course/${courseForm.levelStar }">
									</div>
									<div class="graph">
										<img src="${pageContext.request.contextPath }/img/course/${courseForm.graph }">
									</div>
								</div>
							</div>
							<div class="right_area">
								<!-- course_txt -->
								<div class="con_txt">
									<h3>${courseForm.courseTxt }</h3>
								</div>
							</div>

							<div class="con_box">
								<!-- 휠체어 구간 -->
								<div class="left_con">
									<div class="up"></div>
									<c:if test="${courseForm.wheelLoad!=null }">
										<div class="con_txt">
											<h2>휠체어 구간</h2>
											<h3>
												<span>난이도</span> :
												<div class="level_star">
													<img src="${pageContext.request.contextPath }/img/course/${courseForm.wheelStar }">
												</div>
												| <span>구간거리</span> : ${courseForm.wheelLoad } <br> <span>시작점</span>
												: ${courseForm.wheelStart } <br> <br>
												${courseForm.wheelContent }
											</h3>
										</div>
									</c:if>
									<c:if test="${courseForm.wheelLoad==null }">
										<div class="con_txt">
											<h2>현재 코스는 휠체어 가능 구간이 없습니다.</h2>
											<h3>
												<p class="sub_bull02">
													<span>휠체어 가능 구간</span>
												</p>
												※ 클릭하시면 해당 코스로 이동합니다.
											</h3>
											<div class="wheelchair_areac">
												<ul>
													<li class="wheelchair"><a
														href="${pageContext.request.contextPath }/courses?category=1"
														style="text-align: center;">1코스</a></li>
													<li class="wheelchair"><a
														href="${pageContext.request.contextPath }/courses?category=6"
														style="text-align: center;">4코스</a></li>
													<li class="wheelchair"><a
														href="${pageContext.request.contextPath }/courses?category=7"
														style="text-align: center;">5코스</a></li>
													<li class="wheelchair"><a
														href="${pageContext.request.contextPath }/courses?category=8"
														style="text-align: center;">6코스</a></li>
													<li class="wheelchair"><a
														href="${pageContext.request.contextPath }/courses?category=11"
														style="text-align: center;">8코스</a></li>
													<li class="wheelchair"><a
														href="${pageContext.request.contextPath }/courses?category=13"
														style="text-align: center;">10코스</a></li>
													<li class="wheelchair"><a
														href="${pageContext.request.contextPath }/courses?category=14"
														style="text-align: center;">10-1코스</a></li>
													<li class="wheelchair"><a
														href="${pageContext.request.contextPath }/courses?category=16"
														style="text-align: center;">12코스</a></li>
													<li class="wheelchair"><a
														href="${pageContext.request.contextPath }/courses?category=18"
														style="text-align: center;">14코스</a></li>
													<li class="wheelchair"><a
														href="${pageContext.request.contextPath }/courses?category=23"
														style="text-align: center;">17코스</a></li>
												</ul>
											</div>
										</div>
									</c:if>
								</div>
								<div class="right_con">
									<div class="up"></div>
									<div class="con_txt">
										<h2>코스 Tip</h2>
										<h3>${courseForm.tip }</h3>
									</div>
								</div>
							</div>
							<!-- 올레지기 -->
							<div class="keeper_box">
								<p class="sub_bull">
									<span>올레지기</span>
								</p>
								<br>
								<h5>
									"제주올레 길이 처음이라도 문제없습니다." <br> "낯선 길에 대한 두려움은 내려놓고, 새로운 만남에
									대한 설렘만 가지고 오세요."
								</h5>
								<div class="right_keeper">
								</div>
							</div>
							<c:if test="${courseForm.friendName!=null }">
								<div class="dashline_box">
									<div class="left_con">
										<div class="friends02">
											<img src="${pageContext.request.contextPath }/img/course/${courseForm.friendImg }">
											<div class="con_txt">
												<p>세계 곳곳의 도보 여행길과 연대합니다.</p>
												<h3>(사)제주올레는 해외 도보여행 단체와 손을 잡고 한 코스 또는 한 구간을 지정해 공동 홍보
													마케팅을 진행하는 글로벌 프로젝트를 펼칩니다. 그리스, 이탈리아, 캐나다, 영국, 스위스, 레바논 등
													‘우정의길’을 맺은 세계 유명 도보 여행지 9곳에서도 제주올레의 반가운 얼굴을 만납니다.</h3>
											</div>
										</div>
									</div>
									<!-- 우정의 길 -->
									<div class="right_con">
										<div class="up"></div>
										<div class="con_txt">
											<h2>우정의 길</h2>
											<p class="sub_bull02">
												<span>${courseForm.friendName }</span>
											</p>
											<br>
											<div class="friends_info">
												<img src="${pageContext.request.contextPath }/img/course/${courseFrom.friendSq }">
												<ul>
													<li><span>위치 구간</span> : ${courseForm.friendLoc }</li>
													<li><span>난이도</span> : ${courseForm.friendLevel }</li>
													<li><span>코스 경로</span> : ${courseForm.friendCourse }</li>
												</ul>
											</div>
											<br>
											<div class="friends_btn">
												<a href="${courseForm.link }" target="_blank">홈페이지 바로가기</a>
											</div>
											<h3>${courseForm.friendInfo }</h3>
										</div>
									</div>
								</div>
							</c:if>
							<!-- 공식안내소 -->
							<div class="dashline_box">
								<div class="left_con">
									<div class="con_txt">
										<h1>공식안내소</h1>
										<h3>제주올레 공식 안내소에는 제주올레의 모든 것을 알고 있는 선생님들이 있습니다. 척척박사
											선생님들께 제주올레의 탄생과 역사에 관해 설명도 듣고, 제주올레가 제공하는 올레길의 다양한 자료도 받아
											가세요.</h3>
									</div>
								</div>
								<div class="right_con">
									<div class="infobox">
										<p class="sub_bull02">
											<span>제주올레 공식 안내소(말미오름 입구)</span>
										</p>
										<h3>
											<span>위치</span> " : 서귀포시 성산읍 시흥리 2665-1 " <br>
										</h3>
										<h5>운영시간 : 08:00 ~ 17:00(점심시간=12:00~13:00) 명절 설, 추석 당일 휴무</h5>
									</div>
								</div>
							</div>
							<!-- 우정안내소 -->
						</div>
						<div class="info_txt_area02" id="olle_fraffic">
							<div class="left_area">
								<div class="con_txt">
									<h1>교통정보</h1>
									<h3>2017년 8월, 제주도 대중교통 체계 전면 개편 후, 지속적으로 노선 변경이 진행되고 있습니다.
										길 아래 내용이 최신 정보가 아닐 수 있는 점 양해 부탁 드리며 버스 탑승 전 최신 정보를 다시 한 번
										확인하시기 바랍니다.</h3>
									<div class="traffic_info">
										<div class="traffic_from">
											<a href="https://bus.jeju.go.kr/" target="_blank">
												<div class="traffic_icon">
													<img
														src="${pageContext.request.contextPath }/img/course/all_course/jeju_bus.jpg">
												</div>
												<div class="traffic_text">제주버스정보</div>
											</a>
										</div>
										<div class="traffic_from">
											<a href="https://m.map.kako.com/" target="_blank">
												<div class="traffic_icon">
													<img
														src="${pageContext.request.contextPath }/img/course/all_course/kakaomap.jpg">
												</div>
												<div class="traffic_text">다음/카카오맵</div>
											</a>
										</div>
										<div class="traffic_from">
											<a href="https://m.map.naver.com/" target="_blank">
												<div class="traffic_icon">
													<img
														src="${pageContext.request.contextPath }/img/course/all_course/navermap.jpg">
												</div>
												<div class="traffic_text">네이버지도</div>
											</a>
										</div>
										<p>※이미지 클릭 시 해당 페이지/앱으로 이동</p>
									</div>
								</div>
							</div>
							<div class="right_area">
								<div class="infobox">
									<p class="sub_bull02">
										<span>문의 및 대중교통 노선 안내</span>
									</p>
									<h3>제주올레 콜센터(064-762-2190) 및 스마트폰 어플리케이션</h3>
									<p class="sub_bull02">
										<span>콜택시</span>
									</p>
									<h3>성산 호출개인택시 064-784-3030 / 성산 콜택시 064-784-8585</h3>
								</div>
							</div>
							<div class="dashline_box">
								<div class="traffic_bull">
									<img
										src="${pageContext.request.contextPath }/img/course/start_p.png">
									<span>시작점 찾아가기</span>
								</div>
								<div class="traffic_list">
									<ul>
											<c:set var="img" value="${fn:split(courseForm.startImg, ',') }"/>
											<c:forEach var="startImg" items="${courseForm.startImg }" varStatus="I">
												<li class="traffic_img" value="${startImg }">
													<img style="display: inline;" src="${pageContext.request.contextPath }/img/course/${startImg }">
												</li>
											</c:forEach>
									</ul>
								</div>
								<div class="traffic_bull">
									<img
										src="${pageContext.request.contextPath }/img/course/finish_p.png">
									<span>종점에서 돌아가기</span>
								</div>
								<div class="traffic_list">
									<ul>
										<c:set var="img" value="${fn:split(courseForm.endImg, ',') }"/>
										<c:forEach var="endImg" items="${courseForm.endImg }" varStatus="I">
											<li class="traffic_img" value="${endImg }">
												<img src="${pageContext.request.contextPath }/img/course/${endImg }">
											</li>
										</c:forEach>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="sub_wrap02">
				<div class="contents_warp02">
					<div class="gallery_wrap">
						<h1>포토갤러리</h1>
						<div class="slideshow_container">
							<div class="watermark">
								<img
									src="${pageContext.request.contextPath }/img/course/all_course/trail_watermark.png">
							</div>
							<ul>
								<!-- 반복문 -->
								<c:if test="${courseForm.gallery!=nill }">
										<c:set var="img" value="${fn:split(courseForm.gallery, ',') }"/>
										<c:forEach var="gallery" items="${courseForm.gallery }" varStatus="I">
											<li class="mySlides fade" style="display: block;" value="${gallery }">
												<img src="${pageContext.request.contextPath }/img/course/${gallery }">
											</li>
										</c:forEach>
								</c:if>
								<c:if test="${courseForm.gallery==nill }">
									<li class="mySlides fade" style="display: block;"><img
										src="${pageContext.request.contextPath }/img/course/no_img_s.jpg"></li>
								</c:if>
							</ul>
							<a class="prev" onclick="plusSlides(-1)">❮</a> <a class="next"
								onclick="plusSlides(1)">❯</a>
						</div>
					</div>
				</div>
			</div>
			<!-- 주변관광지 -->
			<div class="sub_wrap03">
				<div class="contents_wrap">
					<div class="info_txt_area02">
						<div class="btn_area">
							<ul>
								<li class="btn_spot_on" id="place_tab01"><a
									href="javascript:chk_place('spot')">주변 관광지</a></li>
								<li class="btn_spot" id="place_tab02"><a
									href="javascript:chk_place('stay')">주변 숙박안내</a></li>
								<li class="btn_spot" id="place_tab03"><a
									href="javascript:chk_place('food')">주변 식당안내</a></li>
							</ul>
						</div>
						<!-- 주변 관광지 -->
						<div class="spot_list_wrap" id="place_spot">
							<div class="spot_form">
								<div class="spot_img">
									<img src="${pageContext.request.contextPath }/img/course/${courseForm.spotImg }"
										onerror="this.src='${pageContext.request.contextPath }/img/course/no_img_s.jpg'">
									<div class="spot_text">
										${courseForm.spotName }
										<p>${courseForm.spotTxt }</p>
									</div>
								</div>
							</div>
						</div>
							<!-- 주변 숙박 -->
							<div class="table_wrap" id="place_stay" style="display: none;">
								<table class="around_t">
									<tbody>
										<tr>
											<th>업체명</th>
											<th>주소/연락처</th>
										</tr>
										<tr>
											<td rowspan="2">${courseForm.stayName }</td>
											<td class="r_01">${courseForm.stayAdd }</td>
										</tr>
										<tr>
											<td class="r_01">${courseForm.stayNumber }</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- 주변 밥칮 -->
							<div class="table_wrap" id="place_food" style="display: none">
								<table class="around_t">
									<tr>
										<th>업체명</th>
										<th>주소/연락처</th>
									</tr>
									<tr>
										<td rowspan="2">${courseForm.foodName }</td>
										<td class="r_01">${courseForm.foodAdd }</td>
									</tr>
									<tr>
										<td class="r_01">${courseForm.foodNumber }</td>
									</tr>
								</table>
							</div>
					</div>
				</div>
		</c:forEach>
	</div>
</body>
</html>
<!-- 갤러리 슬라이드 -->
<script type="text/javascript">
	var slideIndex = 1;
	showSlides(slideIndex);

	function plusSlides(n) {
		showSlides(slideIndex += n);
	}

	function currentSlide(n) {
		showSlides(slideIndex = n);
	}

	function showSlides(n) {
		var i;
		var slides = document.getElementsByClassName("mySlides");
		var dots = document.getElementsByClassName("dot");
		if (n > slides.length) {
			slideIndex = 1
		}
		if (n < 1) {
			slideIndex = slides.length
		}
		for (i = 0; i < slides.length; i++) {
			slides[i].style.display = "none";
		}
		for (i = 0; i < dots.length; i++) {
			dots[i].className = dots[i].className.replace(" active", "");
		}
		slides[slideIndex - 1].style.display = "block";
	}

	//주변정보
	function chk_place(place) {
		if (place == "spot") {
			$("#place_spot").css("display", "");
			$("#place_stay").css("display", "none");
			$("#place_food").css("display", "none");

			$("#place_tab01").attr('class', 'btn_spot_on');
			$("#place_tab02").attr('class', 'btn_spot');
			$("#place_tab03").attr('class', 'btn_spot');
		}
		if (place == "stay") {
			$("#place_spot").css("display", "none");
			$("#place_stay").css("display", "block");
			$("#place_food").css("display", "none");

			$("#place_tab01").attr('class', 'btn_spot');
			$("#place_tab02").attr('class', 'btn_spot_on');
			$("#place_tab03").attr('class', 'btn_spot');
		}
		if (place == "food") {
			$("#place_spot").css("display", "none");
			$("#place_stay").css("display", "none");
			$("#place_food").css("display", "block");

			$("#place_tab01").attr('class', 'btn_spot');
			$("#place_tab02").attr('class', 'btn_spot');
			$("#place_tab03").attr('class', 'btn_spot_on');
		}
	}
</script>
