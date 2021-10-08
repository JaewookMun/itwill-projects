<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="<c:url value="/css/trail.css"/>"
	type="text/css">
<link rel="stylesheet" href="<c:url value="/css/board.css"/>"
	type="text/css">
<style>
.prev, .next {
	cursor: pointer;
	position: absolute;
	top: 48.5%;
	width: auto;
	padding: 16px;
	margin-top: -22px;
	color: #fff;
	font-weight: 500;
	font-size: 30px;
	transition: 0.6s ease;
	z-index: 30;
	user-select: none;
}

.next {
	right: 0;
}

.prev:hover, .next:hover {
	background-color: rgba(0, 0, 0, 0.8);
	color: #fff;
}

table.table_stay, table.table_stay td {
	border: 1px solid #ddd;
	height: 60px;
	text-align: center;
	padding: 14px;
	color: #555;
	vertical-align: middle;
	overflow-x: auto;
}

table.table_stay {
	width: 100%;
	height: auto;
	margin: 30px 0px 20px 0px;
	background-color: #fff;
}

table.table_stay th {
	line-height: 24px;
	font-size: 15px;
	font-weight: 500;
	text-align: center;
	vertical-align: middle;
	background-color: #78808c;
	color: #fff;
	padding: 6px;
}

table.table_stay th:nth-child(1) {
	width: 33%;
}

table.table_stay th:nth-child(2) {
	width: 33%;
}

table.table_stay th:nth-child(3) {
	width: 34%;
}

table.table__stay td.stay_01 {
	text-align: center;
	font-size: 15px;
	font-weight: 300;
	line-height: 24px;
	color: #555;
}

.stay_01 span {
	text-align: center;
	font-size: 13px;
	font-weight: 300;
	line-height: 24px;
	display: block;
	color: #555;
}


.con_txt h4{
	font-size:15px;
	font-weight:300;
	line-height:22px;
	word-break:normal;
	position:relative;
	display:inline-block;
	letter-spacing:-0.4px;
	text-justify: inter-word;
	color:#089FF4;
}
.con_list li:before{
	content: "·";
    position: absolute;
    top: 0;
    left: 0;
}

.sub_bull:before, .sub_bull02:before, .sub_bull03:before, .sub_bull04:before{
	position: absolute;
	display:block;
	top:6px;
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

.bi_img {
 	position:relative;
	display:inline-block;

}

.bi_img img{
	width:88px;
	height:28px;
	position:relative;
	display:inline-block;
	margin-top:2px;
	margin-left:6px;
	margin-right:3px;
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
				<li class="tap_on02"><a
					href="${pageContext.request.contextPath }/center_center">제주올레 여행자센터</a></li>
				<li class="tap02"><a
					href="${pageContext.request.contextPath }/center_ganse">간세라운지 X 관덕정분식</a></li>
			</ul>
		</div>

		<div class="info_txt_area mt_30">
			<div class="center_area">
				<img
					src="${pageContext.request.contextPath }/images/center/center01.jpg">
			</div>
			<div class="left_con">
				<div class="up"></div>
				<div class="con_txt">
					<h2>제주올레 여행자센터</h2>
					<h3>
						제주올레 여행자센터는 자신에 집중하고 스스로를 돌아보며, 지치고 상처받은 마음을 보듬고 위로하는 공간입니다. <br>다양한
						프로그램을 마련해 창작과 공연, 체험과 재능을 나누며 나와 세상을 이해하는 시간도 가질 수 있습니다. 올레꾼과 제주도민
						모두가 이곳에서 먹고, 쉬고, 나누며 제주올레의 현재와 미래를 함께 만들어 가고 있습니다.
					</h3>
				</div>
			</div>
			<div class="right_con">
				<div class="keeper_box mt_30 ">
					<p class="sub_bull mb_10">
						<span>센터 안내</span>
					</p>
					<br>
					<ul class="con_list">
						<li><span>주소</span> : 제주특별자치도 서귀포시 중정로 22</li>
						<li><span>전화</span> : 064 - 762 - 2167</li>
						<li><span>운영시간</span> : 08:00 ~ 23:00 (연중 무휴)</li>
						<ul>
				</div>
			</div>
		</div>
		<div class="info_txt_area mt_30">
			<div class="left_con">
				<div class="con_img02">
					<img
						src="${pageContext.request.contextPath }/images/center/ollestay.jpg">
				</div>

			</div>
			<div class="right_con">
				<div class="up"></div>
				<div class="con_txt">
					<h2>제주올레 여행자센터 공간안내</h2>
					<p class="sub_bull02">
						<span>3F - 올레스테이</span>
					</p>
					<h3>
						올레스테이는 ‘비움’과 ‘치유’를 테마로, 오직 ‘쉼’에 초점을 맞춘 숙소입니다. <br>열심히 걷고 많이
						보는 것만큼 잘 쉬는 일도 중요하지요.<br> <br>그래서 준비했습니다.<br> 깔끔하게
						정돈된 방, 포목점에서 맞춘 촉감 좋은 침구류, 독립성이 보장된 침대, 큼직한 개인 로커, 개인별 샤워 부스와 용품.
						작가 14인의 작품이 담긴 14개의 방문은 여행의 감동과 추억을 더 깊게 만드는 작은 선물입니다. <br> <br>오늘도
						올레스테이는 문을 활짝 열고 제주 여행자를 기다립니다.
					</h3>
				</div>

			</div>

			<div class="dashline_box">
				<div class="slideshow_container02 mt_30">
					<ul>
						<li class="mySlides fade"><img
							src="${pageContext.request.contextPath }/images/center/stay01.jpg" /></li>
						<li class="mySlides fade"><img
							src="${pageContext.request.contextPath }/images/center/stay02.jpg" /></li>
						<li class="mySlides fade"><img
							src="${pageContext.request.contextPath }/images/center/stay03.jpg" /></li>
						<li class="mySlides fade"><img
							src="${pageContext.request.contextPath }/images/center/stay04.jpg" /></li>
						<li class="mySlides fade"><img
							src="${pageContext.request.contextPath }/images/center/stay05.jpg" /></li>
						<li class="mySlides fade"><img
							src="${pageContext.request.contextPath }/images/center/stay06.jpg" /></li>
					</ul>
					<a class="prev" onclick="plusSlides(-1)">&#10094;</a> <a
						class="next" onclick="plusSlides(1)">&#10095;</a>
				</div>
				<table class="table_stay">
					<tr>
						<th>1인실</th>
						<th>2인실</th>
						<th>도미토리<br>(4, 5, 10인실)
						</th>

					</tr>

					<tr>
						<td class="stay_01"><span>비수기</span>38,000원</td>
						<td class="stay_01"><span>비수기</span>60,000원</td>
						<td rowspan="2">22,000원</td>
					</tr>

					<tr>
						<td class="stay_01"><span>성수기</span>45,000원</td>
						<td class="stay_01"><span>성수기</span>70,000원</td>
					</tr>
				</table>
				<div class="con_txt">
					<h4>※ 성수기 : 7월 15일~8월 15일</h4>
				</div>
			</div>
			<div class="dashline_box">
				<div class="left_con">
					<div class="con_txt">
						<p class="sub_bull02">
							<span>이용 안내</span>
						</p>
						<ul class="con_list">
							<li>1, 2인실은 매트리스가 있는 별도의 공간입니다. <br>도미토리(4, 5, 10인실)에는
								계단형 2층 침대가 놓여 있습니다.
							</li>
							<li>도미토리는 남녀를 따로 구분하며, 혼숙 불가입니다. (가족, 지인 제외)</li>
							<li>보호자를 동반하지 않은 미성년자는 2인실 사용이 불가합니다.</li>
							<li>입실 시 규정에 따라 간소한 신원 확인 절차가 있으니 양해 부탁드립니다.</li>
							<li>인터넷 예약 접수 후 12시간 내에 예약금 100%를 입금하셔야 합니다.
								<h4>(12시간이 지나면 예약이 자동 취소되며, 다시 예약할 경우 처음부터 절차를 밟아야 하는 번거로움이
									있으니 잘 확인해 주시기 바랍니다.)</h4>
							</li>
							<li>예약 확인 및 입금 확인 과정은 문자로 전송해 드립니다.</li>
						</ul>
						<div class="keeper_box mt_30 ">
							<p class="sub_bull02">
								<span>이용 시간 안내</span>
							</p>
							<br>
							<ul class="con_list">
								<li><span>입실 시간</span> : 오후 4시 이후</li>
								<li><span>입실 마감</span> : 오후 11시까지</li>
								<li><span>전체 소등 시간</span> : 오후 11시</li>
								<li><span>퇴실 시간</span> : 익일 오전 10시</li>
								<li><span>전화예약 및 문의</span> : 064-762-2167</li>
							</ul>
						</div>
					</div>


				</div>
				<div class="right_con">
					<div class="con_txt">
						<p class="sub_bull02">
							<span>무료 제공 서비스</span>
						</p>
						<ul class="con_list">
							<li>샴푸, 린스, 바디클렌저, 치약, 베개커버, 이불, 시트, 드라이기, 개인로커는 비치되어 있습니다.</li>
							<li>일회용품은 정책상 제공하지 않습니다.</li>
							<li>수건은 1-2인실은 각 2장, 도미토리는 각 1장씩 제공합니다.</li>
							<li>세탁기는 하루에 두 번(17시, 19시) 가동합니다. 이용할 분은 세탁물을 미리 세탁망에 넣어두세요.</li>
							<li>체크인 전, 체크아웃 후 짐 보관해 드립니다.</li>
						</ul>
						<br>
						<p class="sub_bull02">
							<span>유료 제공 서비스</span>
						</p>
						<ul class="con_list">
							<li>수건 기본 제공 외 추가 요청 시 장당 500원이 추가됩니다.</li>
						</ul>
						<br>
						<div class="con_btn"
							onclick="javascript:location.href='https://ollestay.modoo.at/'">온라인
							예약하기&nbsp;&nbsp;></div>

					</div>

				</div>

			</div>

		</div>
		<div class="info_txt_area mt_30">
			<div class="left_con">
				<div class="con_img02">
					<img
						src="${pageContext.request.contextPath }/images/center/olle1f.jpg">
				</div>
			</div>
			<div class="right_con">
				<div class="up"></div>
				<div class="con_txt">
					<h2>제주를 담은 먹거리와 취할거리</h2>
					<p class="sub_bull02">
						<span>1F - 제주올레식당 + 제주올레 PUB</span>
					</p>
					<h3 style="text-align: left;">
						놀멍 쉬멍 걸으멍 제주올레 길 여행에서 빠질 수 없는 것이 바로 먹으멍 마시멍.<br>제주올레 여행자센터에서는
						여행자와 지역민 모두를 위해 제주를 맛있게 즐기고, 제주에 기분 좋게 취할 수 있는 먹거리와 마실거리가 준비되어
						있습니다. <br> <br>※ 제주를 추억할 수 있는 기념품은 제주올레 여행자센터 건너편
						<div class="bi_img">
							<img
								src="${pageContext.request.contextPath }/images/center/olle_bi.jpg">
						</div>
						에서 판매합니다.
					</h3>
				</div>
				<br> <br>
				<div class="con_img02">
					<img
						src="${pageContext.request.contextPath }/images/center/olle1f02.jpg">
				</div>
			</div>
			<div class="dashline_box">
				<div class="left_con">
					<div class="con_img02">
						<img
							src="${pageContext.request.contextPath }/images/center/olle1f03.jpg">
					</div>
				</div>


				<div class="right_con">
					<div class="con_txt">
						<p class="sub_bull02">
							<span>이용 안내</span>
						</p>
						<ul class="con_list">
							<li><h3>아침식사 : 08:00~09:00(사전예약)</h3>
								<h5>제주뿔소라죽 : 3,000원 (올레스테이 투숙객 한정)</h5></li>
							<li><h3>어멍밥상 11:00~14:00</h3>
								<h5>제주올레 여행자센터의 점심밥상은 매일 제주 어멍(어머니)이 제주산 식재료를 꼼꼼하게 고르고, 오랜
									시간 동안 정성을 들여 준비했습니다. 맛깔나는 한상으로 오후를 든든하게 보내세요. 달라집니다. '언젠가 내 식당을
									열거야'라는 꿈을 가진 청년 셰프들이 제주의 바다와 땅에서 자란 재료를 신선하게, 그리고 신박하게 요리해 그때그때
									선보입니다. 청년식당에서 지금껏 맛보지 못했던 제주를 입안 가득 느끼세요.</h5></li>
							<li><h3>제주올레 PUB 17:00~23:00</h3>
								<h5>
									제주를 찾은 지인들과 함께 혹은 제주 여행을 마치고 가볍게 한 잔하고 싶은 여행자들을 위한 펍.<br>제주올레
									여행자센터 내 펍이라면 제주의 맛을 담은 메뉴는 필수겠죠? 제주 생막걸리, 한라산소주 등은 물론이고, 화산암반수와
									청정보리를 이용해서 만든 제주 수제맥주 '제스피'를 만날 수 있습니다. 청정제주의 식재료를 활용한 풍성한 안주
									메뉴도 준비되어 있으니 목넘김까지 시원한 수제맥주 ’제스피'와 제주다움을 가득 담은 안주메뉴를 제주올레 PUB에서
									즐겨보세요.
								</h5></li>
							<li><h3>제주올레CAFE 08:00~23:00</h3>
								<h5>상시 운영되는 제주올레CAFE에는 제주의 맛을 풍부하게 즐길 수 있는 음료 및 간식이 준비되어
									있습니다. 오직 제주올레 CAFE에서만 경험할 수 있는 특별한 음료는 지친 다리를 위한 최고의 선택입니다. 신선한
									원두로 내린 커피, 제주 유기농 주스, 향기로운 허브티로 제주도에서의 오후를 향기롭게 만들어 줍니다.</h5></li>
						</ul>
					</div>


				</div>

				<div class="dashline_box">
					<div class="left_con">
						<div class="up"></div>
						<div class="con_txt">
							<h2>각종 행사와 모임, 세미나를 위한 공간</h2>
							<p class="sub_bull02">
								<span>1F - 삼다수홀</span>
							</p>
							<h3>
								삼다수홀은 각종 행사와 모임, 강연, 세미나 등을 위한 공간입니다. <br>올레스테이 숙박객은 물론
								제주도민과 단체들에게 늘 열려있는 곳이기도 합니다. 제주올레 아카데미를 비롯한 교육 프로그램으로 지역민과 여행자가
								함께 즐길 수 있는 다양한 문화 프로그램이 마련되어 있습니다.
							</h3>
							<br> <br> <br>
							<p class="sub_bull02">
								<span>이용 안내</span>
							</p>
							<ul class="con_list">
								<li><h3>대관료</h3>
									<h5>
										기본 2시간 100,000원 (초과 시 시간당 30,000원, 최대 2시간 연장 가능)<br>하루
										9시간 310,000원
									</h5></li>
								<li><h3>시설</h3>
									<h5>좌석 40석, 음향 및 유무선 마이크, 빔프로젝터, 화이트보드, 암막커튼, 주방시설</h5></li>
								<li><h3>문의</h3>
									<h5>064-762-2167</h5></li>
							</ul>
						</div>
					</div>
					<div class="right_con">
						<div class="con_img02">
							<img
								src="${pageContext.request.contextPath }/images/center/olle1f04.jpg">
						</div>
					</div>

				</div>
				<div class="dashline_box">
					<div class="left_con">
						<div class="con_img02">
							<img
								src="${pageContext.request.contextPath }/images/center/olle1f05.jpg">
						</div>
					</div>
					<div class="right_con">
						<div class="up"></div>
						<div class="con_txt">
							<h2>간세인형을 직접 만드는 체험공방</h2>
							<p class="sub_bull02">
								<span>1F - 간세인형공방</span>
							</p>
							<h3>
								간세인형공방은 제주올레 기념품인 간세인형을 직접 만들며 체험하는 공방입니다. 헌 옷과 버려진 자투리 천을 손바느질해
								만들어지는 간세인형은 제주 여성들에게 일자리를 제공하며 판매 수익금은 제주올레 길을 유지·보수하는데 사용됩니다. <br>한
								땀 한 땀 바느질하는 동안 고민과 잡념을 잊고 몰두의 세계를 경험하는 것은 덤! 제주를 여행하는 동안 잠깐의 여유를
								가지며 세상에 단 하나뿐인 간세인형 만들기를 경험해보세요.
							</h3>
							<br> <br> <br>
							<p class="sub_bull02">
								<span>이용 안내</span>
							</p>
							<ul class="con_list">
								<li><h3>운영 시간</h3>
									<h5>13:00~17:00(신청마감 16:00)</h5></li>
								<li><h3>소요 시간</h3>
									<h5>90분이상</h5></li>
								<li><h3>비용</h3>
									<h5>15,000원(음료 1잔 포함 – 아메리카노, 카페라떼, 진피차, 감귤주스 중 택1)</h5></li>
								<li><h3>단체신청 가능</h3>
									<h5>사전예약 필수!!</h5></li>
								<li><h3>문의</h3>
									<h5>064-762-2178 / 사회적기업 (유)퐁낭</h5></li>
							</ul>
						</div>


					</div>

				</div>
			</div>


		</div>

	</div>
</div>
<script type="text/javascript">
	/* var screen= document.getElementsByClassName("mySlides fade");
	
	var allList = screen.length;
	
	for(var i=1; i<allList; i++) {
		screen.item(i).setAttribute("style", "display: none;");
	}
	
	function plusSlides(num) {
		if(num<1) {
					
		}
	} */

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
		//dots[slideIndex-1].className += " active";
	}
</script>