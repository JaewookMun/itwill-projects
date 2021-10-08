<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 공용 css -->
<link rel="stylesheet" href='<c:url value="/css/ready.css"/>'>
<link rel="stylesheet" href='<c:url value="/css/benefit.css"/>'>
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
				<li class="pre_btn" style="cursor: pointer;"><a href="${pageContext.request.contextPath }/prepare_pass">제주올레<br>패스포트</a></li>
				<li class="pre_btn_on" style="cursor: pointer;"><a href="${pageContext.request.contextPath }/prepare_benefit">패스포트<br>할인업체</a></li>
				<li class="pre_btn" style="cursor: pointer;"><a href="${pageContext.request.contextPath }/prepare_chall">청년 패스포트<br>베네핏 챌린지</a></li>
			</ul>
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
		
	</div>
</div>
<script type="text/javascript">

		
		/* $(".pre_btn").click(function() {
			$(".pre_btn_on").attr("class", "pre_btn");
			$(this).attr("class", "pre_btn_on");
		}); */
		
</script>
