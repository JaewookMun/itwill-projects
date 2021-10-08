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
				<li class="pre_btn" style="cursor: pointer;"><a href="#">제주올레 길<br>표지</a></li>
				<li class="pre_btn" style="cursor: pointer;"><a href="#">준비물</a></li>
				<li class="pre_btn" style="cursor: pointer;"><a href="#">서비스</a></li>
				<li class="pre_btn" style="cursor: pointer;"><a href="#">제주올레<br>패스포트</a></li>
				<li class="pre_btn" style="cursor: pointer;"><a href="#">패스포트<br>할인업체</a></li>
				<li class="pre_btn" style="cursor: pointer;"><a href="#">청년 패스포트<br>베네핏 챌린지</a></li>
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
						<img src="/trail/images/sub/olle_list01.jpg">
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
						<img src="/trail/images/sub/olle_list02.jpg">
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
						<img src="/trail/images/sub/olle_list03.jpg">
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
						<img src="/trail/images/sub/olle_list05.jpg">
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
						<img src="/trail/images/sub/olle_list06.jpg">
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
						<img src="/trail/images/sub/olle_list07.jpg">
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
						<img src="/trail/images/sub/olle_list08.jpg">
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
						<img src="/trail/images/sub/olle_list09.jpg">
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
						<img src="/trail/images/sub/prepare02.png">
					</div>
					<div class="guide_text02">
						① 올레 패스포트와 가이드북
						<p>제주올레 여행의 필수품, 패스포트에 코스별 스탬프를 찍으면서 여행의 추억도 쌓고, 올레꾼을 위한 할인도
							받을 수 있어요.</p>
					</div>
				</div>
				<div class="guide_form">
					<div class="guide_img">
						<img src="/trail/images/sub/prepare02_1.png">
					</div>
					<div class="guide_text02">
						② 여행자 보험
						<p>올레길 여행은 안전을 스스로 책임지는 여행입니다. 혹시 모를 사고에 대비해 주세요.</p>
					</div>
				</div>
				<div class="guide_form">
					<div class="guide_img">
						<img src="/trail/images/sub/prepare03.png">
					</div>
					<div class="guide_text02">
						③ 개인컵
						<p>제주올레 길에서는 원칙적으로 일회용품 사용을 금하고 있어요. 종이컵 대신 개인 컵을 사용하고, 나무젓가락
							대신 휴대용 수저를 사용하기를 추천해요.</p>
					</div>
				</div>
				<div class="guide_form">
					<div class="guide_img">
						<img src="/trail/images/sub/prepare04.png">
					</div>
					<div class="guide_text02">
						④ 적합한 복장
						<p>한 여름이라도 숲길이 많아 반드시 긴 소매와 긴 바지를 입어야 해요. 제주는 하루에도 날씨 변화가 많으니
							가벼운 방수점퍼나 우비도 준비해 주세요.</p>
					</div>
				</div>
				<div class="guide_form">
					<div class="guide_img">
						<img src="/trail/images/sub/prepare05.png">
					</div>
					<div class="guide_text02">
						⑤ 트래킹화와 샌들
						<p>트래킹화나 등산화가 가장 좋아요. 걷기에 익숙한 편이고 짧게 한 코스정도만 걷는다면 바닥이 미끄럽지 않은
							운동화 등도 가능해요. 여름철에 바닷가 코스를 걷는다면 샌들을 추가로 챙겨 주세요.</p>
					</div>
				</div>
				<div class="guide_form">
					<div class="guide_img">
						<img src="/trail/images/sub/prepare06.png">
					</div>
					<div class="guide_text02">
						⑥ 현금과 교통카드
						<p>은행이나 카드 사용처가 많지 않기 때문에 현금이 필수, 만약의 경우 택시 등을 탈 수 있도록 비상금도 꼭
							챙겨 주세요. 대중교통을 이용할 때에는 교통카드가 편리해요.</p>
					</div>
				</div>
				<div class="guide_form">
					<div class="guide_img">
						<img src="/trail/images/sub/prepare07.png">
					</div>
					<div class="guide_text02">
						⑦ 물
						<p>제주올레 길에는 인가나 가게나 드문 길도 많으므로 물을 꼭 챙겨 주세요.</p>
					</div>
				</div>

				<div class="guide_form">
					<div class="guide_img">
						<img src="/trail/images/sub/prepare09.png">
					</div>
					<div class="guide_text02">
						⑧ 쓰레기봉투
						<p>자기가 만든 쓰레기는 길에 버리지 말고 꼭 자기가 챙겨서 돌아와야 해요.</p>
					</div>
				</div>
			</div>
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
						<!--
																	<li><h3>대여대상</h3> : 제주올레, 숲길 탐방객 등</li>
																	-->
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
					<img src="/trail/images/sub/passport.jpg">
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

		<!-- 패스포트 할인업체 -->
		<div class="info_txt_area mt_30" id="gnb5">
				<div class="con_txt02">
					<h1>제주올레 패스포트 할인업체 목록</h1>
				</div>
				<table class="passport">
					<tr>
						<th colspan="3" class="th_01">입장료 할인</th>
					</tr>

					<tr>
						<th>상호명</th>
						<th>할인 내용</th>
						<th>주소 및 연락처</th>
					</tr>

					<tr>
						<td rowspan="2">2코스<span>한화 아쿠아플라넷 제주</span></td>
						<td>일반가격<br>풀패키지(아쿠아리움+오션아레나(공연)+미니언즈 특별전)<br>38,400원
						</td>
						<td rowspan="2">서귀포시 성산읍 섭지코지로 95<br>1833-7001
						</td>
					</tr>

					<tr>
						<td>패스포트 및 가이드북 할인가격<span> 패스포트 및 가이드북, 제주올레 로고 상품 제시
								시 20% 할인</span><br>※ 대인 정상가 기준, 단체 적용 불가, <br>패스포트/가이드북 로고상품
							1권 및 개당 4인까지 적용
						</td>
					</tr>


					<tr style="background: #F0FAFF;">
						<td rowspan="2">3코스<span>성읍 다이나믹 메이즈</span></td>
						<td>일반가격<br>노다이나믹 메이즈 코스 : 12,000원 / 레벨 2 코스 : 7,000원
						</td>
						<td rowspan="2">서귀포시 표선면 번영로 2644<br>064-805-0901
						</td>

					</tr>

					<tr>
						<td class="r_02">패스포트 할인가격<span>패스포트 소지시 20% 할인</span></td>
					</tr>

					<tr>
						<td rowspan="2">4코스<span>제주민속촌</span></td>
						<td>일반가격<br>성인 11,000원 / 청소년 8,000원 / 어린이 7,000원
						</td>
						<td rowspan="2">서귀포시 표선면 민속해안로 631-34<br>064-787-4501
						</td>
					</tr>

					<tr>
						<td>패스포트 할인가격<span>패스포트 소지시 20% 할인</span></td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td rowspan="2">8코스<span>카멜리아힐</span></td>
						<td>일반가격<br>성인 8,000원 / 청소년 6,000원 / 경로·군인·어린이 5,000원
						</td>
						<td rowspan="2">서귀포시 안덕면 병악로 166<br>064-792-0088
						</td>
					</tr>

					<tr>
						<td class="r_02">패스포트 할인가격<span>패스포트 소지 시 20% 할인 (※
								할인가에서 중복 할인 불가)</span></td>
					</tr>

					<tr>
						<td rowspan="2">8코스<span>중문 박물관은 살아있다</span></td>
						<td>일반가격<br>성인 13,000원 / 청소년·어린이 12,000원
						</td>
						<td rowspan="2">서귀포시 중문관광로 42<br>064-805-0888
						</td>
					</tr>

					<tr>
						<td>패스포트 할인가격<span>패스포트 소지시 20% 할인</span></td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td rowspan="2">9코스<span>세계자동차박물관</span></td>
						<td>일반가격<br>성인 13,000원 / 청소년·어린이 12,000원
						</td>
						<td rowspan="2">서귀포시 안덕면 중산간서로1610<br>064-792-3000
						</td>

					</tr>

					<tr>
						<td class="r_02">패스포트 할인가격<span>패스포트 소지시 1,000원 할인</span></td>
					</tr>

					<tr>
						<td rowspan="2">19코스<span>김택화미술관</span></td>
						<td>일반가격<br>성인 4,500원 / 청소년 3,000원 / 어린이 1,500원
						</td>
						<td rowspan="2">제주시 조천읍 신흥로 1<br>070-8778-0627
						</td>

					</tr>

					<tr>
						<td class="r_02">패스포트 할인가격<span>패스포트 소지 시 20% 할인 (중복
								할인 불가)</span></td>
					</tr>
				</table>

				<table class="passport">
					<tr>
						<th colspan="3" class="th_01">교통할인</th>
					</tr>

					<tr>
						<th>상호명</th>
						<th>할인 내용</th>
						<th>주소 및 연락처</th>
					</tr>

					<tr style="background: #F0FAFF;">
						<td>1코스<span>녹동(고흥) - 제주(성산포) 여객선<br>(주)에이치해운
								선라이즈 제주
						</span></td>
						<td><span>여객 승선권 30%, 차량 20% 할인 </span><br> <span>[객실
								운임]</span> 1등실(2인실) 정가 250,000원 → 175,000원 <br>2등실(침대) 정가 75,000원
							→ 52,500원 <br>2등실(의자) 정가 57,000원 → 39,900원 <br>3등실(의자,
							평실) 정가 33,000원 → 23,100원 <br> <br> <span>[주말,
								공휴일, 특별운송기간 운임] </span> 1등실(2인실) 정가 276,000원 → 193,200원 <br>2등실(침대)
							정가 83,000원 → 58,100원 <br>2등실(의자) 정가 63,000원 → 44,100원 <br>3등실(의자,
							평실) 정가 36,600원 → 25,620원 <br> <br> <span>패스포트
								소지자에 한해 할인 제공</span> 연휴기간 할인 불가 및 사전 전화 예약 필수 <br>www.sunrisejeju.com
						</td>
						<td>서귀포시 성산읍 성산등용로 130-21 여객터미널 1층<br>1800-5207
						</td>
					</tr>

					<tr>
						<td>17코스<span>제주렌트카</span></td>
						<td><span>차량손해면책제도(일반/슈퍼) 중 슈퍼면책 선택 시, 10% 할인 제공</span>(일반면책은
							별도의 할인제공 없음)</td>
						<td>제주시 용문로 8 (용담2동 1531-1)<br>064-735-3366
						</td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td>12코스<span>차귀도 뉴파워보트<br>(차귀도유람선)
						</span></td>
						<td><span>패스포트 소지시 차귀도 유람선 탑승료 3,000원 할인 </span>성인 16,000원 ->
							13,000원 / 소인 13,000원 -> 10,000원</td>
						<td>제주시 한경면 노을해안로 1161<br>064-738-5355
						</td>
					</tr>

					<tr>
						<td>10코스<span>가파도, 마라도 정기여객선<br>(주)아름다운 섬나라
						</span></td>
						<td>(주)아름다운 섬나라 <br>가파도, 마라도 정기여객선<br> <a
							href="www.wonderfulis.co.kr" target="_blank">
								www.wonderfulis.co.kr</a><br> <span>제주올레 패스토프 소지자에 한해 선박
								운임료 할인 혜택 제공<br>1) 마라도 승선료 10%할인 (대인, 청소년 적용)
						</span>성인 19,000원 -> 17,200원 / 청소년 18,800원 -> 16,000원 <span>2) 가파도
								승선료 17% 할인 (대인, 청소년 적용)</span>성인 14,100원 -> 11,900원 / 청소년 13,900원 ->
							11,700원 <br> <br>소인은 성인 기준 기존 50% 적용<br>해양국립공원 입장료
							포함<br>패스포트 소지자에 한해 패스포트 확인 후 할인 제공<br>단체(30명 이상) 적용 불가,
							개별 관광객에 한해 할인 제공
						</td>
						<td>서귀포시 대정읍 최남단해안로 120<br>064-794-5490
						</td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td>18코스<span>부산-제주 정기 여객선<br>뉴스타호 (주)엠에스페리
						</span></td>
						<td>부산-제주 정기 여객선 뉴스타호 (주)엠에스페리<br> <br> <span>패스포트
								소지시 뉴스타호 승선로 30% 할인 </span> (패스포트 소지자 1인 1매 할인 적용)<br>- 성수기(할증기간)
							요금 20% 할인<br>- 객실 등급 3등실 / 2등실 / 1등실B 까지 할인 적용<br> <br>
							<span>[객실 운임 - 정상가 30% 할인]</span>1등실 B 정가 71,500원 -> 50,500원<br>2등실
							정가 61,500원 -> 43,500원<br>3등실 정가 51,500원 -> 36,500원 <span>[할증
								운임 - 정상가20% 할인]</span>1등실 B 정가 78,500원 -> 63,100원<br>2등실 정가
							67,500원 -> 54,300원<br>3등실 정가 56,500원 -> 45,500원<br> <br>부산-제주
							정기 여객선 뉴스타호 (주)엠에스페리<br> <a
							href="http://msferry.heawoon.co.kr" target="_blank">http://msferry.heawoon.co.kr</a><a
							href="http://msferry.modoo.at" target="_blank">http://msferry.modoo.at</a>
						</td>
						<td>[제주 사무소] <br>제주시 임항로 191 (국제여객선터미널) (주)엠에스페리<br>부산
							: 054-461-0064<br>제주 : 064-805-9117
						</td>
					</tr>
				</table>

				<table class="passport">
					<tr>
						<th colspan="3" class="th_01">이용료 및 상품 할인</th>
					</tr>

					<tr>
						<th>상호명</th>
						<th>할인 내용</th>
						<th>주소 및 연락처</th>
					</tr>

					<tr>
						<td>17코스<span>해올렛</span></td>
						<td><span>패스포트 소지시 매장 상품 5% 할인</span>(중복할인 불가)</td>
						<td>제주시 용해로 50<br>064-746-2001
						</td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td rowspan="2">3코스<span>동부 승마 레저타운</span></td>
						<td>일반가격<br>오름코스 35,000원 / 단체(20인이상) 20,000원<br>주몽코스
							45,000<br>카트 및 레저 1인 25,000 2인 35,000
						</td>
						<td rowspan="2">서귀포시 표선면 번영로 2454<br>064-787-5220
						</td>
					</tr>

					<tr>
						<td class="r_02">패스포트 할인가격<span>패스포트 소지 시 40% 할인</span></td>
					</tr>

					<tr>
						<td>4코스<span>소노캄 제주</span></td>
						<td><span>패스포트 소지시 <br>사우나, 수영장 30%할인 / 식음료 10%할인
						</span></td>
						<td>서귀포시 일주동로 6347-17<br>064-780-7100
						</td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td>6코스<span>휴애리</span></td>
						<td class="r_02"><span>패스포트 소지시 휴애리 입장료 50% 할인</span>*제주도민과
							동일한 최고대우 할인<br> <br>[정상가격] 성인 (13,000원), 청소년(11,000원),
							소인(10,000원)<br>[도민가격] 성인 (6,500원), 청소년(5,500원), 소인(5,000원)</td>
						<td>서귀포시 남원읍 신례동로 256<br>064-732-2114
						</td>
					</tr>

					<tr>
						<td>10코스<span>송악힐링풋스킨</span></td>
						<td><span>패스포트 소지시 서비스요금 20% 할인</span></td>
						<td>서귀포시 송악관광로399 2층<br>064)794-8859, 010-4734-4912
						</td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td>14코스<span>그린페블</span></td>
						<td class="r_02"><span>패스포트 소지 시 전 품목 10% 할인</span>초콜릿 디저트
							카페, 석창포 초콜릿 · 다도 · 화분 체험</td>
						<td>제주시 한림읍 수동7길 54-3<br>064-772-5011
						</td>
					</tr>


				</table>

				<table class="passport">
					<tr>
						<th colspan="3" class="th_01">식당 및 카페 할인</th>
					</tr>

					<tr>
						<th>상호명</th>
						<th>할인 내용</th>
						<th>주소 및 연락처</th>
					</tr>

					<tr style="background: #F0FAFF;">
						<td>1코스<span>일조식당</span></td>
						<td><span>패스포트 소지시 15% 할인</span></td>
						<td>서귀포시 성산읍 성산중앙로 60<br>064-782-8882
						</td>
					</tr>


					<tr>
						<td>4코스<span>와랑와랑</span></td>
						<td><span>패스포트 소지자 음료 10% 할인</span></td>
						<td>서귀포시 남원읍 위미중앙로300번길 28<br>070-4656-1761
						</td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td>4코스<span>알토산고팡 락</span></td>
						<td><span>패스포트 소지 시 음식 10% 할인</span></td>
						<td>서귀포시 표선면 토산리 526-3</td>
					</tr>

					<tr>
						<td>5코스<span>위미어부수산물판매장</span></td>
						<td><span>패스포트 소지 시 회 전품목 10% 할인</span></td>
						<td>서귀포시 남원읍 위미중앙로 196번길 6-12</td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td>6코스<span>모커리카페</span></td>
						<td><span>패스포트 소지 시 전 메뉴 20% 할인</span></td>
						<td>서귀포시 칠십리로 72번길 9<br>070-4179-4253
						</td>
					</tr>


					<tr>
						<td>6코스<span>희신이네 식당</span></td>
						<td><span>패스포트 소지자 5%할인</span></td>
						<td>서귀포시 서홍로 175<br>064-762-0335
						</td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td>6코스<span>홍당무 떡볶이</span></td>
						<td><span>패스포트 소지자 돔베세트 주문시 왕새우튀김 1마리 또는 쿨피스 제공 </span></td>
						<td>서귀포시 중정로 45<br>010-4822-4440
						</td>
					</tr>

					<tr>
						<td>7코스<span>제주올레 PUB</span>(제주올레여행자센터)
						</td>
						<td><span>패스포트 소지시 모든 식/음료 5% 할인 </span>주류, 기념품 제외</td>
						<td>서귀포시 중정로 22<br>064-762-2167
						</td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td>7코스<span>솔빛바다</span></td>
						<td><span>패스포트 소지시 모든 음료 10% 할인 </span></td>
						<td>서귀포시 서홍동 795-1<br>010-9657-7711
						</td>
					</tr>

					<tr>
						<td>7코스<span>카페 다린</span></td>
						<td><span>패스포트 소지시 전통 음료 (쌍화탕, 대추탕, 식혜, 수정과, 미숫가루) 주문
								시 수제양갱(2000원) 제공 </span></td>
						<td>서귀포시 법환동 218-5 1층<br>064-739-7772
						</td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td>8코스<span>바다 목장</span></td>
						<td><span>제주올레패스포트 소지자(1인) 식사 10% 할인</span></td>
						<td>서귀포시 논짓물로 35<br>064-738-6699
						</td>
					</tr>

					<tr>
						<td>8코스<span>니나수 옹기족욕카페</span></td>
						<td><span>패스포트 소지시 족욕 카페 (음료포함) 10% 할인</span></td>
						<td>서귀포시 안덕면 대평로 29<br>올레 8코스 종점에서 도보 3분(100m정도)<br>064-738-9800
						</td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td>10코스<span>새물국수</span></td>
						<td><span>패스포트 소지 시 최종 금액에서 1,000원 할인</span></td>
						<td>안덕면 화순해안로 63 <br>010-6389-0610
						</td>
					</tr>

					<tr>
						<td>10코스<span>송악산 7 족욕</span></td>
						<td><span>제주올레 패스포트 소지시 20% 할인 적용</span></td>
						<td>서귀포시 대정읍 형제해안로 322-1<br>064-792-3112
						</td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td>15코스<span>곽지곤지암해장국</span></td>
						<td><span>패스포트 소지시 현금 계산 고객에게 1,000원 할인</span></td>
						<td>제주시 애월읍 곽지1길 4<br>010-6624-0604
						</td>
					</tr>

					<tr>
						<td>17코스<span>자매국수</span></td>
						<td><span>패스포트 소지 시 음료 제공 </span></td>
						<td>제주시 탑동로 11길 6<br>064-746-2222
						</td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td>18코스<span>관덕정 분식</span></td>
						<td><span>패스포트 소지시 모든 메뉴 10% 할인 </span></td>
						<td>제주시 관덕로8길 7-9<br>064-757-0503
						</td>
					</tr>

					<tr>
						<td>18-1코스 추자<span>귀빈정식</span></td>
						<td><span>패스포트 소지자 정식 2,000원 할인</span></td>
						<td>제주시 추자면 추자로 14-3<br>064-742-4900
						</td>
					</tr>
				</table>

				<table class="passport">
					<tr>
						<th colspan="3" class="th_01">숙소 할인</th>
					</tr>

					<tr>
						<th>상호명</th>
						<th>할인 내용</th>
						<th>주소 및 연락처</th>
					</tr>

					<tr>
						<td rowspan="2">1코스<span>해바라기 게스트하우스</span></td>
						<td>일반가격<br>도미토리형 가족 방(최대 6인) 120,000원 (1인 20,000원)<br>온돌방(2인실)
							30,000원<br>펜션형 온돌방(2인실) 40,000원<br>펜션형 침대방(2인실) 40,000원<br>*7/15
							~ 8/30 성수기 요금 적용
						</td>
						<td rowspan="2">서귀포시 성산읍 성산등용로 10<br>064-782-3200,
							010-9687-3232
						</td>
					</tr>

					<tr>
						<td><span>패스포트 소지시 5% 할인 </span></td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td rowspan="2">1코스<span>일조민박</span></td>
						<td>일반가격<br>5-6인실 45,000원 / 4인실 40,000원 / 2인실 30,000원
						</td>
						<td rowspan="2">서귀포시 성산읍 성산중앙로 60<br>064-782-8882,
							010-5188-4817
						</td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td><span>패스포트 소지시 10% 할인</span>* 추가인원 요금 및 성수기 요금은 별도문의<br>
							* 올레꾼에 한해 조식/석식 포함 숙박 가능</td>
					</tr>

					<tr>
						<td>1코스<span>해뜨는 초록마을</span></td>
						<td><span>패스포트 소지 시 숙박료 10% 할인 적용 </span></td>
						<td>서귀포시 성산읍 섭지코지로 25번길 8<br>010-2696-6958
						</td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td rowspan="2">1-1코스<span>등머울 게스트하우스</span></td>
						<td>일반가격<br>원룸 60,000원 (2인) / 80,000원(성수기)
						</td>
						<td rowspan="2">제주시 우도면 안비양길 35<br>064-784-3878
						</td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td><span>패스포트 소지시 원룸 10%할인</span>주말 제외, 주중만 할인</td>
					</tr>

					<tr>
						<td rowspan="2">3코스<span>세화의 집</span></td>
						<td>일반가격<br>1인실 25,000원 / 도미토리 20,000원
						</td>
						<td rowspan="2">서귀포시 표선면 세성로 303<br>064-787-77942
						</td>
					</tr>

					<tr>
						<td><span>패스포트 소지시 1인 1,000원 할인 </span></td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td>4코스<span>포 유 펜션</span></td>
						<td><span>패스포트 소지자 성수기 20%, 비수기 30% 할인</span></td>
						<td>서귀포시 남원읍 서의로 40-6<br>064-764-2777, 010-6687-4501
						</td>
					</tr>

					<tr>
						<td>4코스<span>하얀언덕 게스트하우스</span></td>
						<td><span>패스포트 소지시 숙박 10% 할인</span> (중복할인은 안됨)</td>
						<td>서귀포시 표선면 민속해안로 351<br>064-787-7007, 010-3665-8201
						</td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td>4코스<span>티파니에서 아침을</span></td>
						<td><span>패스포트 소지시 30% 할인 </span>(*성수기 7월21일~8월말까지 할인적용 불가)</td>
						<td>서귀포시 남원읍 서의로154번길 12-1<br>064-764-9669,
							010-5120-9669
						</td>
					</tr>

					<tr>
						<td>6코스<span>포시즌 호텔</span></td>
						<td><span>패스포트 소지자 20%할인</span></td>
						<td>서귀포시 칠십리로285번길 3<br>064-732-5222, 010-7186-0379
						</td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td>6코스 / 7코스<span>외돌개 나라</span></td>
						<td><span>패스포트 소지시 10% 할인</span>* 도미토리 할인 제외, 성수기 (7/20~8/20)
							요금 별도</td>
						<td>서귀포시 남성로 122<br>064-732-1183, 010-3622-3620
						</td>
					</tr>

					<tr>
						<td>6코스<span>민중각 게스트하우스</span></td>
						<td><span>패스포트 소지시 10% 할인</span></td>
						<td>서귀포시 서문로28번길 4<br>064-763-0501
						</td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td rowspan="2">7코스<span>올레스테이 (제주올레여행자센터)</span></td>
						<td>일반가격도미토리 1인 22,000원 / 2인실 60,000원 / 1인실 38,000원</td>
						<td rowspan="2">서귀포시 중정로 22<br>064-762-2167
						</td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td><span>패스포트 소지시 모든 객실 1,000원 할인 </span></td>
					</tr>

					<tr>
						<td>7코스<span>서귀포월드컵리조트</span></td>
						<td><span>패스포트 소지시<br>숙박료 및 조식, 부대시설 이용 5% 할인
						</span></td>
						<td>서귀포시 월드컵로 45번길 40<br>064-739-3001, 010-9290-9130
						</td>
					</tr>


					<tr style="background: #F0FAFF;">
						<td rowspan="2">7코스<span>남미호텔</span></td>
						<td>일반가격<br>1박 40,000원
						</td>
						<td rowspan="2">서귀포시 솔동산로 10길 19<br>064-733-0613~4,
							010-8297-6091
						</td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td><span>패스포트 소지시 숙박료 5,000원 할인</span></td>
					</tr>


					<tr>
						<td rowspan="2">7-1코스<span>제주워터월드 찜질방</span></td>
						<td>일반가격<br>사우나 - 7,000원(대인) / 찜질방 - 10,000원(대인)
						</td>
						<td rowspan="2">서귀포시 월드컵로 31 제주월드컵경기장 내<br>064-739-1930
						</td>
					</tr>

					<tr>
						<td><span>패스포트 소지시 1,000원 할인</span></td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td>8코스<span>써니데이제주</span></td>
						<td><span>패스포트 소지시 요금 할인 (유선 문의)</span></td>
						<td>서귀포시 대포로 131<br>064-738-1999
						</td>
					</tr>

					<tr>
						<td>8코스<span>뜨레피아 펜션</span></td>
						<td><span>패스포트 소지시 2인실 5,000원 할인 (유선 문의)</span></td>
						<td>서귀포시 월평하원로 111<br>064-738-5848, 010-3691-5848
						</td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td rowspan="2">8코스<span>해라의성</span></td>
						<td>일반가격<br>9평형 50,000원(2인) <br>13평형 70,000원(2인)<br>18평형
							90,000원(4인)
						</td>
						<td rowspan="2">서귀포시 색달동 2468<br>064-738-9490
						</td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td><span>패스포트 소지시 15% 할인</span></td>
					</tr>

					<tr>
						<td>8코스<span>바산올레펜션 & 니나수족욕카페</span></td>
						<td><span>패스포트 소지시 전체 객실 할인 및 족욕 할인(유선 문의)</span></td>
						<td>서귀포시 안덕면 대평로 29<br>064-738-9800, 010-9832-9801
						</td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td rowspan="2">8코스<span>팡숑예래팬션</span></td>
						<td>일반가격<br>17평형 80,000원<br>19평형 100,000원 (평일기준)
						</td>
						<td rowspan="2">서귀포시 예래해안로 357<br>064-738-1133
						</td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td><span>패스포트 소지시 10% 할인</span></td>
					</tr>

					<tr>
						<td>10코스<span>산방산 온천 게스트하우스 </span></td>
						<td><span>패스포트 소지자 현장에서 현금결제 시 2,000원할인</span></td>
						<td>서귀포시 안덕면 사계리 981번지 산방산 탄산온천단지내<br>010-2436-2544
						</td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td>14코스<span>오름 펜션</span></td>
						<td><span>패스포트 소지시 숙박 10% 할인</span></td>
						<td>제주시 한경면 중산간서로3662<br>064-772-1281, 010-3699-7721,
							010-6693-7721
						</td>
					</tr>

					<tr>
						<td>15코스<span>화연이네 펜션 </span></td>
						<td><span>패스포트 소지시 숙박 요금 10,000원 할인</span></td>
						<td>제주시 애월읍 애월해안로 224<br>064-799-7551,010-3696-9180
						</td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td>15-A코스<span>제주금산펜션</span></td>
						<td><span>패스포트 소지시 10%할인</span></td>
						<td>제주시 애월읍 납읍리 1526-5 <br>064-799-0400, 010-6769-9955
						</td>
					</tr>

					<tr>
						<td>15-B코스<span>레이지버드(여성전용숙소) </span></td>
						<td><span>패스포트 소지시 숙박료 5% 할인 </span>(6박7일 이용료 정가 45만원에서 5% 할인
							적용 시 최종가 427,500원)</td>
						<td>제주시 애월읍 일주서로 6066-24<br>010-3259-7812
						</td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td>16코스<span>해안누리 펜션 </span></td>
						<td><span>패스포트 소지시 10% 할인 </span></td>
						<td>제주시 애월읍 애월해안로 298<br>010-9839-5521, 064-799-1600
						</td>
					</tr>

					<tr>
						<td rowspan="2">18코스<span>대동호텔</span></td>
						<td>일반가격<br>55,000원(2인) / 66,000원(2인) / 77,000원(2인)<br>*일반실
							1인 추가 11,000원<br>*성수기 요금 별도
						</td>
						<td rowspan="2">제주시 관덕로 15길 6 <br>064-722-3070
						</td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td><span>패스포트 소지시 10% 할인 </span>50,000원(2인) / 60,000원(2인) /
							70,000원(2인)<br> *성수기 요금 별도</td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td>18-1코스 추자<span>추자올레 게스트하우스 </span></td>
						<td><span>패스포트 소지시 10% 할인 </span></td>
						<td>제주시 추자면 대서2길 23<br>010-4057-3650
						</td>
					</tr>

					<tr>
						<td rowspan="2">20코스<span>레프트 핸더 게스트하우스</span></td>
						<td>일반가격<br>도미토리룸 <br>*비수기 : 10월~04월 20,000원 <br>*성수기
							: 05월~09월 25,000원
						</td>
						<td rowspan="2">제주시 구좌읍 상도리 471-25<br>010-3369-1071
						</td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td><span>패스포트 소지시 도미토리룸 10% 할인</span>조식 무료 제공</td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td>21코스<span>탱자싸롱</span></td>
						<td><span>패스포트 소지시 10% 할인 </span></td>
						<td>제주시 구좌읍 세화11길 12 (세화리 22번지) <br>010-4115-8121
						</td>
					</tr>

					<tr>
						<td>21코스<span>요금은 민박, 시설은 펜션<br>지미안
						</span></td>
						<td><span>패스포트 소지시 10%할인</span>픽업 가능 올레꾼 환영</td>
						<td>제주시 구좌읍 종달로1길 91-22<br>064-782-6222, 010-3044-0601
						</td>
					</tr>

					<tr style="background: #F0FAFF;">
						<td>21코스<span>하바나 리조트</span></td>
						<td><span>패스포트 소지시 10% 할인 </span></td>
						<td>제주시 구좌읍 해맞이해안로 1590-6<br>064-782-1000 010-5061-9698
						</td>
					</tr>



				</table>
			</div>
		</div>

		<!-- 청년 패스포트 베네핏 챌린지 -->
		<div class="info_txt_area mt_30" id="gnb6">
			<div class="con_txt02">
				<h1>청년 패스포트 베네핏 챌린지</h1>
			</div>
			<div class="keeper_box">
				<h5>
					청년들의 완주를 응원하는 마음으로, 길이 지나는 식당, 숙소, 카페 등에서 준비한 혜택입니다. <br>놓침 없이
					맘껏 즐겨보세요.<br>
					<br> · 운영 상황에 따라 혜택 내용이 변경될 수 있습니다. <br>· 패스포트와 리플릿 모두 소지
					시에만 적용됩니다. <br>· 모든 혜택은 1회만 제공됩니다. <br>· 숙박 및 체험은 사전예약
					시에만 혜택이 적용됩니다.
				</h5>
			</div>
			<div class="mt_30"></div>
			<table class="standard02">
				<tr>
					<th>코스</th>
					<th>업체명</th>
					<th>혜택</th>
					<th>주소</th>
				</tr>

				<tr>
					<td>1</td>
					<td>카페제주동네</td>
					<td>모든 음료 및 빙수 1,000원 할인</td>
					<td>제주시 구좌읍 종달로5길 23</td>
				</tr>

				<tr>
					<td>1-1</td>
					<td>카페 수평선</td>
					<td>모든 음료 1,000원 할인</td>
					<td>제주시 우도면 우도해안길 388</td>
				</tr>

				<tr>
					<td>3</td>
					<td>신산리 마을카페</td>
					<td>모든 메뉴 10% 할인</td>
					<td>서귀포시 성산읍 환해장성로 33</td>
				</tr>

				<tr>
					<td>4</td>
					<td>카페 141</td>
					<td>모든 음료 1,000원 할인</td>
					<td>서귀포시 남원읍 태신해안로 227-3</td>
				</tr>

				<tr>
					<td>5</td>
					<td>넙빌레하우스</td>
					<td>에이드 20% 할인 또는 음료 주문 시, 스콘 50% 할인</td>
					<td>서귀포시 남원읍 태위로2번길 28</td>
				</tr>

				<tr>
					<td>6</td>
					<td>아일랜드 라디오</td>
					<td>아메리카노 2,000원 할인</td>
					<td>서귀포시 칠십리로658번길 27-13</td>
				</tr>

				<tr>
					<td>7</td>
					<td>플레이더제주</td>
					<td>게임 체험 키트 60% 할인 (18,000원->7,200원</td>
					<td>서귀포시 중정로 22 제주올레 여행자센터</td>
				</tr>

				<tr>
					<td>7-1</td>
					<td>밝은방</td>
					<td>음료 주문 시, 포카치아 빵 무료제공 또는 음료 + 베이커리 set 메뉴 3,000원 할인</td>
					<td>서귀포시 호근로 58</td>
				</tr>

				<tr>
					<td>10</td>
					<td>비고르 서핑스쿨</td>
					<td>서핑 체험강습 10,000원 할인<br>※사전 예약 필수
					</td>
					<td>서귀포시 안덕면 형제해안로 70</td>
				</tr>

				<tr>
					<td>10</td>
					<td>그레이그로브</td>
					<td>모든 음료 20% 할인</td>
					<td>서귀포시 안덕면 형제해안로 70</td>
				</tr>

				<tr>
					<td>11</td>
					<td>무릉외갓집</td>
					<td>오늘의 음료 1,000원 판매</td>
					<td>서귀포시 대정읍 중산간서로 2852</td>
				</tr>

				<tr>
					<td>12</td>
					<td>도구리3083 카페</td>
					<td>모든 음료 1,000원 할인</td>
					<td>서귀포시 대정읍 노을해안로 702</td>
				</tr>

				<tr>
					<td>13</td>
					<td>낙천리 마을카페</td>
					<td>모든 음료 25% 할인 및 보리 피자 체험 사전 예약 시 10% 할인</td>
					<td>제주시 한경면 낙천리 1913</td>
				</tr>

				<tr>
					<td>14</td>
					<td>그린페블</td>
					<td>모든 음료 및 초콜릿 상품 10% 할인</td>
					<td>제주시 한림읍 수동7길 54-3</td>
				</tr>

				<tr>
					<td>15</td>
					<td>제주플레이그라운드</td>
					<td>주중(일, 월, 화, 수, 목) 15% / 주말(금,토 공휴일 전날) 10% 할인<br>※ 사전
						예약 필수
					</td>
					<td>제주시 한림읍 귀덕6길 92-9</td>
				</tr>


				<tr>
					<td>17</td>
					<td>관덕정 분식</td>
					<td>전 메뉴 총 구매 금액에서 10% 할인</td>
					<td>제주시 관덕로8길 7-9</td>
				</tr>

				<tr>
					<td>18</td>
					<td>베드라디오</td>
					<td>주중(일,월,화,수,목) 15% / 주말(금,토 공휴일 전날) 10% 할인<br>※ 사전 예약
						필수 / 2021년에 한해 제공
					</td>
					<td>제주시 중앙로1길 41-1</td>
				</tr>

				<tr>
					<td>19</td>
					<td>올드북촌</td>
					<td>아메리카노 50% 할인</td>
					<td>제주시 조천읍 일주동로 1437</td>
				</tr>

				<tr>
					<td>20</td>
					<td>걷다 워크인제주</td>
					<td>용암해수 족욕 3,000원 할인</td>
					<td>제주시 구좌읍 해맞이해안로 594</td>
				</tr>

				<tr>
					<td>21</td>
					<td>카페 책자국</td>
					<td>모든 음료 1,000원 할인</td>
					<td>제주시 구좌읍 종달로1길 117</td>
				</tr>

				<tr>
					<td>기타</td>
					<td>탐라에일</td>
					<td>수제맥주 1잔 무료 제공</td>
					<td>제주시 광산로 491-2</td>
				</tr>

			</table>


			<div class="dashline_box">
				<br>
				<div class="con_txt02">
					<h1>청년 완주 응원 패키지</h1>
				</div>
				<div class="keeper_box">
					<h5>
						· 노네임 패스포트 구매자에 한해 1회 제공됩니다.<br> <br>제주올레 길을 걷는 청년들의 완주를
						응원하는 마음으로 착한 기업에서 준비한 선물입니다. <br>제주올레 여행에서 유용하게 사용할 수 있는 상품으로
						준비했습니다. 여러분을 응원하는 마음에 응답하는 마음으로 SNS에 상품 후기를 남겨주세요 :) <br>
						<br>#제주올레 #노네임패스포트 #카카오 #LG생활건강 #올레스테이 #그린페블
					</h5>
				</div>
				<div class="mt_30"></div>
				<img src="/trail/kor/images/sub/challenge_gift.jpg">
				<div class="mt_30"></div>
				<div class="left_con">
					<div class="up"></div>
					<div class="con_txt">
						<h2>카카오</h2>
					</div>
					<div class="con_img02">
						<img src="/trail/kor/images/sub/challenge01.jpg">
					</div>

					<div class="con_txt">
						<h3>
							기술과 사람이 만드는 더 나은 세상을 위해 가보지 않은 길을 두려워하지 않는 기업. <br>
							<br>제주올레의 친구기업 카카오에서 ‘해피위크 젤펜 부끄라이언’을 드립니다. 너무 귀여워서 볼 때마다
							행복해지는 해피위크 젤펜으로 노네임 패스포트에 여러분의 이야기를 기록하세요.
						</h3>

					</div>
				</div>
				<div class="right_con">
					<div class="up"></div>
					<div class="con_txt">
						<h2>LG생활건강</h2>
					</div>
					<div class="con_img02">
						<img src="/trail/kor/images/sub/challenge02.jpg">
					</div>

					<div class="con_txt">
						<h3>고객의 아름다움과 꿈을 실현하는 최고의 생활문화 기업 'LG생활건강' 에서 자연 그대로의 가치를 전하는
							더페이스샵 선크림, 스킨 릴리프 뷰티 브랜드 비욘드 마스크와 건강한 행사가 되기 바라는 마음으로 핸드 새니타이저를
							선물합니다.</h3>

					</div>
					<br>
					<br>
				</div>
				<div class="mt_30"></div>

				<div class="left_con">
					<div class="up"></div>
					<div class="con_txt">
						<h2>올레스테이</h2>
					</div>
					<div class="con_img02">
						<img src="/trail/kor/images/sub/challenge03.jpg">
					</div>

					<div class="con_txt">
						<h3>
							길을 낸 사람들이 길을 걷는 사람들을 생각하며 만든 ‘걷기 여행자를 위한’ 숙소 올레스테이에서 1박 체험권을
							드립니다. 올레길 센딩 서비스, 신발 건조기, 세탁 서비스, 연박 할인 등 걷기 여행자를 위한 맞춤형 서비스가
							제공됩니다. 길을 걷는 다른 올레꾼을 만나 그들의 이야기도 들어보세요. <br>
							<div class="con_btn">
								<a href="https://ollestay.modoo.at/" target="_blank">올레스테이
									예약하기</a>
							</div>
						</h3>

					</div>
				</div>
				<div class="right_con">
					<div class="up"></div>
					<div class="con_txt">
						<h2>그린페블</h2>
					</div>
					<div class="con_img02">
						<img src="/trail/kor/images/sub/challenge04.jpg">
					</div>

					<div class="con_txt">
						<h3>그린(자연)+페블(돌) 이름에서 묻어나는 제주 석창포를 이용한 초콜릿과 차 제품을 만드는 제주 대표
							향토기업입니다. 제주 오름을 닮은 밧돌초콜릿과 함께 걸어보세요. 아몬드의 고소함과 초콜릿의 달콤함이 만나 올레길에
							활력을 더해 줄 것입니다.</h3>

					</div>
				</div>
			</div>
	</div>
</div>
<script type="text/javascript">
		// 기본셋팅
		$("#gnb2").css("display", "none");
		$("#gnb3").css("display", "none");
		$("#gnb4").css("display", "none");
		$("#gnb5").css("display", "none");
		$("#gnb6").css("display", "none");
		
		
		$(".pre_btn").click(function() {
			$(".pre_btn_on").attr("class", "pre_btn");
			$(this).attr("class", "pre_btn_on");
		});
		
		</script>
