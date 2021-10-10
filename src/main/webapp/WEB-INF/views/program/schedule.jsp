<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">
//Date 객체 저장 - 달력출력을 위한 기준일
var today = new Date();


function makeCalendar(){// 현재 달 달력 만들기
	// getMonth() : 0 ~ 11
	var firstDate = new Date(today.getFullYear(),today.getMonth(),1);
	// 일자를 0으로 설정할 경우 이전 월의 마지막날이 나온다.
	var lastDate = new Date(today.getFullYear(),today.getMonth()+1,0);
	
	// 년.월 표기
	var yearMonthTxt = document.getElementById("yearMonthTxt");
	yearMonthTxt.innerHTML = today.getFullYear() + "." + (today.getMonth()+1); 
	
	// calendar 엘리먼트
	var calendarElement = document.getElementById("calendar");
	
	var html="";
	var count=0;
	
	html+="<div class='days'>"
	// sun - sat : 0 - 6
	for(i=0; i<firstDate.getDay(); i++) {
		html+="<div class='calendar-date'>&nbsp;</div>"
		count++;
	}
	
	for(i=0; i<lastDate.getDate(); i++) {
		if(i<9){
			html+="<div id=date"+(i+1)+" class='calendar-date'>"+"0"+(i+1)+"<div class='event-con'></div></div>"
		} else {
			html+="<div id=date"+(i+1)+" class='calendar-date'>"+(i+1)+"<div class='event-con'></div></div>"
		}

		count++;
		if(count%7==0){
			html+="</div><div class='days'>";
		}
	}
	
	html+="</div>";
	
	
	calendarElement.innerHTML=html;
}


</script>
<style>
/*
	reset.css에 있는 아래 속성 덕분에 줄바뀜 문제가 발생하지 않는다.
	
	* {
		-webkit-box-sizing: border-box;
	}

*/


/*****************************************************************/
/* 달력 css - year, month */

.calendar-area {
	margin-top: 50px;
	width: 100%;
}

#month-area {
	margin-bottom: 40px;
}

#month-area div {
	display: inline;
	user-select: none;
}

#month-area p {
	width: 100%;
    font-size: 15px;
    font-weight: 300;
    color: #333;
    display: block;
    text-align: center;
    margin-top: 40px;
}

#yearMonthTxt {user-select: text !important;}

.move-month {
	width: auto;
}

#prevMonth img {
	display: inline-block;
	margin-right: 40px;
	vertical-align: 8px;
}

#prevMonth img:hover {
	background-image: url("${pageContext.request.contextPath }/images/program/month_prev_r.png");
	background-repeat: no-repeat;
	cursor: pointer;
}

#nextMonth img {
	display: inline-block;
	margin-left: 40px;
	vertical-align: 8px;
}

#nextMonth img:hover {
	background-image: url("${pageContext.request.contextPath }/images/program/month_next_r.png");
	background-repeat: no-repeat;
	cursor: pointer;
}


#yearMonthTxt {
	color: #08b2f5; 
	font-size: 62px;
	font-weight: 700;
}


/*****************************************************************/
/* calendar - program type (프로그램 유형 리스트) css */

#program_type {
	text-align: left;
    width: 100%;
    height: 30px;
    position: relative;
}

#program_type ul {
	float: left;
}

.dayColumns {
	clear: both;
}


/*****************************************************************/
/* 달력 css - days(week), day(요일), date(일) */
/* class name 중복으로 인하여 date -> calendar-date로 변경 */

#calendar {
	margin: 0 auto;
	/*width: 100%;*/
	/*position: relative;*/
}

.days {
	/*width: 100%;*/
	text-align: left;
}

.days .calendar-date:nth-child(7) {
	color: #3399FF;
}

.days .calendar-date:first-child {
	color: #FF6600;
}

.day, .calendar-date {
	user-select: none;
	display: inline-block;
	width: 14.286%;
	/*width: 13.075%;*/
	/*width: 130.75px;*/
}

.day {
	background: #78808c;
	color: #fdf6ee;
	margin: 0px;
	padding: 10px 6px;
	text-align: center;
}

.calendar-date {
	border: 1px solid #f0f0f0;
	padding: 5px;
	padding-top: 12px;
	height: 180px;
	text-align: right;
	font-size: 14px;
	color: #555;
	font-weight: 300;
	position: relative;
}

.calendar-date:hover {
	background: #fef0f0;
}

/*****************************************************************/
/* event-con */
/*calendar, calendar-date -> position relative로 수정*/
.event-con {
	clear: both;
	position: absolute;
	top: 40px;
	right: 5px;
	font-size: 13px;
	padding: 1px;

	/*width: 100%;
	height: auto;*/	
	/*display:inline-block;*/
	/*line-height: 0px;*/
}

.event-con a {
	text-decoration: none;
	text-align: left;
	width: 112px;
}

.event-con a:active {
	color: #561f8e;
}

.event-con a:hover {
	text-decoration: underline;
}

/*****************************************************************/
/* 달력 위 출력된 스케쥴에 대한 css 적용 */

/*------------------일정별 도트타입----------------*/
.bullet_A{ 
	width:100%;
	position: relative; 
	display:inline-block;
}    

    .bullet_A:before{
		position: absolute;
		display:inline-block;
		top:4px;
		width: 14px;
		height: 14px;
		border-radius:50%;
        background-color: #a3d8af;
        content: '';
    }

.bullet_B{ 
	width:100%;
	position: relative; 
	display:inline-block;
} 
	
	.bullet_B:before{
		position: absolute;
		top:4px;
		width: 14px;
		height: 14px;
		border-radius:50%;
		background-color: #ffa883;
		content: '';
	}

.bullet_C{ 
	width:100%;
	position: relative; 
	display:inline-block;
} 
	
	.bullet_C:before{
		position: absolute;
		top:4px;
		width: 14px;
		height: 14px;
		border-radius:50%;
		background:url('${pageContext.request.contextPath}/images/program/bullet_s.png') no-repeat center;
		content: '';
	}



.bullet_D{ 
	width:100%;
	position: relative; 
	display:inline-block;
}    

    .bullet_D:before{
		position: absolute;
		top:4px;
		width: 14px;
		height: 14px;
		border-radius:50%;
        background-color: #a6e5fa;
        content: '';
    }




/* 상단 글 관련 영역 */
.bullet_A span{
		font-size:15px;
		font-weight:300;
		margin-left:24px;
		color: #555;
		position: relative; 
		display:inline-block;
		border:0px solid yellow;
	}
.bullet_B span{
		font-size:15px;
		font-weight:300;
		margin-left:24px;
		color: #555;
		position: relative; 
		display:inline-block;
		border:0px solid yellow;
	}

	
.bullet_C span{
		font-size:15px;
		font-weight:300;
		margin-left:24px;
		color: #555;
		position: relative; 
		display:inline-block;
		border:0px solid yellow;
	}
	

.bullet_D span{
	font-size:15px;
	font-weight:300;
	margin-left:24px;
	color: #555;
	position: relative; 
	display:inline-block;
	border:0px solid yellow;
}


.p_typeList {
	width: 100%;
    height: 20px;
    font-weight: 300;
    line-height: 18px;
    margin-top: 0px;
    margin-right: 20px;
    color: #08b2f5;
    display: inline-block;
}

.p_typeList span {
	vertical-align: -2px;
}

/*** 달력 내부 등록일정 bullet CSS ***/

	.bulletA:before{
		position: absolute;
		display:inline-block;
		top: 0px;
		right: 117px;
		width: 14px;
		height: 14px;
		border-radius:50%;
        background-color: #a3d8af;
        content: '';
    }
    
    .bulletB:before{
		position: absolute;
		top: 0px;
		right: 117px;
		width: 14px;
		height: 14px;
		border-radius:50%;
		background-color: #ffa883;
		content: '';
	}
	
	.bulletC:before{
		position: absolute;
		top: 0px;
		right: 117px;
		width: 14px;
		height: 14px;
		border-radius:50%;
		background:url('${pageContext.request.contextPath}/images/program/bullet_s.png') no-repeat center;
		content: '';
	}

	.bulletD:before{
		position: absolute;
		top: 0px;
		right: 117px;
		width: 14px;
		height: 14px;
		border-radius:50%;
        background-color: #a6e5fa;
        content: '';
    }
    
.event-link {
	position: relative;
	margin-bottom: 8px;
	font-size: 14px;
	font-weight: 300;
	color: #555555;
	letter-spacing: -1px;
}



/*****************************************************************/
/*
	[to-do list]
	1. 배율 조정시 달력블럭 줄바뀜 처리 -> try 최소 width 설정 (더 안 좁아지게 설정)
	  -> box-sizing: border-box 적용 후 해결
*/

</style>

	<div class="calendar-area">
		<div id="month-area">
			<%-- 이전 달로 이동 --%>
			<div id="prevMonth" onclick="prev();">
				<img class="move-month" alt="prev" src="${pageContext.request.contextPath }/images/program/month_prev.png">
			</div>
			
			<%-- 연도 & 월 --%>
			<div id="yearMonthTxt"></div>
			
			<%-- 다음 달로 이동 --%>
			<div id="nextMonth" onclick="next();">
				<img class="move-month" alt="next" src="${pageContext.request.contextPath }/images/program/month_next.png">
			</div>
			<p>제주올레에서 진행되는 행사 및 프로그램 일정을 확인 할 수 있습니다.</p>
		</div>
	
		<div id="program_type">
			<ul>
				<li class="p_typeList">
					<div class="bullet_A"><span>제주올레행사 및 프로그램</span></div>
				</li>
			</ul>
			<ul>
				<li class="p_typeList">
					<div class="bullet_B"><span>아카자봉과 함께 걷기</span></div>
				</li>
			</ul>
			<ul>
				<li class="p_typeList">
					<div class="bullet_C"><span>역방향 코스</span></div>
				</li>
			</ul>
			<ul>
				<li class="p_typeList">
					<div class="bullet_D"><span>클린올레</span></div>
				</li>
			</ul>
		</div>
		
		<div class="days dayColumns">
			<div class="day">일</div><!--  
			--><div class="day">월</div><!--
			--><div class="day">화</div><!--
			--><div class="day">수</div><!--
			--><div class="day">목</div><!--
			--><div class="day">금</div><!--
			--><div class="day">토</div>
		</div>
		
		<%-- 달력 출력 엘리먼트 --%>
		<div id="calendar"></div>
		
	</div>
	
	<script type="text/javascript">
		makeCalendar();
		
		chooseOn(0);
		
		// 이전 달의 date 객체 저장 및 재출력
		function prev() {
			today = new Date(today.getFullYear(), today.getMonth()-1, today.getDate());
			makeCalendar();
			
			prevAjax();
		}
		
		
		function prevAjax(){
			var month;
			if(today.getMonth()+1<10){
				month=today.getFullYear()+"-0"+(today.getMonth()+1);
			} else if (today.getMonth()+1>=10){
				month=today.getFullYear()+"-"+(today.getMonth()+1);
			}
			
			$.ajax({
				type: "get",
				url: "month_schedule",
				contentType: "application/json",
				data: {"month": month},
				success: function(json) {
					
					for(i=0; i<json.length; i++){
						var scheduleNo=json[i].scheduleNo;
						var scheduleType = json[i].scheduleType;
						var scheduleTitle = json[i].scheduleTitle;
						var departureDate = json[i].departureDatetime.substring(8, 10);
						
						switch (scheduleType) {
						case 1:	scheduleType="bulletA"; break;
						case 2: scheduleType="bulletB"; break;
						case 3: scheduleType="bulletC"; break;
						case 4: scheduleType="bulletD"; break;
						}
						
						if(departureDate<10){
							departureDate=departureDate.replace("0", "");
						}
						addScheduleLink(scheduleNo, scheduleType, scheduleTitle, departureDate)
						
					}
				},
				error: function(xhr){
					alert("에러코드 = "+xhr.status);
				}
			});
		}
		
		// 다음 달의 date 객체 저장 및 재출력
		function next() {
		     today = new Date(today.getFullYear(), today.getMonth()+1, today.getDate());
		     makeCalendar();
		     
		     nextAjax();
		}
		
		function nextAjax(){
			var month;
			if(today.getMonth()+1<10){
				month=today.getFullYear()+"-0"+(today.getMonth()+1);
			} else if (today.getMonth()+1>=10){
				month=today.getFullYear()+"-"+(today.getMonth()+1);
			}
			
			$.ajax({
				type: "get",
				url: "month_schedule",
				contentType: "application/json",
				data: {"month": month},
				success: function(json) {
					
					for(i=0; i<json.length; i++){
						var scheduleNo=json[i].scheduleNo;
						var scheduleType = json[i].scheduleType;
						var scheduleTitle = json[i].scheduleTitle;
						var departureDate = json[i].departureDatetime.substring(8, 10);
						
						switch (scheduleType) {
						case 1:	scheduleType="bulletA"; break;
						case 2: scheduleType="bulletB"; break;
						case 3: scheduleType="bulletC"; break;
						case 4: scheduleType="bulletD"; break;
						}
						
						if(departureDate<10){
							departureDate=departureDate.replace("0", "");
						}
						addScheduleLink(scheduleNo, scheduleType, scheduleTitle, departureDate)
						
					}
				},
				error: function(xhr){
					alert("에러코드 = "+xhr.status);
				}
			});
		}
		
		// schedule_view와 연결된 link 엘리먼트 추가
		function addScheduleLink(no, type, title, date) {
			var dateId="date"+date;
			var eventContainer=document.getElementById(dateId).childNodes[1];
			var html="<div class='event-link "+type+"'><a href='schedule_view/"+no+"'>"+title+"</a></div>";
			eventContainer.insertAdjacentHTML("beforeend", html);
		}
		
		// schedule 리스트를 제공받아 출력
		$.ajax({
			type: "get",
			url: "month_schedule",
			success: function(json) {
				
				for(i=0; i<json.length; i++){
					var scheduleNo=json[i].scheduleNo;
					var scheduleType = json[i].scheduleType;
					var scheduleTitle = json[i].scheduleTitle;
					var departureDate = json[i].departureDatetime.substring(8, 10);
					
					switch (scheduleType) {
					case 1:	scheduleType="bulletA"; break;
					case 2: scheduleType="bulletB"; break;
					case 3: scheduleType="bulletC"; break;
					case 4: scheduleType="bulletD"; break;
					}
					
					if(departureDate<10){
						departureDate=departureDate.replace("0", "");
					}
					
					addScheduleLink(scheduleNo, scheduleType, scheduleTitle, departureDate)
					
				}
			},
			error: function(xhr){
				alert("에러코드 = "+xhr.status);
			}
		});		
		
		
		
	</script>
