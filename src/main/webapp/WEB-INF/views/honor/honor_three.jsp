<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type="text/css">



.honor_area{
	width:100%;
	height:auto;
	position:relative;
	display:inline-block;
	margin-top:0px;
	border:0px solid red;
}

.honor_list_wrap02{
	width:100%;
	height:auto;
	margin:0 auto;
	margin-top:30px;
	position:relative;
	display:flex;
	flex-wrap: wrap;
}

.honor_form02{
	width:223px;
	height:auto;
	position:relative;
	display:inline-block;
	margin-right:35px;
	margin-top:14px;
	text-align:center;
	cursor:pointer;
	border:0px solid red;

}

.honor_img02{
	width:223px;
	height:223px;
	position:relative;
	display:inline-block;
	border:1px solid #ddd;
	overflow:hidden;
}

.honor_img02 img{
	width:223px;
	height:223px;
	object-fit: cover;

}

.honor_form02:nth-child(4n){ margin-right:0px; }

.honor_tab{
	width:50%;
	height:50px;
	border:1px solid #ddd;
	font-size:16px;
	font-weight:300;
	line-height:48px;
	margin-left:-1px;
	right:0;
	color:#888;
	display:inline-block;
	float:left;
}

.honor_tab_on{
	width:50%;
	height:50px;
	border:1px solid #08b2f5;
	font-size:16px;
	line-height:48px;
	margin-left:-1px;
	right:0;
	background:#08b2f5;
	font-weight:500;
	color:#fff;
	display:inline-block;
	float:left;
}

.honor_tab:hover{
	background:#08b2f5;
	border:1px solid #08b2f5;
	font-weight:500;
	color:#fff;
}

.sub_wrap, .sub_wrap03 {
    width: 1100px;
    height: auto;
    position: relative;
    margin: 0 auto;
    padding: 50px;
    margin-bottom: 80px;
    border: 0px solid red;
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

.contents_wrap {
    width: 100%;
    height: auto;
    position: relative;
    display: inline-block;
    margin-top: 50px;
    border: 0px solid red;
}

.tap_area {
    width: 100%;
    height: 51px;
    position: relative;
    text-align: center;
    z-index: 100;
}

.tap02 {
    width: 33%;
    height: 50px;
    border: 1px solid #ddd;
    font-size: 16px;
    font-weight: 300;
    line-height: 48px;
    margin-left: -1px;
    right: 0;
    color: #888;
    display: inline-block;
    float: left;
}

.tap_on02:hover, .tap02:hover{
	display:block;
	color:#fff; 
	text-decoration: none;
	background-color: #08b2f5;
}

.tap_on02 {
    width: 33%;
    height: 50px;
    border: 1px solid #08b2f5;
    font-size: 16px;
    line-height: 48px;
    margin-left: -1px;
    right: 0;
    background: #08b2f5;
    font-weight: 500;
    color: #fff;
    display: inline-block;
    float: left;
}

.visual_map, .info_txt_area, .info_txt_area02 .info_txt_area03 {
    width: 100%;
    height: auto;
    position: relative;
    display: inline-block;
    border-bottom: 1px solid #ddd;
    padding-bottom: 40px;
    padding-top: 10px;
}

.keeper_box, .con_info_box {
    width: 100%;
    height: auto;
    position: relative;
    display: inline-block;
    padding: 26px;
    text-align: justify;
    background: #f7f7f7;
}

.mt_30 {
    margin-top: 30px;
}


.sub_bull, .sub_bull02, .sub_bull03, .sub_bull04 {
    width: 100%;
    position: relative;
    display: inline-block;
    overflow: hidden;
    margin-left: 0%;
    vertical-align: middle;
}

.sub_bull:before, .sub_bull02:before, .sub_bull03:before, .sub_bull04:before {
    position: absolute;
    display: block;
    top: 12px;
    width: 6px;
    height: 6px;
    border-radius: 50%;
    background-color: #08b2f5;
    content: '';
}

.sub_bull span, .sub_bull02 span, .sub_bull04 span {
    font-size: 17px;
    font-weight: 500;
    margin-left: 14px;
    color: #333;
    display: block;
}



.keeper_box h5, con_txt h5 {
    font-size: 15px;
    color: #555;
    font-weight: 300;
    line-height: 22px;
    letter-spacing: -0.4px;
    margin-left: 15px;
    margin-right: 0px;
    margin-top: 10px;
    position: relative;
    display: inline-block;
    border: 0px solid yellow;
}

.left_area {
    width: 47.9%;
    height: auto;
    position: relative;
    display: inline-block;
    margin-top: 30px;
}

.con_img02 {
    width: 100%;
    height: auto;
    position: relative;
    display: flex;
    margin-top: 0px;
    margin-bottom: 20px;
}

img, video {
    width: 100%;
    height: auto;
    vertical-align: top;
}

.right_area {
    margin-top: 30px;
}

.right_area, .right_con {
    width: 47.9%;
    height: auto;
    position: relative;
    display: inline-block;
    float: right;
}

.up {
    width: 30px;
    height: 3px;
    background: #08b2f5;
    position: relative;
    display: inline-block;
    margin-bottom: 10px;
}

html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    vertical-align: baseline;
    background: transparent;
}

.con_txt h2 {
    font-size: 18px;
    line-height: 28px;
    font-weight: 500;
    position: relative;
    letter-spacing: -0.4px;
    color: #333;
    margin-bottom: 20px;
}

.con_list li {
    font-size: 16px;
    font-weight: 300;
    line-height: 24px;
    word-break: normal;
    letter-spacing: -0.2px;
    color: #555;
    position: relative;
    word-wrap: break-all;
    margin-top: 6px;
    margin-bottom: 0.5em;
    padding-left: 1em;
}


.con_list li:before {
    content: "·";
    position: absolute;
    top: 0;
    left: 0;
}

.con_txt h4 {
    font-size: 15px;
    font-weight: 300;
    line-height: 22px;
    word-break: normal;
    position: relative;
    display: inline-block;
    letter-spacing: -0.4px;
    text-justify: inter-word;
    color: #089FF4;
}

.infobox02 {
    margin-top: 20px;
}

.infobox, .infobox02 {
    width: 100%;
    height: auto;
    position: relative;
    display: inline-block;
    padding: 22px;
    word-wrap: break-word;
    word-spacing: -0.3px;
    background: #f7f7f7;
    margin-top: 40px;
}

.sub_bull, .sub_bull02, .sub_bull03, .sub_bull04 {
    width: 100%;
    position: relative;
    display: inline-block;
    overflow: hidden;
    margin-left: 0%;
    vertical-align: middle;
}

.infobox span, .infobox02 span {
    font-size: 15px;
    font-weight: 500;
    color: #333;
    line-height: 26px;
    letter-spacing: -1px;
    position: relative;
    display: inline-block;
}

.infobox02 h3 {
    margin-right: 0px;
}

.infobox h3, .infobox02 h3 {
    font-size: 15px;
    color: #555;
    line-height: 24px;
    margin-left: 14px;
    margin-right: 0px;
    display: inline-block;
    font-weight: 300;
}

.grey_box {
    margin-top: 30px;
    margin-bottom: 20px;
}

.red_box, .grey_box {
    width: 100%;
    height: auto;
    position: relative;
    display: inline-block;
    padding: 20px 30px 16px 30px;
    margin-top: 10px;
    background: #fff;
    border: 1px solid #ddd;
}

.red_list li {
    font-size: 15px;
    font-weight: 300;
    line-height: 26px;
    word-break: normal;
    letter-spacing: -0.2px;
    color: #444;
    position: relative;
    margin-bottom: 6px;
    padding-left: 1em;
}



</style>

</head>
<body>
	

	<div class="wrap">

		
		<div class="sub_wrap">
			<div class="sub_tit"><h1>명예의 전당</h1><div class="under"></div></div>

			
			<div class="contents_wrap">
					<div class="tap_area">
					<ul>
					<li class="tap02"><a href="${pageContext.request.contextPath }/honor_one/1">명예의 전당</a></li>
					<li class="tap02"><a href="${pageContext.request.contextPath }/honor_two">100km 완주 도전</a></li>
					<li class="tap_on02"><a href="${pageContext.request.contextPath }/honor_three">425km 완주 도전</a></li>
					</ul> 
				</div>
				<div class="info_txt_area">
					<div class="keeper_box mt_30"><p class="sub_bull"><span>당신을 명예의 전당으로 초대합니다.</span></p><br>
						<h5>오름으로, 마을로 이어지는 425km가 넘는 제주올레 길을 완주한 걷기 달인을 만날 수 있는 곳, 바로 명예의 전당입니다. <br>아름다운 제주의 자연에서 놀멍 쉬멍 걸으명 내 영혼에 행복을 불어넣어 보는 것은 어떨까요? 제주올레 길 완주, 당신의 버킷리스트로 추천합니다.</h5>
					</div>
				<div class="left_area"><div class="con_img02"><img src="${pageContext.request.contextPath }/images/honor/method01.jpg"></div></div>
				<div class="right_area">
					<div class="up"></div>
					<div class="con_txt"><h2>명예의 전당 등극 방법</h2>
						<ul class="con_list">
							<li>제주올레 안내소 및 기념품 판매처에서 패스포트를 구입합니다.<!-- <br><div class="con_btn" style="margin-top:6px;"onclick=""  target="_blank">패스포트 판매처 안내</div>--></li>
							<li> 코스를 걸으며 패스포트에 시작-중간-종점 스탬프를 꼼꼼히 챙겨 찍습니다. <br><h4>(총 26개 코스에서 중간 스탬프에 한해 3개까지 누락은 완주로 인정합니다.)</h4></li>
							<li> 제주올레 여행자센터(서귀포시)를 방문해 패스포트를 확인 받고 ‘제주올레 완주증서’와 ‘완주 메달’을 발급받습니다.<br><h4>(완주 메달은 2종(파랑/주황) 가운데 하나를 선택할 수 있습니다.)</h4></li> 
							<li> 명예의 전당에 올릴 완주자 사진 촬영을 합니다.</li>
							<li> 제주올레 홈페이지 > 안내 > 여행팁 > 제주올레 완주도전 코너에서 자신의 사진을 확인하고 주변에 자랑합니다.</li>
							<li>Daum 카페 ‘제주올레 완주자 클럽’에 가입해, 동지 완주자들과 올레길 추억을 나눕니다. <br><h4>( 제주올레 완주자 클럽 <a href="http://cafe.daum.net/jejuolle2006" target="_blank" style="display:inline-block;">http://cafe.daum.net/jejuolle2006</a>)</h4></li>
							<li> 자, 이제 다음 목표로 역올레 완주에 도전!?!</li>
						</ul>
					</div>
					<div class="infobox02">
						<p class="sub_bull02"><span>제주올레 완주증 발급처</span></p>
						<h3><span>장소</span> : 제주올레 여행자센터(서귀포시 중정로 22, 064-762-2167, 2177)<br><span>필수 지참</span> : 모든 코스의 시/종점, 중간지점 스탬프를 찍은 패스포트<br>
						<span>문의</span> : 제주올레 콜센터 064-762-2190</h3>
						</div>
					</div>
					<div class="grey_box">
						<p class="sub_bull"><span>주의사항</span></p>
						<br><br>
						<ul class="red_list">
							<li>한 사람당 하나의 패스포트를 소지하신 경우에만 완주를 인정합니다.</li>
							<li>2인 이상(부부, 친구, 단체 등)이 패스포트 하나를 같이 사용한 경우, 완주증서와 메달은 하나만 발급합니다. <br>다만, 완주증서에는 완주한 분들 이름 혹은 단체명을 적어드립니다.</li>
							<li>제주올레 완주증서와 기념품은 최초 1회에 한해 별도의 비용 없이 발급하며, 분실 시 1회에 한해 재발급합니다.<br>이 때, 택배비를 포함한 본인 부담금(8,000원)이 발생합니다.</li> 
						</ul>
					</div>
				</div>
			</div>
		</div>
		
		
	
	</div>
