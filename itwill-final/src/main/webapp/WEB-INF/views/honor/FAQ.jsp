<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/jquery-latest.js"></script>

<style type="text/css">

.sub_wrap, .sub_wrap03 {
    width: 1100px;
    height: auto;
    position: relative;
    margin: 0 auto;
    padding: 50px;
    margin-bottom: 80px;
    border: 0px solid red;
}

sub_tit {
    width: 100%;
    height: auto;
    padding-top: 20px;
    position: relative;
    display: inline-block;
    text-align: center;
    margin: 0 auto;
    border: 0px solid red;
}

.sub_tit h1 {
    width: 100%;
    font-size: 36px;
    font-weight: 500;
    position: relative;
    display: block;
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

.sub_tit {
    width: 100%;
    height: auto;
    padding-top: 20px;
    position: relative;
    display: inline-block;
    text-align: center;
    margin: 0 auto;
    border: 0px solid red;
}

.contents_wrap {
    width: 100%;
    height: auto;
    position: relative;
    display: inline-block;
    margin-top: 50px;
    border: 0px solid red;
}

.honor_area {
    width: 100%;
    height: auto;
    position: relative;
    display: inline-block;
    margin-top: 0px;
    border: 0px solid red;
}

.con_txt02 h1 {
    font-size: 24px;
    line-height: 40px;
    font-weight: 700;
    position: relative;
    letter-spacing: -0.4px;
    text-align: center;
    color: #08b2f5;
    margin-bottom: 30px;
}

.qna_list {
    width: 100%;
    height: auto;
    position: relative;
    display: inline-block;
    margin-top: 10px;
    margin-bottom: 30px;
    text-align: center;
    border-top: 2px solid #78808c;
}

.qna_row02:hover{
	display:block;
	color:#08b2f5; 
	text-decoration: none;
	background-color: #fff;
}



.qna_row01 {
    width: 16%;
    height: 60px;
    border-bottom: 1px solid #ddd;
    font-size: 16px;
    font-weight: 400;
    line-height: 58px;
    right: 0;
    color: #555;
    display: inline-block;
    float: left;
}

.qna_row02 {
    width: 84%;
    height: 60px;
    border-bottom: 1px solid #ddd;
    font-size: 16px;
    font-weight: 400;
    line-height: 58px;
    right: 0;
    color: #555;
    text-align: left;
    display: inline-block;
    float: left;
    cursor: pointer;
}

.qna_q02, .qna_a {
    width: 100%;
    height: auto;
    background: #f3f3f3;
    text-align: justify;
    display: block;
    padding: 30px 50px;
    float: left;
    word-break: break-all;
}

.qna_a {
    border-bottom: 1px solid #ddd;
}

.qna_q02 span, .qna_a span {
    font-size: 40px;
    line-height: 60 margin-right:2%;
    margin-left: 2%;
    font-weight: 700;
    color: #555;
    float: left;
}

.qna_open {
    width: 86%;
    height: auto;
    font-size: 16px;
    line-height: 28px;
    margin-left: 12%;
    font-weight: 300;
    color: #555;
}

.con_btn, .con_btn02 {
    width: 160px;
    height: 26px;
    font-size: 15px;
    line-height: 26px;
    font-weight: 400;
    text-align: center;
    position: relative;
    display: inline-block;
    color: #fff;
    background: #08b2f5;
    border-radius: 15px;
    cursor: pointer;
}

a, a:hover, a:focus {
    display: block;
    color: inherit;
    text-decoration: none;
}

.btn_write_area02 {
    width: 100%;
    height: 40px;
    position: relative;
    display: inline-block;
    border: 0px solid red;
    margin: 0 auto;
    text-align: center;
    margin-top: 30px;
}

.btn_write02 {
    font-size: 15px;
    font-weight: 400;
    width: 160px;
    height: 40px;
    line-height: 40px;
    text-align: center;
    color: #fff;
    background-color: #78808c;
    position: relative;
    display: inline-block;
    margin: 0 auto;
    cursor: pointer;
}


.btn_write02:hover{
	display:block;
	color:#fff; 
	text-decoration: none;
	background-color: #08b2f5;
}




</style>


</head>
<body>
	

	
		
			<div class="sub_wrap">
				<div class="sub_tit"><h1>FAQ</h1><div class="under"></div></div>

				<!------------------------콘텐츠 시작-------------------------------->
				<div class="contents_wrap">
					<div class="honor_area">
					<div class="con_txt02"><h1>자주하는 질문</h1></div>
												
					<div class="qna_list">
															
					<ul onclick="chk_faq('01');">
						<li class="qna_row01" onclick="">Q</li>
						<li class="qna_row02">제주올레 길을 완주하려면 얼마나 걸리나요? 일정은 어떻게 해야 할까요?</li>
					</ul>
															
					<ul class="qna_answer" id="qna_answer_01">		
						<li class="qna_a">
						<span>A</span>
						<div class="qna_open">
							길을 따라 제주도의 자연과 문화를 두루 볼 수 있는 제주올레 길은 여행자의 컨디션 및 운동 강도에 맞추어 길을 걷는 자유 여행으로 여행자 스스로 본인의 체력에 맞추어 일정을 정하고 자유롭게 길을 걷고 멈출 수 있습니다.<br/><br/>

							성인 1명이 평균적으로 길을 걷는 거리는 1시간에 약 3km 정도를 걸을 수 있으며 평균 속도는 개인의 운동 능력에 따라서 단축되거나 늘어날 수 있습니다. 제주올레 길을 구성하고 있는 코스는 총 26개 코스로 구성이 되어 있고 코스마다 거리가 다르며 전 코스의 길이는 425km에 달합니다. 
							<br/><br/>

							사단법인 제주올레는 하루 한 코스 걷기를 권장하고 있으며 평소 걷기운동에 단련이 되어 있지 않은 여행자가 한 코스 이상 걸을 경우 몸에 무리가 올 수 있습니다. 하루 한 코스를 걷는다고 가정할 때 완주까지 걸리는 소요시간은 약 한 달 정도 입니다. 완주에 너무 매달리지 마시고 천천히 놀멍 쉬멍 걸으며 제주의 자연을 마음껏 즐기시기 바랍니다. 
						</div>
						</li>
					</ul>

															
					<ul onclick="chk_faq('02');">
						<li class="qna_row01" onclick="">Q</li>
						<li class="qna_row02">코스의 시작점과 종점까지는 어떻게 이동해야 하나요?</li>
					</ul>
															
					<ul class="qna_answer" id="qna_answer_02">		
						<li class="qna_a">
						<span>A</span>
							<div class="qna_open">
							각 코스의 시작점과 종점으로 향하는 대중교통 정보는 제주올레 홈페이지의 코스 정보 하단에서 확인하실 수 있습니다. 가장 대중적인 출도착지인 제주시외버스터미널/서귀포시외버스터미널을 기준으로 작성이 되어 있으며 이 외의 장소에 출발/도착하는 경우에는 카카오맵/네이버 맵 등 모바일 어플리케이션을 활용하여 목적지를 입력하면 실시간으로 대중교통 정보를 확인할 수 있습니다.<br/><br/> 

							또한 렌터카를 통해서도 시작점과 종점으로 갈 수 있으나 각 코스의 시작/도착점에는 주차장이 따로 마련되어 있지 않다는 점 참고 바라며, 제주올레 길을 걸을 때만큼은 자연을 사랑하는 마음가짐으로 가급적 대중교통을 이용하시는 것을 권장 드립니다.
							</div>
						</li>
					</ul>

															
					<ul onclick="chk_faq('03');">
						<li class="qna_row01" onclick="">Q</li>
						<li class="qna_row02">제주올레 길 지도는 어디서 구할 수 있나요?</li>
					</ul>
															
					<ul class="qna_answer" id="qna_answer_03">		
						<li class="qna_a">
						<span>A</span>
							<div class="qna_open">
							제주올레 홈페이지의 자료실에서 인쇄가 가능한 제주올레 전체지도와 각 코스의 세부지도를 무료로 다운로드 받으실 수 있습니다.<br/> 
							코스와 관련되어 지도와 함께 보다 상세한 설명이 필요하다면 제주올레 가이드북을 구매하시는 것을 권장 드립니다. 
							<br/><br/> 

								<div class="con_btn"><a href="${pageContext.request.contextPath }/honor_one">자료실 바로가기</a></div>
							</div>
						</li>
					</ul>

															
					<ul onclick="chk_faq('04');">
						<li class="qna_row01" onclick="">Q</li>
						<li class="qna_row02">길 여행을 하기 전 무엇을 준비해야 하나요?</li>
					</ul>
															
					<ul class="qna_answer" id="qna_answer_04">		
						<li class="qna_a">
							<span>A</span>
							<div class="qna_open">
							제주올레 길은 총 26개 코스로 구성되어 있으며 각 코스마다 특징과 개성이 있어 어떤 코스를 가도 즐겁게 여행을 할 수 있습니다.<br/> 
							제주올레 홈페이지에 있는 코스정보를 꼼꼼히 읽은 후 취향에 맞는 특정 코스를 선택하여 여행을 하는 것이 좋습니다. 또한 제주도는 생각보다 면적이 넓어 이동거리가 길기 때문에 숙소의 위치도 코스와 얼마나 떨어져 있는지가 중요합니다. 걷고 싶은 코스를 정하고 숙박할 장소를 미리 정하는 것이 좋습니다.<br/> 
							여행 계획을 비롯한 짐싸기에 대한 보다 상세한 안내는 아래의 페이지를 참고하시기 바랍니다.<br/><br/> 

								<div class="con_btn"><a href="${pageContext.request.contextPath }/prepare">여행준비 안내</a></div>
							</div>
						</li>
					</ul>

															
					<ul onclick="chk_faq('05');">
						<li class="qna_row01" onclick="">Q</li>
						<li class="qna_row02">걷는 여행을 처음 하는데, 길에 대해 안내 하시는 분이 있나요?</li>
					</ul>
															
					<ul class="qna_answer" id="qna_answer_05">		
						<li class="qna_a">
							<span>A</span>
							<div class="qna_open">
							걷기 여행을 처음 한다면 '아카자봉 함께걷기'에 참가하여 함께 걷는 것을 권장 드립니다. 아카자봉 함께 걷기는 ‘아카데미 자원봉사자와 함께 걷기’를 줄인 말입니다. 제주올레 아카데미 수료자가 하루 한 코스씩 길을 안내하며 올레꾼과 함께 걷는 자원봉사 프로그램으로 제주올레 홈페이지 아카자봉 함께걷기 일정에 참가 신청을 한 후 정해진 시간과 장소에 맞추어 도착하면 일정이 진행됩니다. 
							<br/><br/> 

								<div class="con_btn"><a href="${pageContext.request.contextPath }/program/schedule">전체일정 바로가기</a></div>
							</div>
						</li>
					</ul>

															
					<ul onclick="chk_faq('07');">
						<li class="qna_row01" onclick="">Q</li>
						<li class="qna_row02">혼자 걷기 무서운 사람들은 어떻게 해야 할까요?</li>
					</ul>
															
					<ul class="qna_answer" id="qna_answer_07">		
						<li class="qna_a">
							<span>A</span>
							<div class="qna_open">
							혼자 여행하는 여행객들의 안전을 위해 제주특별자치도에서 제주여행 지킴이 단말기 대여 서비스를 시행하고 있습니다. 제주공항 종합관광안내센터 및 제주연안여객/국제여객터미널에서 대여할 수 있습니다.
							<br>
							"< 제주여행지킴이 관련 상세 문의 : 제주공항관광안내소 064-742-8866 >"
							<br>또한 걷기 여행 시작 전 제주올레 콜센터(064-762-2190)로 연락 주시면 일정 시간마다 콜센터에서 여행자에게 연락을 하며 안전을 체크하는 서비스도 받으실 수 있습니다.
							<br><br>
							추가로 아카자봉 함께걷기 프로그램을 안내 드립니다.<br>
							제주올레 아카데미를 수료한 수료자들이 하루 한 코스씩 여행자와 함께 동행하며 코스를 걷는 프로그램으로 혼자 걷기 무섭거나, 처음 걷는 분들에게 권장 드리고 있습니다.
							<br/><br/> 

								<div class="con_btn"><a href="${pageContext.request.contextPath }/program/schedule">전체일정 바로가기</a></div>
							</div>
						</li>
					</ul>

															
					<ul onclick="chk_faq('08');">
						<li class="qna_row01" onclick="">Q</li>
						<li class="qna_row02">완주증은 어떻게 해야 받을 수 있나요?</li>
					</ul>
															
					<ul class="qna_answer" id="qna_answer_08">		
						<li class="qna_a">
							<span>A</span>
							<div class="qna_open">
							26개 코스, 425km의 제주올레 길을 완주한 여행자들이 받을 수 있는 완주증은 제주올레 패스포트를 구매하여 각 코스의 시작/중간/종점 스탬프를 찍은 후 서귀포에 위치한 제주올레 여행자센터(중정로 22)를 방문하면 받을 수 있습니다. 걷는 기간은 크게 중요하지 않으니 천천히 놀멍 쉬멍 간세다리가 되어 제주도를 여행하시는 것을 권장 드립니다.
							<br/><br/> 

								<div class="con_btn"><a href="${pageContext.request.contextPath }/honor_one">명예의 전당</a></div>
							</div>
						</li>
					</ul>

															
					<ul onclick="chk_faq('09');">
						<li class="qna_row01" onclick="">Q</li>
						<li class="qna_row02">올레길을 걸을 때 지켜야 할 안전 수칙은 무엇이 있나요?</li>
					</ul>
															
					<ul class="qna_answer" id="qna_answer_09">		
						<li class="qna_a">
							<span>A</span>
							<div class="qna_open">
							<b>처음 올레길을 걸으신다면 꼭 지켜야 할 제주올레 안전 수칙을 안내 드립니다.</b><br/><br/>

							- 걷기 종료시간은 하절기 오후 6시, 동절기 오후 5시. 이 시간 이후 걷기 자제하기<br/>
							- 태풍,호우,폭설 시에는 걷기 자제하기<br/>
							- 혼자 걸을 때에는 수시로 현재위치와 안전여부를 가족이나 지인에게 알려주기<br/>
							- 만약의 경우에 대비해 비상연락처(콜센터 064-762-2190) 알아두기<br/>
							- 코스를 벗어난 가파른 계곡이나 절벽으로 가는 모험은 절대 피하기<br/>
							- 거리표지에 있는 지나온 거리 및 주변 위치정보(건물명 등)를 숙지하며 걷기<br/>
							- 제주올레 표지를 놓쳤을 때에는 마지막 표지를 본 자리로 되돌아가 표지를 다시 찾기<br/>
							- 혼자 여행할 때에는 검증된 숙소를 이용하기<br/>
							- 길에서 만나는 소, 말, 개, 벌집 등에게 다가가는 등 자극하는 행위를 삼가세요. <br/>
							- 목줄 등 안전조치가 되어있지 않는 개 등을 발견했을 시 물리지 않도록 조심하시고, 위험해 보이는 경우 신고해 주세요. (제주도 농축산 식품국 064-710-2153)<br/>
							- 걷기 전에 제주올레 코스에 대한 정보를 미리 충분히 확인하고 숙지하기<br/>
							- 제주올레 홈페이지를 통해 공지사항 확인하기<br/><br/>

							<b>여름철 야생진드기 정보 및 예방수칙</b><br/><br/>

							- 긴 소매(팔토시), 긴 바지, 챙이 큰 모자를 착용한다.<br/>
							- 수풀이 무성한 곳이나 목장 주변에서는 맨 바닥에 앉지 않는다.<br/>
							- 귀가 혹은 숙소로 돌아오면 즉시 샤워한다.<br/>
							- 바닥에 펼쳤던 돗자리나 의류는 청결히 세탁∙관리한다.<br/>
							- 진드기에 물린 후, 감기와 비슷한 발열 증상이 있다면 병원에서 치료를 받는다.<br/>
							- 진드기 기피제를 사용하여 사전에 예방한다.<br/><br/>

							제주올레를 즐기는 최고의 방법은 바로 충분한 여행준비입니다.<br/>
							문의) 제주올레 콜센터 064-762-2190<br/>

							</div>
						</li>
					</ul>

															
					<ul onclick="chk_faq('10');">
						<li class="qna_row01" onclick="">Q</li>
						<li class="qna_row02">올레길에서 동물을 만나면 어떻게 해야 하나요? </li>
					</ul>
															
					<ul class="qna_answer" id="qna_answer_10">		
						<li class="qna_a">
							<span>A</span>
							<div class="qna_open">
							우선 묶여있지 않은 개를 만났을 때는 아래와 같이 행동하셔서 조심히 현장에서 벗어나시기 바랍니다.<br/>

							- 자극하지 말 것<br>
							- 뒤로 너무 빨리 움직이지 말 것<br>
							- 개와 눈을 마주치지 말 것<br>
							- 공격을 당하면 웅크려서 목과 얼굴을 보호할 것 그리고 제주올레 콜센터로 신고하시기 바랍니다.(064-762-2190)  

							<br/><br/>

							소의 경우, 특히 어미 소와 새끼 소가 같이 있을 때 조심하셔야 합니다. 소에게 위협적인 행동을 삼가고 멀찍이 지나가시기 바랍니다.<br><br>
							말은, 사람이 말의 뒤쪽에 있으면 뒷발에 차일 수 있으니 주의 바랍니다.<br><br>
							뱀은, 진동을 느낄 시 도망간다고 합니다. 그래서 수풀을 지날 때는 발이나 지팡이로 땅을 수시로 울려서 뱀에게 도망갈 기회를 주는 게 좋습니다.

							</div>
						</li>
					</ul>
				</div>

				<div class="btn_write_area02">
				<c:if test="${member.id != null }">
					<div class="btn_write02" onclick="location.href='${pageContext.request.contextPath }/FAQ_question'">문의하기</div>
				</c:if>
				</div>
			</div>
		</div>
		
	</div>	
	
	


<script type="text/javascript">

$(function(){
			$(".qna_answer").css("display", "none");
});

function chk_faq(num){
			$(".qna_answer").css("display", "none");
			$("#qna_answer_"+num).css("display", "block");
		//	document.getElementById("qna_answer_"+num+"").style.display = "block";
}


</script>



