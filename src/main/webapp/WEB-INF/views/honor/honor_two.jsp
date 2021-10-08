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

.mt_30 {
    margin-top: 30px;
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

.wrap {
    width: 100%;
    height: auto;
    position: relative;
    font-family: 'Noto Sans KR', sans-serif;
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

.con_list li:before {
    content: "·";
    position: absolute;
    top: 0;
    left: 0;
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

.infobox span, .infobox02 span {
    font-size: 15px;
    font-weight: 500;
    color: #333;
    line-height: 26px;
    letter-spacing: -1px;
    position: relative;
    display: inline-block;
}

.sub_bull, .sub_bull02, .sub_bull03, .sub_bull04 {
    width: 100%;
    position: relative;
    display: inline-block;
    overflow: hidden;
    margin-left: 0%;
    vertical-align: middle;
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
					<li class="tap_on02"><a href="${pageContext.request.contextPath }/honor_two">100km 완주 도전</a></li>
					<li class="tap02"><a href="${pageContext.request.contextPath }/honor_three">425km 완주 도전</a></li>
					</ul> 
				</div>
					<div class="info_txt_area">
						<div class="keeper_box mt_30"><p class="sub_bull"><span>제주올레 길 100km 완주자를 위한 완주인증</span></p><br>
						<h5> 425km 전 코스를 완주하지 않아도 괜찮습니다.<br>언제나 도전은 의미 있고 충분히 멋진 일입니다. 나만의 속도로 두 발로 내딛는 여행을 마음껏 즐겨 보세요.</h5>
						</div>
							<div class="left_area"><div class="con_img02"><img src="${pageContext.request.contextPath }/images/honor/method_challange.jpg"></div></div>
							<div class="right_area">
								<div class="up"></div>
									<div class="con_txt"><h2>100km 완주증서 발급절차</h2>
										<ul class="con_list">
										<li>100km 해당하는 코스 완주</li>
										<li>스탬프가 찍힌 패스포트를 가지고 제주올레 여행자센터에 방문</li>
										<li>완주 설문지 작성</h4></li> 
										<li>확인 후 패스포트에 100km 인증도장과 완주증서 수령</li>
										<li>기념촬영</li>
										</ul>
									</div>
									<div class="infobox02">
										<p class="sub_bull02"><span>제주올레 100km 완주증서 발급처 </span></p>
										<h3><span>장소</span> : 제주올레 여행자센터(서귀포시 중정로 22, 064-762-2167, 2177)<br><span>필수 지참</span> : 모든 코스의 시/종점, 중간지점 스탬프를 찍은 패스포트<br>
										<span>문의</span> : 제주올레 콜센터 064-762-2190</h3>
									</div>
										<br><br><br>
									<div class="up"></div>
										<div class="con_txt"><h2>100km 완주증서 발급절차</h2>
											<ul class="con_list">
												<li>100km 완주 인증도 제주올레 여행자센터에서만 받을 수 있나요? <b>네</b></li>
												<li>100km 완주 이후 같은 패스포트로 완주 도전하면 완주증과 메달도 수령 가능한가요? <b>네</b></li>
												<li>100km 완주하면 완주증과 완주 메달이 모두 발급되나요? <b>완주증만 발급됩니다.</b></h4></li> 
												<li>주의 사항<h4>- 패스포트당 1회만 인증합니다.<br>- 1개 코스를 완주해야 인정. 반 코스는 인정되지 않습니다.<br>- 이미 425km 완주증을 받은 패스포트는 100km 인증이 되지 않습니다.<br>- 전 코스 완주증과 동시에 받을 수 없습니다</h4></li>
											</ul>
										</div>
									</div>
												
								</div>
						</div>
			</div>
			

		
		
	
	</div>
