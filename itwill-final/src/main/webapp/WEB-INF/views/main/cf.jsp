<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- <script src="https://momentjs.com/downloads/moment.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/locale/ko.min.js"></script> -->


<div class="body01">
	<div class="container cf">
		<div class="fe_main_ban mt_30"
			onclick="window.open('http://intro.jejuolle.org/intro/')">
			<div class="fe_ban_txt"></div>
		</div>
		<div class="news01">
			<div class="news_tit">
				제주올레 코스 안내
				<div class="more"
					onclick="location.href='${pageContext.request.contextPath}/boards'"></div>
			</div>

			
			<c:forEach var="boardsList" items="${boardsList}" end="5">
			<a href="${pageContext.request.contextPath}/boards/${boardsList.no}">
				<div class="news_list_img_none line_bt">
					<div class="list_txt_area02">

						<div class="list_tit">
							<div class="label_notice02">공지</div>
							${boardsList.title }<span class="date">${boardsList.date }</span>

						</div>
					</div>
				</div>
			</a> <a href="/trail/kor/board/board_view.asp?fk_idx=8&search_idx=7685"></a>
			</c:forEach>
		</div>
		
		<div class="news02">
			<div class="news_tit">
				제주올레 소식 및 행사(준비중)
				<div class="more"
					onclick="javascript:location.href='https://www.jejuolle.org/office/kor/board/board_list.asp'"></div>
			</div>
			
			<c:forEach var="boardsList" items="${boardsList}" end="5">
			<a href="/office/kor/board/board_view.asp?page=1&search_idx=7694">
				<div class="news_list_img_none line_bt">
					<div class="list_txt_area02">
						<div class="list_tit">
							<div class="label_notice02">공지</div>
							준비중<span class="date">준비중</span>

						</div>
					</div>
				</div>
				</a>
			</c:forEach>
		</div>
	</div>
</div>


<div class="body09">
	<div class="container cf">
		<div class="clean_ban_area">
			<div class="clean_ban02"></div>
			<div class="btn_clean">
				<span><a
					href="https://www.jejuolle.org/trail/kor/program/cleanolle.asp?tabmenu=tab04"
					target="_blank">제주올레 환경캠페인 더 알아보기 →</a></span>
			</div>
		</div>
	</div>
</div>


<div class="body05">
	<div class="container cf">

		<div class="title_bk">
			명예의전당
			<p>제주올레 425km 26코스를 모두 걸은 완주자들</p>
		</div>
		<div class="btn02_area">
			<div class="btn02">
				<span><a href="${pageContext.request.contextPath }/honor_one/1"
					class=" btn_bk more_bk">더 보기</a></span>
			</div>
		</div>
		<div class="honor_list_wrap">
				
			<c:forEach var="honorList" items="${honorList}" end="7">
			<div class="honor_form">
				<div class="honor_img">
					<img src="${pageContext.request.contextPath }/upload/honor/${honorList.upload}"
						onerror="this.src='http://placehold.it/300x300'" />
				</div>
				<div class="honor_text">
					${honorList.title } <img src="${pageContext.request.contextPath }/upload/honor/${honorList.upload}" align="absmiddle">
					<p>
						완주기간<br>${honorList.finish }
					</p>
					<div class="honor_text_b">${honorList.content }</div>
				</div>
			</div>
			</c:forEach>
			
		</div>
	</div>
</div>


<div class="body11"
	onclick="window.open('https://m.booking.naver.com/booking/5/bizes/376024/items/3918578?tab=details')">
	<div class="container cf">
		<div class="travel_ban_area">
			<div class="travel_tit"></div>
		</div>
	</div>
</div>


<div class="body03">
	<div class="container cf">
		<div class="title">올레 프로그램</div>
		<div class="calendar_month" id="calendar_month"></div>
		
		<div class="p_area">
			<%-- <c:forEach var="schedule" items="${schedule }"> --%>
			<div class="p_list_left">
				<ul>
					<li>
						<div class="row">
							<div class="p_date"></div>
							<div class="program">
							
							</div>
						</div>
					</li>
				</ul>
			</div>
			<%-- </c:forEach> --%>
			
			<div class="p_list_left">
				<ul>
					<li>
						<div class="row">
							<div class="p_date"></div>
							<div class="program">

							</div>
						</div>
					</li>
				</ul>
			</div>

			<div class="p_list_left">
				<ul>
					<li>
						<div class="row">
							<div class="p_date"></div>
							<div class="program">

							</div>
						</div>
					</li>
				</ul>
			</div>

			<div class="p_list_left">
				<ul>
					<li>
						<div class="row">
							<div class="p_date"></div>
							<div class="program">

							</div>
						</div>
					</li>
				</ul>
			</div>

			<div class="p_list_left">
				<ul>
					<li>
						<div class="row">
							<div class="p_date"></div>
							<div class="program">

							</div>
						</div>
					</li>
				</ul>
			</div>

			<div class="p_list_left">
				<ul>
					<li>
						<div class="row">
							<div class="p_date"></div>
							<div class="program"></div>
						</div>
					</li>
				</ul>
			</div>

			<div class="p_list_left">
				<ul>
					<li>
						<div class="row">
							<div class="p_date"></div>
							<div class="program">

							</div>
						</div>
					</li>
				</ul>
			</div>
			<div class="p_info">
				<div class="p_btn">
					<span><a
						href="${pageContext.request.contextPath }/program/schedule"
						class=" btn_bl more_bl">전체일정 보기</a></span>
				</div>
			</div>
		</div>
	</div>
</div>



<div class="body04">
	<div class="container cf">
		<div class="store_area">
			<h1>JEJU OLLE STORE</h1>
			<h2>
				평화와 자연을 사랑하는 <br>제주 여행자를 위한 스토어!
			</h2>
			<div class="store_btn">
				<span><a href="https://smartstore.naver.com/ollestore"
					class=" btn_wh s_arw" target="_blank">올레스토어 바로가기</a></span>
			</div>
		</div>
	</div>
</div>


<div class="body02">
	<div class="container">
		<div class="title_bk">올레영상</div>
		<a href="https://www.youtube.com/channel/UCfyBsM9Pqxox3PERv_Z6YVg"
			target="_blank"><div class="btn">
				더 보기
				<div class="more_wh"></div>
			</div></a>
		<div class="movie_area">
			<div class="left_movie">
				<div class="movie01">
					<iframe width="100%"
						src="https://www.youtube.com/embed/JmTifQeC2Mk" frameborder="0"
						allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
				</div>
				<div class="movie_txt">
					<a href="https://www.youtube.com/embed/JmTifQeC2Mk" target="_blank">[JEJU
						OLLE WALKING FESTIVAL] 2020 제주올레 걷기축제 이야기
						<p>
							따로 걷고 함께 완성하는 2020 제주올레걷기축제<br>올해 11년째를 맞이하는 2020제주올레걷기축제는
							색다르고 특별한 방식으로 진행합니다.
					</a>
				</div>
			</div>
			<div class="right_movie">
				<div class="r_movie_list"
					onclick="window.open('https://www.youtube.com/watch?v=dHMp-Irfk9E')">
					<div class="movie02">
						<img src="${pageContext.request.contextPath }/images/main/cf/movie01.jpg"><span
							class="movie02"></span>
					</div>
					<div class="movie_txt">
						<h2>
							&lt;히든디렉터 수상작&gt; '진짜 제주를 만나는 방법' 
						</h2>
					</div>
				</div>
				<div class="r_movie_list"
					onclick="window.open('https://www.youtube.com/watch?v=MrIAsMPIlew')">
					<div class="movie02">
						<img src="${pageContext.request.contextPath }/images/main/cf/movie03.jpg"><span
							class="movie02"></span>
					</div>
					<div class="movie_txt">
						<h2>제주올레 탐사팀의 여름</h2>
					</div>
				</div>
				<div class="r_movie_list"
					onclick="window.open('https://www.youtube.com/watch?v=oHSzLBub2R8')">
					<div class="movie02">
						<img src="${pageContext.request.contextPath }/images/main/cf/movie04.jpg"><span
							class="movie02"></span>
					</div>
					<div class="movie_txt">
						<h2>아시아 희망 만들기 프로젝트 1탄 - 몽골올레 후원 캠페인</h2>
					</div>
				</div>
				<div class="r_movie_list"
					onclick="window.open('https://www.youtube.com/watch?v=3MJwyQF_Hdc')">
					<div class="movie02">
						<img src="${pageContext.request.contextPath }/images/main/cf/movie05.jpg"><span
							class="movie02"></span>
					</div>
					<div class="movie_txt">
						<h2>제주올레 홍보영상</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="body06">
	<div class="container cf" style="margin-bottom: 0px;">
		<div class="stay_area">
			<h1>OLLE STAY</h1>
			<h2>비움과 치유를 테마로 오직, 쉼</h2>
			<a
				href="https://booking.naver.com/booking/3/bizes/48586/search?area=plt"
				target="_blank"><div class="stay_btn">
					올레스테이 예약하기
					<div class="stay_arw"></div>
				</div> </a>
		</div>
	</div>
</div>

<script type="text/javascript">
/* 일주일 달력 */
	
	var date= new Date();
	
	var year= date.getFullYear();
	var month= date.getMonth()+1;
	var day= date.getDate();
	var today= date.getDay();
	
	document.getElementById("calendar_month").innerText=(year+"."+month);
	
	
	var days= (month+"-"+day);
	
	$.ajax({
		type: "get",
		url: "${pageContext.request.contextPath}/program/month_schedule",
		success: function (json) {
			var p_date= document.getElementsByClassName("p_date");
			var typeName="";
			var btn;
			
			if(json.length==null) {
				/* alert("저장된 참가자 없음"); */
			}
			
				// alert(tempDay);
			for(j=0; j<p_date.length;j++) {
				var tempDay= month+"-"+(day+j);
				
				for(i=0; i<json.length; i++) {
					var type= json[i].scheduleType;
					var title= json[i].scheduleTitle;
					var course = json[i].scheduleCourse;
					var name= json[i].volunteer;
					var time= json[i].departureDatetime.substring(5, 10);
					var no= json[i].scheduleNo;
					
					
					if(tempDay.length<=4) {
						tempDay= tempDay.substring(0, 3)+"0"+tempDay.substring(3, 4);
						document.getElementsByClassName("p_date").item(j).innerText= tempDay;
					} 
					
					if(tempDay.length>=5) {
						document.getElementsByClassName("p_date").item(j).innerText= tempDay;					
					}
					
					if(type==1) {
						typeName="올레행사";
						btn= "p";
					} else if(type==2) {
						typeName="아카자봉";
						btn= "aca";
					} else if(type==3) {
						typeName="역방향";
						btn= "s";
					} else if(type==4) {
						typeName="클린올레";
						btn= "c";
					};
					
					if(time==tempDay) {
						/* alert("ㅇㅇ");
						alert(no); */
						document.getElementsByClassName("program").item(j).innerHTML
						=	
						"<p><span> <a href='${pageContext.request.contextPath}/program/schedule_view/"+no+"'><p class='bullet_"+btn+"'><span>"+typeName+"&nbsp;&nbsp;ㅣ&nbsp;&nbsp;</span>"+title+"<p></a></span></p>"
					}
				}
			}
		},
		error: function (xhr) {
			alert("에러코드 = "+xhr.status)
		}
	});  
</script>