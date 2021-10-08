<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
/* board */
table.standard03 {
    width: 100%;
    height: auto;
    margin: 10px 0px;
    background-color: #fff;
}

table.standard03, table.standard03 td {
    border: 1px solid #ddd;
    text-align: center;
    padding: 10px;
    vertical-align: middle;
    overflow-x: auto;
}



</style>

	<div class="info_txt_area mt_30">
		<div class="left_area">
			<img src="${pageContext.request.contextPath }/images/program/volun.jpg">
		</div>
		<div class="right_area">
			<div class="up"></div>
			<div class="con_txt">
				<h2>제주올레의 꽃, 제주올레의 에너지</h2>
				<h3>
					425㎞, 26개 코스를 관리하는 일은 늘 숨이 찹니다. <br>제주올레걷기축제와 각종 행사를 준비하면서는
					막막하기도 합니다. 그렇지만 이 모든 일이 순조롭게 마무리될 것을 잘 압니다. 언제라도 어디라도 나타나 거드는 제주올레의
					‘홍반장’, 바로 수천 명의 자원봉사자들이 있기 때문이지요.
				</h3>
			</div>
		</div>
	
		<div class="dashline_box">
			<div class="left_con">
				<div class="up"></div>
				<div class="con_txt">
					<h2>자원봉사 운영 및 신청 안내</h2>
					<h3>
						(사)제주올레는 제주의 길과 자연, <br>사람 사는 이야기를 함께 가꾸어 갈 봉사의 손길을 기다립니다. <br>
						<br>자원봉사 회원이 되면, 올레길을 개척하고 유지‧보수하거나, 제주올레의 대표 기념품 간세인형을 제작하는
						‘간세인형공방’ 조합원으로 활동하거나, 길에서 펼쳐지는 축제나 전시 등에 힘을 보탤 수 있어요.
					</h3>
					<p class="sub_bull02 mt_30 mb_10">
						<span>종류 및 지원자격</span>
					</p>
					<ul class="con_list">
						<li><h3>정기 봉사(1년 동안 상시 활동)</h3>
							<h5>
								① 한 달에 이틀 이상 활동할 수 있는 분<br>② 최소 1년 이상 활동 가능한 분.
							</h5></li>
						<li><h3>기간 봉사(특정 기간에 활동)</h3>
							<h5>행사나 축제, 태풍피해 복구 등 특정 시기에 자원 봉사 활동에 동참할 수 있는 분</h5></li>
						<li><span>문의</span> : 정환사단 콜센터 064-111-1111</li>
					</ul>
					<h4>※ 자원봉사 활동 시간에 맞춰 ‘공식 자원봉사 확인증’ 발급 또는 1365시스템 실적등록이 가능합니다.</h4>
				</div>
			</div>
			<div class="right_con">
				<div class="up"></div>
				<div class="con_txt">
					<h2>분야별 활동 안내</h2>
					<table class="standard03">
						<tbody>
							<tr>
								<th>구분</th>
								<th colspan="2">활동 내용</th>
							</tr>
	
							<tr>
								<td>코스 유지 관리</td>
								<td>- 길/안내 표지 정비 등 제주올레&nbsp;길 유지·관리를 지원하는 활동<br>- 태풍,
									폭우, 폭설, 장마 등 피해&nbsp;복구 <br>- 하절기 예초(잡목 및 잡풀 제거) 활동 <br>-
									코스 GPS 측정,&nbsp;노면상태, 안전 및 편의 시설물 모니터링 등
								</td>
							</tr>
	
							<tr>
								<td>간세인형공방 자원봉사</td>
								<td>- 헌 옷이나 버려진 천을 이용해 ‘간세인형’을 제작하는 활동 또는 전시회 운영<br>-
									바느질에 소질이 있거나 손재주 좋은 분 우대
								</td>
							</tr>
	
							<tr>
								<td>행사 운영 자원봉사</td>
								<td>제주올레가 주최 또는 참여하는 각종 행사와 축제, 전시회 등에서 안내 및 운영을 돕는 활동</td>
							</tr>
	
							<tr>
								<td>재능 기부 자원봉사</td>
								<td>번역, 통역, 디자인 등 본인의 특기와 전문성을 살려 보탬을 주는 활동</td>
							</tr>
	
							<tr>
								<td>행정 업무 자원봉사</td>
								<td>데이터 입력, 복사, 서류철 정리, 우편 발송 등 행정 업무 지원</td>
							</tr>
	
						</tbody>
					</table>
					<div class="con_btn"
						onclick="javascript:error();">자원봉사
						신청하기&nbsp;&nbsp;&gt;</div>
				</div>
			</div>
		</div>
	</div>
	
<script type="text/javascript">
	chooseOn(4);
	
	function error(){
		alert("현재 해당 기능은 점검 중입니다.")
	}
</script>	

