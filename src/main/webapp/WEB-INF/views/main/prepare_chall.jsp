<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 공용 css -->
<link rel="stylesheet" href='<c:url value="/css/ready.css"/>'>
<link rel="stylesheet" href='<c:url value="/css/board.css"/>'>
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
				<li class="pre_btn" style="cursor: pointer;"><a href="${pageContext.request.contextPath }/prepare_benefit">패스포트<br>할인업체</a></li>
				<li class="pre_btn_on" style="cursor: pointer;"><a href="${pageContext.request.contextPath }/prepare_chall">청년 패스포트<br>베네핏 챌린지</a></li>
			</ul>
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
				<img src="${pageContext.request.contextPath }/images/prepare/challenge_gift.jpg">
				<div class="mt_30"></div>
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
