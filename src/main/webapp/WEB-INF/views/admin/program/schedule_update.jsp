<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%-- datepicker --%>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">


<!-- 공용 css -->
<link rel="stylesheet" href='<c:url value="/css/program.css"/>'>


<style type="text/css">
#formArea #inputTable{
	margin: 0 auto;
	margin-top: 70px;
}


#inputTable th {
	/*text-align: right;
	padding-right: 70px;
	padding-left: 80px;*/
	width: 400px;
	font-weight: normal;
}

#inputTable td {
	text-align: left;
	
}

#noticeRow {
	margin: 35px 0 0 0; 
	text-align: left;
	padding-left: 30px;
}

#inputTable textarea {
	resize: none;
}

#inputTable .noticeArea {
	margin-top: 10px;
	padding: 20px;
	text-align: center;
}

/*********************************************************************************************/
/* inner Table */
#scheduleTitle {
	color: #696969;
	font-weight: 500;
}

.read-only {
	color: #c0c0c0 !important;
	/*마우스 클릭 방지 css*/
	pointer-events: none; 
}

.type-self, .type-self span {
	/* 마우스 드래그 방지 */	
	user-select: none;
	font-weight: 300;
}



.schedule-input {
	margin: 10px 10px 10px 10px;
	height: 45px;
	padding: 0;
}

.schedule-input::placeholder {
	color: #c0c0c0;
}


#locationBox {
	margin-left: 0;
}

#locationText {
	width: 395px;
}


/* 버튼 CSS */

#searchBtn {
	height: 45px;
	width: 80px;
}

.program-btn .program-btn-r {
	display: inline-block;
}

.program-btn {
	background: #08b2f5;
	color: #ffffff;
	border: 1px solid #08b2f5;
}

.program-btn:hover {
	background: #008fe9;
	cursor: pointer;
}

.program-btn-r {
	background: #ffffff;
	border: 1px solid #08b2f5;
}

.program-btn-r:hover {
	text-decoration: underline; 
	color: #08b2f5;
	font-weight: 600;
	cursor: pointer;
}

.action-btn {
	width: 160px;
	height: 43px;
	font-size: 15px;
	font-weight: 400;
}

/*********************************************************************************************/
/* datepicker css setting */
.ui-state-active, .ui-widget-content .ui-state-active, .ui-widget-header .ui-state-active, a.ui-button:active, .ui-button:active, .ui-button.ui-state-active:hover {
    border: 1px solid #08b2f5;
    background: #08b2f5;
    font-weight: normal;
    color: #ffffff;
}

.ui-widget-header {
	background: #ffffff;
	border-width: 0px;
	
}

/*********************************************************************************************/
.off {
	color: white;
}

/* 공지사항 가져오기 */
#noticeRow span {
	font-size: 13px;
	font-weight: 300;
	margin-left: 20px;
	user-select: none;
}


</style>
<script>
	$.datepicker.setDefaults({
	    dateFormat: 'yy-mm-dd',
	    prevText: '이전 달',
	    nextText: '다음 달',
	    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	    showMonthAfterYear: true,
	    yearSuffix: '년',
	    minDate: "-0D" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
	});
	
	$(function() {
		$("#datepicker").datepicker();
	});
</script>

<div id="container">
	<div class="cont-title">
		<h1>프로그램 수정</h1>
		<span></span>
	</div>
	<div id="formArea">
		<form name="scheduleForm" action="${pageContext.request.contextPath }/admin/program/modify" method="post">
			<input type="hidden" name="detailedLocation" id="detailedLocation">
			<input type="hidden" name="typeSelf" id="typeSelf" value="0">
			<input type="hidden" id="programRepo" value="">
			<input type="hidden" name="scheduleNo" value="${schedule.scheduleNo}">
			
			<table id="inputTable">
				<tr>
					<th>제목</th>
					<td>
						<input class="schedule-input read-only" type="text" id="scheduleTitle" name="scheduleTitle" readonly="readonly" value="${schedule.scheduleTitle }">
						<label class="type-self">
							<span>직접입력</span>					
							<input type="checkbox" onclick="inputSelf('scheduleTitle');">
						</label>						
					</td>
				</tr>
				<tr>
					<th>프로그램 유형</th>
					<td>
						<select class="schedule-input" id="programBox" name="scheduleType" onchange="selectProgram();">
							<option value="0">========선택========</option>
							<option value="1">올레행사 및 프로그램</option>
							<option value="2">아카자봉과 함께 걷기</option>
							<option value="3">역방향 코스</option>
							<option value="4">클린올레</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>코스</th>
					<td>
						<select class="schedule-input" id="courseBox" name="scheduleCourse" onchange="selectCourse();" disabled="disabled">
							<option value="0">=======선택=======</option>
							<option value="01">01 코스</option><option value="01-1">01-1 코스</option><option value="02">02 코스</option>
							<option value="03A">03A 코스</option><option value="03B">03B 코스</option><option value="04">04 코스</option>
							<option value="05">05 코스</option><option value="06">06 코스</option><option value="07">07 코스</option>
							<option value="07-1">07-1 코스</option><option value="08">08 코스</option><option value="09">09 코스</option>
							<option value="10">10 코스</option><option value="10-1">10-1 코스</option><option value="11">11 코스</option>
							<option value="12">12 코스</option><option value="13">13 코스</option><option value="14">14 코스</option>
							<option value="14-1">14-1 코스</option><option value="15A">15A 코스</option><option value="15B">15B 코스</option>
							<option value="16">16 코스</option><option value="17">17 코스</option><option value="18">18 코스</option>
							<option value="18-1">18-1 코스</option><option value="19">19 코스</option><option value="20">20 코스</option>
							<option value="21">21 코스</option>
						</select>
						
						<select class="schedule-input" id="locationBox" name="departureLocation" onchange="selectLocation();" disabled="disabled">
							<option value="0"></option>
							<option value="01l">1코스 시작점 시흥초등학교옆 간세 앞</option>
							<option value="01l">1코스 종점 광치기해변 간세</option>
							<option value="01l">1-1코스 출발지 성산포항 여객터미널 우도 도항선 매표소 앞</option>
							<option value="02l">2코스 시작점 광치기해변 간세 앞</option>
							<option value="02l">2코스 종점 온평포구 간세 앞</option>
							<option value="03l">3A코스 시작점 온평포구 간세 앞</option>
							<option value="03l">3코스 종점 표선해비치 해변 간세 앞</option>
							<option value="03l">3B코스 시작점 온평포구 간세 앞</option>
							<option value="03l">3B코스 종점 표선해수욕장(제주올레 안내소)</option>
							<option value="04l">4코스 시작점 표선해비치 해변 간세 앞</option>
							<option value="04l">4코스 종점 남원포구(제주올레 안내소)</option>
							<option value="05l">5코스 시작점 남원포구 간세 앞</option>
							<option value="05l">5코스 종점 쇠소깍다리 간세 앞</option>
							<option value="06l">6코스 시작점 쇠소깍다리 간세 앞</option>
							<option value="06l">6코스 종점 제주올레여행자센터</option>
							<option value="07l">7코스 시작점 제주올레여행자센터 간세 앞</option>
							<option value="07l">7코스 종점 월평 아왜낭목 쉼터 간세</option>
							<option value="07l">7-1코스 시작점 서귀포터미널 간세 앞</option>
							<option value="07l">7-1코스 종점 제주올레여행자센터 간세 앞</option>
							<option value="08l">8코스 시작점 월평아왜낭목쉼터 간세 앞</option>
							<option value="08l">8코스 종점 대평포구 간세</option>
							<option value="09l">9코스 시작점 대평포구 간세</option>
							<option value="09l">9코스 종점 화순금모래해변 간세 앞</option>
							<option value="10l">10코스 시작점 화순금모래해변 간세 앞</option>
							<option value="10l">10코스 종점 하모체육공원(제주올레 안내소)</option>
							<option value="10l">10-1코스 출발점 운진항 매표소 앞</option>
							<option value="10l">10-1코스 출발지 운진항 여객터미널 가파도 매표소 앞</option>
							<option value="11l">11코스 시작점 하모체육공원 간세 앞</option>
							<option value="11l">11코스 종점 무릉외갓집 간세</option>
							<option value="12l">12코스 시작점 무릉외갓집 간세 앞</option>
							<option value="12l">12코스 종점 용수포구 간세</option>
							<option value="13l">13코스 시작점 용수포구 간세 앞</option>
							<option value="13l">13코스 종점 저지예술정보화마을(제주올레 안내소)</option>
							<option value="14l">14코스 시작점 저지예술정보화마을 간세 앞</option>
							<option value="14l">14코스 종점 한림항(제주올레 안내소)</option>
							<option value="14l">14-1코스 시작점 저지예술정보화마을 간세 앞</option>
							<option value="14l">14-1코스 종점 오설록 녹차밭 간세</option>
							<option value="15l">15코스 시작점 한림항 간세 앞</option>
							<option value="15l">15-B코스 시작점 한림항(제주올레 안내소)</option>
							<option value="15l">15-B코스 종점 고내포구(제주올레 안내소)</option>
							<option value="16l">16코스 시작점 고내포구 간세 앞</option>
							<option value="16l">16코스 종점 광령1리 사무소 간세</option>
							<option value="17l">17코스 시작점 광령1리사무소 간세 앞</option>
							<option value="17l">17코스 종점 간세라운지 X 관덕정분식</option>
							<option value="18l">18코스 시작점 간세라운지 간세 앞</option>
							<option value="18l">18코스 종점 조천만세동산 간세 앞</option>
							<option value="18l">18-1코스 출발지 제주항 연안여객선터미널 추자도행 매표소 앞</option>
							<option value="19l">19코스 시작점 조천만세동산 간세 앞</option>
							<option value="19l">19코스 종점 김녕서포구 간세 앞</option>
							<option value="20l">20코스 시작점 김녕서포구 간세 앞</option>
							<option value="20l">20코스 종점 제주해녀박물관(제주올레 안내소)</option>
							<option value="21l">21코스 시작점 해녀박물관 간세 앞</option>
							<option value="21l">21코스 종점 종달바당 간세</option>
						</select>
						
						<%-- disable일 경우 값전달을 사용할 수 없다. --%>
						<input class="schedule-input read-only" type="text" id="locationText" name="departureLocation" disabled="disabled">
						<label class="type-self">
							<span>직접입력</span>					
							<input type="checkbox" id="stChecker" onclick="inputSelf('locationText');" disabled="disabled">
						</label>
						
					</td>
				</tr>
				<tr>
					<th>일정</th>
					<td>
						<input class="schedule-input" type="text" id="datepicker" name="departureDate" placeholder="출발일을 선택하세요" autocomplete="off" value="${fn:substring(schedule.departureDatetime,0,10) }">
						<input class="schedule-input" type="text" name="departureTime" value="09:30" readonly="readonly">
						<!-- <input class="schedule-input" type="text" name="departureTime" placeholder="ex)출발 - 09:30  or 14:00"> -->
					</td>
				</tr>
				<tr>
					
					<th>봉사자</th>
					<td>
						<input class="schedule-input" type="text" id="volunteer" name="volunteer" value="${schedule.volunteer }" onblur="volunteerFn();">
						<button class="program-btn" id="searchBtn" type="button">검색</button>
					</td>
				</tr>
				
				<tr>
					<th>준비물</th>
					<td>
						<input class="schedule-input" type="text" name="preparation" value="${schedule.preparation }" placeholder="생수, 개인컵, 간식등">
					</td>
				</tr>
				
				<tr>
					<th>
					<div id="noticeRow">
						공지사항/작성내용
						<label>
							<span>샘플 공지사항 가져오기</span>
							<input type="checkbox" onclick="getNotice();">
						</label>
					</div>
					</th>
				</tr>
				
				<tr>
					<td class="noticeArea" colspan="2">
						<textarea rows="30" cols="130" name="scheduleContent" id="scheduleContent">
							${fn:replace(fn:replace(schedule.scheduleContent, "<p>",""), "</p>","") }
						</textarea>
					</td>	
				</tr>
			</table>
			<button class="program-btn action-btn" id="regSubBtn" type="button" onclick="validate();">제출</button>
			<button class="program-btn-r action-btn" type="button" onclick="location.href='${pageContext.request.contextPath}/admin/program/schedule_list/1';">취소</button>
		</form>
	</div>
</div>

<script type="text/javascript">

	function inputSelf(id){
		var titleClassList=document.getElementById(id).classList;
		
		if(titleClassList.contains("read-only")){
			document.getElementById(id).removeAttribute("readonly");
			document.getElementById(id).focus();
			titleClassList.remove("read-only")
			
			if(document.getElementById(id).getAttribute("disabled")=="disabled"
					&& (document.getElementById("courseBox").getAttribute("disabled")==null 
							|| document.getElementById("courseBox").getAttribute("disabled")=="")){
				
				document.getElementById(id).removeAttribute("disabled");
				
				$("#locationText").val($("#locationBox option:checked").text());
				$("#typeSelf").val("1");
				
				// 출발장소 선택박스 초기화
				$('#locationBox').val('0').prop("selected",true);
				document.getElementById("locationBox").setAttribute("disabled", "disabled");
				
			}
		} else {
			document.getElementById(id).setAttribute("readonly", "readonly");
			titleClassList.add("read-only");
			
			if(id=="locationText" && (document.getElementById("courseBox").getAttribute("disabled")==null 
					|| document.getElementById("courseBox").getAttribute("disabled")=="")){
				document.getElementById(id).setAttribute("disabled", "disabled");
				document.getElementById(id).value="";
				document.getElementById("locationBox").removeAttribute("disabled");
				$("#typeSelf").val("0");
			}
		}
		
	}
	
	
	// 프로그램 유형 선택
	function selectProgram(){
		var programValue=document.getElementById("programBox");
		
		var selectValue=programValue.options[programValue.selectedIndex].value;
		
		//초기화
		document.getElementById("programRepo").value=0;
		
		// select의 option value로 option 선택
		$('#courseBox').val('0').prop("selected",true);
		$('#locationBox').val('0').prop("selected",true);
		document.getElementById("locationText").value="";
		
		if(selectValue==1 || selectValue==0){
			document.getElementById("courseBox").setAttribute("disabled", "disabled");
			document.getElementById("stChecker").setAttribute("disabled", "disabled");
			document.getElementById("locationBox").setAttribute("disabled", "disabled");
			document.getElementById("locationText").setAttribute("disabled", "disabled");
		} else {
			document.getElementById("courseBox").removeAttribute("disabled");
		}
		
		if(selectValue==3){
			document.getElementById("programRepo").value="reverse"
			
		}

	}

	// 코스 선택
	function selectCourse(){
		var courseValue=document.getElementById("courseBox");
		
		// option의 value
		var selectValue = courseValue.options[courseValue.selectedIndex].value;
		// option의 text
		var selectText = courseValue.options[courseValue.selectedIndex].text.replace(" ", "");
		var courseNo=selectText.substr(0, 2)+"l";			

		document.getElementById("scheduleTitle").setAttribute("value", selectText);
		
		if(document.getElementById("programRepo").value == "reverse"){
			document.getElementById("scheduleTitle").setAttribute("value", selectText+"(역)");
		}
		
		// option value값으로 선택
		$('#locationBox').val('0').prop("selected",true);
		
		// 초기화
		var optionList=document.getElementById("locationBox").options;
		for(i=0; i<optionList.length; i++) {
			optionList[i].removeAttribute("disabled");
			optionList.item(i).classList.remove("off");
		}
		
		if(document.getElementById("programRepo").value == "reverse"){
			
			for(i=0; i<optionList.length; i++) {
				if(optionList[i].text.indexOf("시작") != -1){
					optionList[i].setAttribute("disabled", "disabled");
					optionList.item(i).classList.add("off");
				}
			}
			
		} else if(document.getElementById("programRepo").value == 0) {
			
			for(i=0; i<optionList.length; i++) {
				if(optionList[i].text.indexOf("종점") != -1){
					optionList[i].setAttribute("disabled", "disabled");
					optionList.item(i).classList.add("off");
				}
			}
		}
		
		if(selectValue != 0){
			document.getElementById("locationBox").removeAttribute("disabled");
			document.getElementById("stChecker").removeAttribute("disabled");

			$("#locationBox").children().css("display", "none");
			$("#locationBox").children("[value="+courseNo+"]").css("display", "block");
			
		} else {
			document.getElementById("locationBox").setAttribute("disabled", "disabled");
			document.getElementById("locationText").setAttribute("disabled", "disabled");
		}
	}
		
	function selectLocation(){
		var locationBoxEle=document.getElementById("locationBox");
		var departureLocation=locationBoxEle.options[locationBoxEle.selectedIndex].text
		
		
		document.getElementById("detailedLocation").setAttribute("value", departureLocation);
	}
	
	function volunteerFn(){
		var scheduleTitleTxt=document.getElementById("scheduleTitle").value;
		var volunteerName=document.getElementById("volunteer").value;
		
		document.getElementById("scheduleTitle").setAttribute("value", scheduleTitleTxt+" "+volunteerName);
	}
	
	function getNotice(){
		
		var sample=""+
			"★ 중요 공지사항 ★\n"
			+"\n"
			+"제주도 코로나19 방역 기준에 따라 4인 기준 함께 걷기 합니다. (인솔자 1명, 홈페이지 신청자 3명)\n"  
			+"\n"
			+"● 마스크 착용은 필수!!!  철저한 개인방역 수칙 준수!!! ?\n"
			+"\n"
			+"● 아카자봉과 함께 걷기 참가를 원하시는 분은 반드시 홈페이지에서 “ 참가신청 “을 하셔야 합니다.\n"
			+"   (미 신청 후 그냥 오시는 분들은 함께 걷기 행사에 참가하실 수 없습니다.)\n"
			+"\n"
			+"● 아카자봉과 함께 걷기 참가인원은 홈페이지 선착순으로 3명만 모집합니다.\n"
			+"   (인솔자 포함 총 4명으로 진행합니다.)\n"
			+"\n"
			+"● 홈페이지 특성상 “참가신청“이 계속 되지만 선착순 3명이 되면 마감입니다.\n"
			+"\n"
			+"● 홈페이지 신청자 본인외에 미 신청 동행인 동반시 신청자분도 행사에 참가하실 수 없습니다.\n"
			+"   (신청자와 동행인이 별도로 걸으시면 됩니다.)\n"
			+"\n"
			+"● 부득이 취소하게 될 경우 다른분들을 위해 “참가신청“ 취소를 꼭!! 부탁드리겠습니다.\n"
			+"\n"
			+"● 코로나의 상황이 악화되거나 안전이 우려되는 경우 아카자봉과 함께 걷기 행사는 취소될 수 있습니다.";
		
		
		var areaList=document.getElementById("scheduleContent").classList
		
		if(!areaList.contains("contentSelf")){
			areaList.add("contentSelf");
			document.getElementById("scheduleContent").value=sample;
			
		} else if(areaList.contains("contentSelf")){
			areaList.remove("contentSelf");
			document.getElementById("scheduleContent").value="";
		}
	}
	
	
	// form action validate 작업	
	function validate(){
		if(document.getElementById("scheduleTitle").value==null || document.getElementById("scheduleTitle").value==""){
			alert("작성 중인 일정의 제목을 입력해주세요");
			inputSelf("scheduleTitle");
			document.getElementById("scheduleTitle").focus();
			return;
		}
		
		var programValue=document.getElementById("programBox");
		
		if(programValue.options[programValue.selectedIndex].value==0){
			alert("진행하고자하는 일정의 프로그램을 선택해주세요");
			document.getElementById("programBox").focus();
			return;
		}
		
		if(document.getElementById("datepicker").value==null || document.getElementById("datepicker").value==""){
			alert("해당 프로그램의 진행일정을 선택해주세요");
			document.getElementById("datepicker").focus();
			return;
		}
		
		if(!confirm("입력하신 정보로 스케쥴을 변경하시겠습니까?")){
			return;
		}
		
		document.getElementById("regSubBtn").type="submit";
		
	}
</script>
